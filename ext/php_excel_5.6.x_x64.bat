REM -----------------------------------------------------------
REM --- PHP_EXCEL / LIBXL EXTENSION
REM -----------------------------------------------------------
@ECHO OFF

SET DIR=%~dp0
SET DIR=%Dir:~0,-1%\..

CD %DIR%\phpdev\vc11\x64\php-5.6.0beta3\ext

@ECHO.
@ECHO cloning php_excel repository...
git clone https://github.com/iliaal/php_excel.git
CD %DIR%\phpdev\vc11\x64\php-5.6.0beta3\ext\php_excel

IF NOT EXIST "%DIR%\downloads\libxl-win-3.5.4.zip" (
    @ECHO.
    @ECHO loading libxl library for php_excel...
    wget ftp://xlware.com/libxl-win-3.5.4.zip -O %DIR%\downloads\libxl-win-3.5.4.zip -N
)

IF NOT EXIST "%DIR%\downloads\libxl-win-3.5.4.zip" (
    @ECHO.
    @ECHO libxl lib not found in .\downloads please re-run this script
    PAUSE
    EXIT
)

@ECHO.
@ECHO unpacking libxl library...
7za x %DIR%\downloads\libxl-win-3.5.4.zip -o%DIR%\phpdev\vc11\x64\php-5.6.0beta3\ext\php_excel -y
CD %DIR%\phpdev\vc11\x64\php-5.6.0beta3\ext\php_excel
RENAME libxl-3.5.4.1 libxl

@ECHO.
@ECHO rearranging local libxl files for php-src integration...
XCOPY .\libxl\include_c\* .\libxl\ /E
XCOPY .\libxl\bin64\* .\libxl\ /E

@ECHO.
@ECHO copying local libxl to php deps folder...
XCOPY .\libxl\bin64\* %DIR%\phpdev\vc11\x64\deps\bin\ /E
XCOPY .\libxl\lib64\* %DIR%\phpdev\vc11\x64\deps\lib\ /E
XCOPY .\libxl\include_c\libxl.h %DIR%\phpdev\vc11\x64\deps\include\ /E
MD %DIR%\phpdev\vc11\x64\deps\include\libxl
XCOPY .\libxl\* %DIR%\phpdev\vc11\x64\deps\include\libxl\ /E

CD %DIR%