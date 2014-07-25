REM -----------------------------------------------------------
REM --- LZ4 EXTENSION
REM -----------------------------------------------------------
@ECHO OFF

SET DIR=%~dp0
SET DIR=%Dir:~0,-1%\..

CD %DIR%\phpdev\vc11\x86\php-5.5.15\ext

@ECHO.
@ECHO cloning lz4 repository...
git clone https://github.com/kjdev/php-ext-lz4.git
CD %DIR%\phpdev\vc11\x86\php-5.5.15\ext\php-ext-lz4\lz4

@ECHO.
@ECHO updating lz4 c files from original source
wget https://lz4.googlecode.com/svn/trunk/lz4.c -N --no-check-certificate
wget https://lz4.googlecode.com/svn/trunk/lz4.h -N --no-check-certificate
wget https://lz4.googlecode.com/svn/trunk/lz4hc.c -N --no-check-certificate
wget https://lz4.googlecode.com/svn/trunk/lz4hc.h -N --no-check-certificate
wget https://lz4.googlecode.com/svn/trunk/programs/xxhash.c -N --no-check-certificate
wget https://lz4.googlecode.com/svn/trunk/programs/xxhash.h -N --no-check-certificate

CD %DIR%