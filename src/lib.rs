#![allow(unused_assignments)]
#![allow(dead_code)]
#![feature(box_into_inner)]

pub fn foo()->usize {
   let mut b = Box::new(5usize);
   unsafe {
    let p = b.as_mut();
    std::ptr::write_volatile(p, 12);
   }
   Box::into_inner(b)
}