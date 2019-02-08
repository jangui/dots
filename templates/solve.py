#!/usr/bin/env python2
from pwn import *

REMOTE = False
GDB = False

if REMOTE:
    p = remote('', '')
else:
    p = process('')
    if GDB:
        gdb.attach(p)

def solve():
    pass

solve()
print "Enjoy Your Shell!"
p.interactive()

