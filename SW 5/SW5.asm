# using  .data, define an array in data seg that has the first 25 numbers of the fib sequence
# values are 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377
# 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368

# code should:
# 1) calculate the difference between a number and the number 3 spots away
#	ex) 2-0, 3-1, 5-1, 8-2... should end with 46368-10946.
# 2) each difference should output to LEDs at 0x11000020

.data 			#initialize the array

ARRAY1: .word 0x0	# 0
.word 0x1		# 1
.word 0x1		# 1
ARRAY2: .word 0x2	# 2
.word 0x3		# 3
.word 0x5		# 5
.word 0x8		# 8
.word 0xd		# 13
.word 0x16		# 21
.word 0x22		# 34
.word 0x37		# 55
.word 0x59		# 89
.word 0x90		# 144
.word 0xe9		# 233
.word 0x179		# 377
.word 0x262		# 610
.word 0x3db		# 987
.word 0x63d		# 1597
.word 0xa18		# 2584
.word 0x1055		# 4181
.word 0x1a6d 		# 6765
.word 0x2ac2		# 10946
.word 0x452f		# 17711
.word 0x6ff1		# 28657
.word 0xb520		# 46368

.text

li s0, 0x11000000	# stores MMIO address in s0
li s1, 0x00006060	# ending address of the list
la s2, ARRAY1		# puts address of ARRAY1 in register s2
la s3, ARRAY2 		# puts address of ARRAY2 in register s3

LOOP:

lw t3, 0(s2)		# loads contents of label ARRAY1 into t3
lw t4, 0(s3)		# loads contents of label ARRAY2 into t4

sub t0, t4, t3		# finds the difference

sw t0, 0x00000020(s0)	# stores difference into LED's

beq s1, s3, trap	# checks if ARRAY2 label has reached the end of the list

addi s2, s2, 0x4	# increments ARRAY1 address by 4
addi s3, s3, 0x4	# increments ARRAY2 address by 4

j LOOP			# loops back

trap: j trap		# trap
