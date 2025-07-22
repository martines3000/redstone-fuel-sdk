library;

use std::{bytes::*, vec::*};

pub trait With<T> {
    fn with(self, value: T) -> Self;
}

impl<T> With<T> for Vec<T> {
    fn with(self, value: T) -> Self {
        let mut vec = self;
        vec.push(value);

        vec
    }
}

impl With<u8> for Bytes {
    fn with(self, byte: u8) -> Bytes {
        let mut bytes = self;
        bytes.push(byte);

        bytes
    }
}

impl Vec<u256> {
    pub fn log(self) {
        let mut i = 0;
        while (i < self.len()) {
            log(self.get(i).unwrap());
            i += 1;
        }
    }
}