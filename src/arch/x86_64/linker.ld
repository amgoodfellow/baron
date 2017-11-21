ENTRY(start) /* bootloader will jump to this entry point after loading kernel */

SECTIONS {
  . = 1M; /* sets load address to 1MB b/c before that is reserved */
  .boot : {
    /* ensure that the multiboot header is at the beginning */
    *(.multiboot_header)
  }

  .text : {
    *(.text)
  }

  /* so basically .boot gathers all sections named multiboot_header and puts them in 
     the first .boot secition, then it gathers all the .text (which is executable)
     and puts it in the .text section
  */
}
