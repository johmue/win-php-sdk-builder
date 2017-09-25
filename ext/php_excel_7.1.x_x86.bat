REM -----------------------------------------------------------
REM --- PHP_EXCEL / LIBXL EXTENSION
REM -----------------------------------------------------------
@ECHO OFF

SET DIR=%~dp0
SET DIR=%Dir:~0,-1%\..

CD %DIR%\phpdev\vc14\x86\php-7.1.7\ext

@ECHO.
@ECHO cloning php_excel repository...
git clone https://github.com/johmue/php_excel.git
CD %DIR%\phpdev\vc14\x86\php-7.1.7\ext\php_excel

@ECHO checking out PHP7 branch
git checkout php7

IF NOT EXIST "%DIR%\downloads\libxl-win-3.8.1.0.zip" (
    @ECHO.
    @ECHO loading libxl library for php_excel...
    wget ftp://xlware.com/build/libxl-win-3.8.1.0.zip -O %DIR%\downloads\libxl-win-3.8.1.0.zip -N
    REM wget http://libxl.com/download/libxl-win-3.8.0.zip  -O %DIR%\downloads\libxl-win-3.8.1.0.zip -N
)

IF NOT EXIST "%DIR%\downloads\libxl-win-3.8.1.0.zip" (
    @ECHO.
    @ECHO libxl lib not found in .\downloads please re-run this script
    PAUSE
    EXIT
)

@ECHO.
@ECHO unpacking libxl library...
7za x %DIR%\downloads\libxl-win-3.8.1.0.zip -o%DIR%\phpdev\vc14\x86\php-7.1.7\ext\php_excel -y
CD %DIR%\phpdev\vc14\x86\php-7.1.7\ext\php_excel
RENAME libxl-3.8.1.0 libxl

@ECHO.
@ECHO rearranging local libxl files for php-src integration...
XCOPY .\libxl\include_c\* .\libxl\ /E /Y
XCOPY .\libxl\bin\* .\libxl\ /E /Y

@ECHO.
@ECHO copying local libxl to php deps folder...
XCOPY .\libxl\bin\* %DIR%\phpdev\vc14\x86\deps\bin\ /E /Y
XCOPY .\libxl\lib\* %DIR%\phpdev\vc14\x86\deps\lib\ /E /Y
XCOPY .\libxl\include_c\libxl.h %DIR%\phpdev\vc14\x86\deps\include\ /E /Y
MD %DIR%\phpdev\vc14\x86\deps\include\libxl
XCOPY .\libxl\* %DIR%\phpdev\vc14\x86\deps\include\libxl\ /E /Y

CD %DIR%