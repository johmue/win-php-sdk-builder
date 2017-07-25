# win-php-sdk-builder

## License

This software is distributed under the MIT license and is free of charge.
For further information see the LICENSE file.

## What is it?

Building PHP or PHP extensions on Windows systems is not so easy even with a great step-by-step
guide available here https://wiki.php.net/internals/windows/stepbystepbuild and an updated version
here https://wiki.php.net/internals/windows/stepbystepbuild_sdk_2 .

These scripts are intended to ease this process for the average Windows PHP user and to 
have a good starting point for compiling your own or third party extensions.

If you have ```Git``` and ```MS Visual Studio Express 2012 for Windows Desktop``` (PHP 5.6.x) or
```MS Visual Studio Express 2015 for Windows Desktop``` (PHP 7.0.x & PHP 7.1.x) already installed it
should compile a working PHP version within a few clicks.

If you prefer a lean build environment you can also use ```MS Visual C++ Build Tools 2015```
instead of Visual Studio which can be found
here http://landinghub.visualstudio.com/visual-cpp-build-tools .

Please note that PHP 7.0.x and 7.1.x require VC++ 14.0 (= Visual Studio 2015 editions) while PHP 7.2.x
requires VC++ 15.0 (= Visual Studio 2017 editions).

## Why?

The main reason (for me) is to compile up to date versions of the **php_excel** extension for Windows 
which can be found here https://github.com/iliaal/php_excel .

## Which PHP versions are currently supported?

### PHP 5.6.x
- php-5.6.30-nts-VC11-x86
- php-5.6.30-VC11-x86
- php-5.6.30-nts-VC11-x64
- php-5.6.30-VC11-x64

### PHP 7.0.x
- php-7.0.17-nts-VC14-x86
- php-7.0.17-VC14-x86
- php-7.0.17-nts-VC14-x64
- php-7.0.17-VC14-x64

### PHP 7.1.x
- php-7.1.7-nts-VC14-x86
- php-7.1.7-VC14-x86
- php-7.1.7-nts-VC14-x64
- php-7.1.7-VC14-x64

### PHP 7.2.x-dev
- php-7.2.0beta1-nts-VC15-x86-dev
- php-7.2.0beta1-VC15-x86-dev
- php-7.2.0beta1-nts-VC15-x64-dev
- php-7.2.0beta1-VC15-x64-dev

## How to build PHP 7.0.x and PHP 7.1.x?

### 32-bit build

    C:\> git clone https://github.com/johmue/win-php-sdk-builder.git php-sdk
    C:\> cd php-sdk
    C:\php-sdk> build-php-7.0.x-win32-sdk.bat
    ...or...
    C:\php-sdk> build-php-7.1.x-win32-sdk.bat

Open ```VS2015 x86 Native Tools Command Prompt``` - you will find it in the start menu group of VS Studio.
The following commands will only work within the VS Command Prompt. **It will not work with the standard Windows CLI.**

    C:\php-sdk> compile-php-7.0.17-nts-x86.bat
    ...or...
    C:\php-sdk> compile-php-7.1.7-nts-x86.bat

If everything worked fine you will find a compiled version of PHP e.g. here

    C:\php-sdk\phpdev\vc14\x86\obj_7.0.17\Release\php-7.0.17-nts-Win32-VC11-x86.zip
    ...or...
    C:\php-sdk\phpdev\vc14\x86\obj_7.1.7\Release\php-7.1.7-nts-Win32-VC11-x86.zip

### 64-bit build

    C:\> git clone https://github.com/johmue/win-php-sdk-builder.git php-sdk
    C:\> cd php-sdk
    C:\php-sdk> build-php-7.0.x-win64-sdk.bat

Open ```VS2015 x64 Cross Tools Command Prompt``` - you will find it in the start menu group of VS Studio.
The following commands will only work within the VS Command Prompt. **It will not work with the standard Windows CLI.**

    C:\php-sdk> compile-php-7.0.17-nts-x64.bat
    ...or...
    C:\php-sdk> compile-php-7.1.7-nts-x64.bat

