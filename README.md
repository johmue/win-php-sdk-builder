README
======

License
-------

This software is distributed under the MIT license and is free of charge.
For further information see the LICENSE file.

What is it?
-----------

Building PHP or PHP extensions on Windows systems is not so easy even with a great step-by-step
guide available here https://wiki.php.net/internals/windows/stepbystepbuild .

These scripts are intended to ease this process for the average Windows PHP user and to 
manage it all out of the box.

If you have ```Git``` and ```MS Visual Studio Express 2012 for Windows Desktop``` already installed it should
compile a working PHP version within a few clicks.

Why?
----

The main reason (for me) is to create up to date versions of the php_excel and lz4 extensions for Windows environment.

Which PHP versions are currently available?
-------------------------------------------

- php-5.5.11-nts-Win32-VC11-x86.zip
- php-5.5.11-Win32-VC11-x86.zip

- php-5.6.0beta1-nts-Win32-VC11-x86.zip
- php-5.6.0beta1-Win32-VC11-x86.zip

How to?
-------

Create a directory e.g. ```C:\php-build-55``` insert ```provision-php-55-sdk.bat``` and run it.
It will download all necessary files for compiling PHP 5.5 and create a proper directory structure.

After that you are able to compile the source. Therefore start the ```VS2012 x86 Native Tools Command Prompt```
(you will find it in the start menu group) navigate to the directory e.g. ```C:\php-build-55``` and run one
of the created ```compile*.bat``` files.

If everything worked fine you will find a compiled version of PHP in e.g.
```C:\php-build-55\phpdev\vc11\x86\obj_5.5.11\Release\php-5.5.11-nts-Win32-VC11-x86.zip``` .

Prerequisites
-------------

MS Visual Studio Express 2012 for Windows Desktop (**!!ATTENTION!!** do not take the 2013 version)  
http://www.microsoft.com/en-us/download/details.aspx?id=34673

Git for Windows  
http://git-scm.com/download/win

MS Visual C++ Redistributable for Visual Studio 2012  
http://www.microsoft.com/en-us/download/details.aspx?id=30679

wget (should be automatically loaded by the script if not available)  
7-zip cli tool (should be automatically loaded by the script if not available)  

Notes
-----

Please note that it will also create two custom extensions:

- php_excel.dll
- lz4.dll

Read more about PHP Excel here:  
https://github.com/iliaal/php_excel/ and here http://ilia.ws/files/confoo_phpexcel.pdf

Read more about LZ4 here:  
https://code.google.com/p/lz4/