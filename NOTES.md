## command look up 

- create build files:
    - cmake [folderPath]
    - cmake .
- build target files:
    - cmake --build [folderPath]
- passing an argument:
    - cmake . -DUSE_MYMATH=OFF

## Cross Compiling
If the default host toolchain is not suitable, as is the case for cross compiling, 
then the recommended way of specifying the toolchain details is in a separate 
toolchain file. 

## 13/07/22 - Digging into the RTOS

### GCC Inline Asembly

See [this link](http://www.ibiblio.org/gferg/ldp/GCC-Inline-Assembly-HOWTO.html) 
for more in depth tutorial, but the short infos are here...

**Basic Inline**

Simple inline assembly using `__asm__()` or simply `asm()` 

```C++
asm("movl %ecx %eax"); /* moves the contents of ecx to eax */
__asm__("movb %bh (%eax)"); /*moves the byte from bh to the memory pointed by eax */```

```C++
// multi line assembly
__asm__ ("movl %eax, %ebx\n\t"
        "movl $56, %esi\n\t"
        "movl %ecx, $label(%edx,%ebx,$4)\n\t"
        "movb %ah, (%ebx)");
```

```C++
```

```C++
```

```C++
```
