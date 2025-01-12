#![allow(unused_variables)]
use lib_demo::foo;
/* 
#[derive(Copy, Clone)]
struct Inner {
  p: *mut usize
}
#[derive(Copy, Clone)]
struct Pair{
  
  d: *mut usize,
  i: Inner,
  ip: *mut Inner,
}

#[derive(Copy, Clone)]
struct PPair{
  ip: *mut Inner,
  a: u64,
  c: [usize;12],
}


struct PP {
  a: usize,
  b:usize,
}
*/

fn main() {
 
let b = foo();
println!("b");
}

/* 
fn foo(){
  let six = 6usize;
  let mut five = six;
  unsafe {
    let fp = &mut five as *mut usize;
    std::ptr::write_volatile(fp, 10);
  }

}
  */

