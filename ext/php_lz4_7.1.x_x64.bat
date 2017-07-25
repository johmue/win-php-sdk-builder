REM -----------------------------------------------------------
REM --- LZ4 EXTENSION
REM -----------------------------------------------------------
@ECHO OFF

SET DIR=%~dp0
SET DIR=%Dir:~0,-1%\..

CD %DIR%\phpdev\vc14\x64\php-7.1.7\ext

@ECHO.
@ECHO cloning lz4 repository...
git clone https://github.com/kjdev/php-ext-lz4.git
CD %DIR%\phpdev\vc14\x64\php-7.1.7\ext\php-ext-lz4\lz4

@ECHO.
@ECHO updating lz4 c files from original source
wget https://raw.githubusercontent.com/lz4/lz4/dev/lib/lz4.c -N --no-check-certificate
wget https://raw.githubusercontent.com/lz4/lz4/dev/lib/lz4.h -N --no-check-certificate
wget https://raw.githubusercontent.com/lz4/lz4/dev/lib/lz4hc.c -N --no-check-certificate
wget https://raw.githubusercontent.com/lz4/lz4/dev/lib/lz4hc.h -N --no-check-certificate
wget https://raw.githubusercontent.com/lz4/lz4/dev/lib/xxhash.c -N --no-check-certificate
wget https://raw.githubusercontent.com/lz4/lz4/dev/lib/xxhash.h -N --no-check-certificate

CD %DIR%