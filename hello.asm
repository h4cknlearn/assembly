section .data
message: db 'hello, world!', 10         ; 10 is equivalent to a newline \n

section .text
global _start

_start:
  mov   rax, 1                         ; syscall 'write' number
  mov   rdi, 1                         ; stdout descriptor
  mov   rsi, message                   ; string address 
  mov   rdx, 14                        ; string size (bytes)
  syscall
  
  mov   rax, 60                        ; syscall 'exit' number
  xor   rdi, rdi                       ; using xor instruction to zero the result 
  syscall
