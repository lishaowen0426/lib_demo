#define _GNU_SOURCE
#include <sys/mman.h>
#include <sys/syscall.h>
#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>


int main(){
    int pkey = syscall(SYS_pkey_alloc, 0, 0);
    if(pkey == -1){
        perror("pkey_alloc failed");
        return 0;
    }

    printf("Allocated protection key: %d\n", pkey);

    void *addr = mmap(NULL, 4096, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (addr == MAP_FAILED) {
        perror("mmap failed");
        return 1;
    }

    strcpy((char*)addr, "Hello, PKU");
    printf("Write: %s\n", (char*)addr);

    if(syscall(SYS_pkey_mprotect, addr, 4096, PROT_READ|PROT_WRITE, pkey)== -1){
        perror("pkey_mprotect failed");
        return 1;
    }

    if(pkey_set(pkey, PKEY_DISABLE_ACCESS) == -1){
        perror("pkey_set failed");
        return 1;
    }

    printf("set disable access, I should segfault\n");

    printf("Write: %s\n", (char*)addr);


    
    
    return 0;
}