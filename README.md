# win-php-sdk-builder

## License

This software is distributed under the MIT license and is free of charge.
For further information see the LICENSE file.

## What is it?

Building PHP or PHP extensions on Windows systems is not so easy even with a great step-by-step
guide available here https://wiki.php.net/internals/windows/stepbystepbuild .

These scripts are intended to ease this process for the average Windows PHP user and to 
have a good starting point for compiling your own or third party extensions.

If you have ```Git``` and ```MS Visual Studio Express 2012 for Windows Desktop``` already installed it should
compile a working PHP version within a few clicks.

## Why?

The main reason (for me) is to create up to date versions of the **excel**, **lz4** and **twig** extensions for Windows environment.

## Which PHP versions are currently available?

### PHP 5.5.x
- php-5.5.21-nts-VC11-x86
- php-5.5.21-VC11-x86
- php-5.5.21-nts-VC11-x64
- php-5.5.21-VC11-x64

### PHP 5.6.x
- php-5.6.5-nts-VC11-x86
- php-5.6.5-VC11-x86
- php-5.6.5-nts-VC11-x64
- php-5.6.5-VC11-x64

## PHP 7.0.x-dev
- php-7.0.0-nts-VC11-x86-dev
- php-7.0.0-VC11-x86-dev
- php-7.0.0-nts-VC11-x64-dev
- php-7.0.0-VC11-x64-dev

## How to?

### 32-bit build

    C:\> git clone https://github.com/johmue/win-php-sdk-builder.git php-sdk
    C:\> cd php-sdk
    C:\php-sdk> build-php-5.5.x-win32-sdk.bat

Open ```VS2012 x86 Native Tools Command Prompt``` - you will find it in the start menu group of VS Studio.
The following commands will only work within the VS Command Prompt. **It will not work with the standard Windows CLI.**

    C:\php-sdk> compile-php-5.5.21-nts-x86.bat

If everything worked fine you will find a compiled version of PHP e.g. here

    C:\php-sdk\phpdev\vc11\x86\obj_5.5.21\Release\php-5.5.21-nts-Win32-VC11-x86.zip

### 64-bit build

    C:\> git clone https://github.com/johmue/win-php-sdk-builder.git php-sdk
    C:\> cd php-sdk
    C:\php-sdk> build-php-5.5.x-win64-sdk.bat

Open ```VS2012 x64 Cross Tools Command Prompt``` - you will find it in the start menu group of VS Studio.
The following commands will only work within the VS Command Prompt. **It will not work with the standard Windows CLI.**

    C:\php-sdk> compile-php-5.5.21-nts-x64.bat

If everything worked fine you will find a compiled version of PHP e.g. here

    C:\php-sdk\phpdev\vc11\x86\obj_5.5.21\Release\php-5.5.21-nts-Win32-VC11-x64.zip

## Prerequisites to build PHP 5.5 and PHP 5.6

MS Visual Studio Express 2012 for Windows Desktop (**!!ATTENTION!!** do not use the 2013 edition)  
http://www.microsoft.com/en-us/download/details.aspx?id=34673

Git for Windows  
http://git-scm.com/download/win

MS Visual C++ Redistributable for Visual Studio 2012  
http://www.microsoft.com/en-us/download/details.aspx?id=30679

wget (should be automatically loaded by the script if not available)  
http://users.ugent.be/~bpuype/cgi-bin/fetch.pl?dl=wget/wget.exe

7-zip cli tool (should be automatically loaded by the script if not available)  
http://downloads.sourceforge.net/sevenzip/7za920.zip

## Prerequisites to build PHP 5.3 and PHP 5.4

PHP 5.3 and PHP 5.4 are not supported

## Notes

Please note that it will also create additonal extensions:

- php_excel.dll
- php_lz4.dll
- php_twig.dll (PHP 7.0.x not yet supported)

Read more about PHP Excel here:  
https://github.com/iliaal/php_excel/ and here http://ilia.ws/files/confoo_phpexcel.pdf

Read more about LZ4 here:  
https://github.com/kjdev/php-ext-lz4 and here https://code.google.com/p/lz4/

Read more about twig here:  
https://github.com/fabpot/Twig and here http://twig.sensiolabs.org/documentation
