### char类型移动跨平台踩过的坑

char强转int时，发现在x86平台下是按照有符号处理的，但是在ARM32下被当成了无符号导致问题，ARM64正常有符号。

经调查，在PC上，char类型默认为signed-char,
但是在一些嵌入式设备上，比如arm平台，char类型是当作unsigned char处理的，
为了保持与PC一致，可以通过指定CFLAG += fsigned-char进行配置可完美解决。
-funsigned-char
-fno-signed-char
-fsigned-char
-fno-unsigned-char
因此，跨平台程序时要特别注意char和unsigned char，最好使用unsigned char。
