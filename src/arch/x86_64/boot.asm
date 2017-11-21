global start ; global makes a label public
						 ; start needs to be public since it's the entry point

section .text ; .text segments contain executable instructions
bits 32       ; these are 32-bit instructions b/c we're still in
							; protected mode
start:
	mov dword [0xb8000], 0x2f4b2f4f ; moves 0x2f4b2f4f to address at 0xb8000
	hlt ; halt instruction
