global _ft_read
    section .text
_ft_read : ;ssize_t ft_read(int fildes, void *buf, size_t nbyte);
    mov	rax, 0x2000003
	syscall
    ret