If everything worked fine you will find a compiled version of PHP e.g. here

    C:\php-sdk\phpdev\vc14\x64\obj_7.0.17\Release\php-7.0.17-nts-Win32-VC11-x64.zip
    ...or...
    C:\php-sdk\phpdev\vc14\x64\obj_7.1.7\Release\php-7.1.7-nts-Win32-VC11-x64.zip

## How to build PHP 5.6.x?

### 32-bit build

    C:\> git clone https://github.com/johmue/win-php-sdk-builder.git php-sdk
    C:\> cd php-sdk
    C:\php-sdk> build-php-5.6.x-win32-sdk.bat

Open ```VS2012 x86 Native Tools Command Prompt``` - you will find it in the start menu group of VS Studio.
The following commands will only work within the VS Command Prompt. **It will not work with the standard Windows CLI.**

    C:\php-sdk> compile-php-5.6.30-nts-x86.bat

If everything worked fine you will find a compiled version of PHP e.g. here

    C:\php-sdk\phpdev\vc11\x86\obj_5.6.30\Release\php-5.6.30-nts-Win32-VC11-x86.zip

### 64-bit build

    C:\> git clone https://github.com/johmue/win-php-sdk-builder.git php-sdk
    C:\> cd php-sdk
    C:\php-sdk> build-php-5.6.x-win64-sdk.bat

Open ```VS2012 x64 Cross Tools Command Prompt``` - you will find it in the start menu group of VS Studio.
The following commands will only work within the VS Command Prompt. **It will not work with the standard Windows CLI.**

    C:\php-sdk> compile-php-5.6.30-nts-x64.bat

If everything worked fine you will find a compiled version of PHP e.g. here

    C:\php-sdk\phpdev\vc11\x64\obj_5.6.30\Release\php-5.6.30-nts-Win32-VC11-x64.zip

## Prerequisites to build PHP 7.0.x or 7.1.x

A) MS Visual Studio Express 2015 for Windows Desktop (choose A or B or C)  
https://www.visualstudio.com/post-download-vs?sku=xdesk&clcid=0x409

B) MS Visual Studio Community 2015 (choose A or B or C)  
https://www.visualstudio.com/post-download-vs?sku=community&clcid=0x407

C) MS Visual++ 2015 Build Tools (choose A or B or C)  
http://landinghub.visualstudio.com/visual-cpp-build-tools

Git for Windows  
http://git-scm.com/download/win

MS Visual C++ Redistributable for Visual Studio 2015 (VC14)  
https://www.microsoft.com/en-us/download/details.aspx?id=49984

wget (should be automatically loaded by the script if not available)  
https://eternallybored.org/misc/wget/current/wget.exe

7-zip cli tool (should be automatically loaded by the script if not available)  
http://downloads.sourceforge.net/sevenzip/7za920.zip

## Prerequisites to build PHP 5.6

MS Visual Studio Express 2012 for Windows Desktop (**!!ATTENTION!!** do not use the 2013 edition)  
http://www.microsoft.com/en-us/download/details.aspx?id=34673

Git for Windows  
http://git-scm.com/download/win

MS Visual C++ Redistributable for Visual Studio 2012  
http://www.microsoft.com/en-us/download/details.aspx?id=30679

wget (should be automatically loaded by the script if not available)  
https://eternallybored.org/misc/wget/current/wget.exe

7-zip cli tool (should be automatically loaded by the script if not available)  
http://downloads.sourceforge.net/sevenzip/7za920.zip

## Prerequisites to build PHP 7.2, PHP 5.3, PHP 5.4 and PHP 5.5

PHP 5.3.x, PHP 5.4.x and PHP 5.5.x are not supported

## Notes

Please note that it will also create additonal extensions:

- php_excel.dll
- php_lz4.dll

Read more about PHP Excel here:  
https://github.com/iliaal/php_excel/ and here http://ilia.ws/files/confoo_phpexcel.pdf

Read more about LZ4 here:  
https://github.com/kjdev/php-ext-lz4 and here https://code.google.com/p/lz4/
