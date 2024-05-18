```
vi bootloader.s
as bootloader.s -o intermediate.o
gcc -o bootloader intermediate.o -nostdlib -static
./bootloader
```
