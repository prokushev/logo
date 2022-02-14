del text.lgo
jwasm -bin logo.asm
ren logo.bin text.lgo

jwasm -bin execlogo.asm

copy execlogo.bin /b + text.lgo /b test.com
