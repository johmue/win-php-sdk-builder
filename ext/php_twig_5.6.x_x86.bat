REM -----------------------------------------------------------
REM --- TWIG EXTENSION
REM -----------------------------------------------------------
@ECHO OFF

SET DIR=%~dp0
SET DIR=%Dir:~0,-1%\..

CD %DIR%\phpdev\vc11\x86\php-5.6.0\ext

@ECHO.
@ECHO cloning twig repository into twig...
git clone --depth=1 https://github.com/fabpot/twig.git twig
REM git filter-branch --subdirectory-filter ext/twig -- --all

@ECHO restructuring twig to make twig/ext/twig root/...
git filter-branch --subdirectory-filter ext/twig

CD %DIR%