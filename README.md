# Perl
https://www.tutorialspoint.com/perl/perl_packages_modules.htm

Perl is a stable, cross platform programming language. Perl is a general-purpose programming language originally developed for text manipulation and now used for a wide range of tasks including system administration, web development, network programming, GUI development, and more.

Install perl
Linux
Download perl-5.x.y.tar.gz file and issue the following commands at $ prompt.
$tar -xzf perl-5.x.y.tar.gz
$cd perl-5.x.y
$./Configure -de
$make
$make test
$make install
Windows
Follow the link for the Strawberry Perl installation on Windows http://strawberryperl.com

Perl -v 
This is perl 5, version 16, subversion 2 (v5.16.3) built for i686-linux 

Run perl
$perl  -e <perl code>           # Unix/Linux
$perl -e 'print "Hello World\n"' # Unix/Linux
c:\Workarea\Perl>perl -e "print \"Hello World\n"\"  # Windows

A Perl script is a text file, which keeps perl code in it and it can be executed at the command line by invoking the interpreter.
$perl  script.pl          # Unix/Linux

Programming Perl
https://www.youtube.com/watch?v=WEghIXs8F6c

class/module file define package at lib\animal\cat.pm .\lion.pm
at perltest.pl
use lib 'lib';
use Animal::Cat;
use Animal::Lion;

https://www.tutorialspoint.com/perl/perl_packages_modules.htm

Client - Server using Perl socket.
Socket Programming
server.pl
SERVER started on port 7890

client.pl
Smile from server

Object Oriented Perl Example

myclass.pl


