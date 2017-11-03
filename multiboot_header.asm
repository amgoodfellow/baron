section .multiboot_header

header_start:

dd 0xe85250d6  ; a u32 'magic' number required by the multiboot 2 standard 
dd 0           ; architecture 0 (protected mode i386)
dd header_end - header_start ; header length
dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start)) ; u32 checksum
; this 0x100000000 hack is explained in the guide
; (but I am a bit confused about it

; insert optional multiboot tags here

; required end tag
dw 0    ; type
dw 0    ; flags
dd 8    ; size
header_end:
