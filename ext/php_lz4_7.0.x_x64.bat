REM -----------------------------------------------------------
REM --- LZ4 EXTENSION
REM -----------------------------------------------------------
@ECHO OFF

SET DIR=%~dp0
SET DIR=%Dir:~0,-1%\..

CD %DIR%\phpdev\vc11\x64\php-7.0.0\ext

@ECHO.
@ECHO cloning lz4 repository...
git clone https://github.com/kjdev/php-ext-lz4.git
CD %DIR%\phpdev\vc11\x64\php-7.0.0\ext\php-ext-lz4\lz4

@ECHO.
@ECHO updating lz4 c files from original source
wget https://lz4.googlecode.com/svn/trunk/lib/lz4.c -N --no-check-certificate
wget https://lz4.googlecode.com/svn/trunk/lib/lz4.h -N --no-check-certificate
wget https://lz4.googlecode.com/svn/trunk/lib/lz4hc.c -N --no-check-certificate
wget https://lz4.googlecode.com/svn/trunk/lib/lz4hc.h -N --no-check-certificate
wget https://lz4.googlecode.com/svn/trunk/lib/xxhash.c -N --no-check-certificate
wget https://lz4.googlecode.com/svn/trunk/lib/xxhash.h -N --no-check-certificate

CD %DIR%