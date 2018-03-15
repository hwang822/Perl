# https://www.tutorialspoint.com/perl/perl_variables.htm

# use strict; #this is mandatory to declare a variable before we use it. per declare my variable 

# Variables. 

# $Scalar
print "Sclar\n";
 
my $age = 25;             # An integer assignment
my $name = "John Paul";   # A string 
my $salary = 1445.50;     # A floating point

print "Age = $age\n";
print "Name = $name\n";
print "Salary = $salary\n";

# @Array 
print "\nArray\n";
my @ages = (25, 30, 40);             
my @names = ("John Paul", "Lisa", "Kumar");

print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";

# %hash
print "\nHash\n";

my %data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";

# Variable Context

print "\nVariable Context\n";

my @names = ('John Paul', 'Lisa', 'Kumar');

my @copy = @names;
my $size = @names;

print "Given names are : @copy\n";
print "Number of names are : $size\n";

my @array = (1, 2, 'Hello');
print "@array\n";
my @array = qw/This is an array/;
print "@array\n";

# IF ... ELSE

print "\nIF ... ELSE\n";

my $name = "Ali";
my $age = 10;

my $status = ($age > 60 )? "A senior citizen" : "Not a senior citizen";

print "$name is  - $status\n";

# Loops

print "\nLoops\n";

=begin
for( ; ; ) {
   printf "This loop will run forever.\n";
}
=cut

# Operator

print "\nOperator\n";

my $a = 20;
my $b = 10;
my $c = 15;
my $d = 5;
my $e;

print "Value of \$a  = $a, \$b = $b, \$c = $c and \$d = $d\n";
 
$e = ($a + $b) * $c / $d;
print "Value of (\$a + \$b) * \$c / \$d is  = $e\n";

$e = (($a + $b) * $c )/ $d;
print "Value of ((\$a + \$b) * \$c) / \$d is  = $e\n";

$e = ($a + $b) * ($c / $d);
print "Value of (\$a + \$b) * (\$c / \$d ) is  = $e\n";

$e = $a + ($b * $c ) / $d;
print "Value of \$a + (\$b * \$c )/ \$d is  = $e\n";

# Date & Time

print "\nDate & Time\n";

use POSIX qw(strftime);

my $datestring = strftime "%a %b %e %H:%M:%S %Y", localtime;
printf("date and time - $datestring\n");

# or for GMT formatted appropriately for your locale:
$datestring = strftime "%a %b %e %H:%M:%S %Y", gmtime;
printf("date and time - $datestring\n");

# Subroutine
print "\nSubroutine\n";

# Function definition
sub Hello {
   print "Hello, World!\n";
}

# Function call
Hello();

#the function using the special array @_. Thus the first argument to the function is in $_[0], the second is in $_[1], and so on.

# Function definition
sub Average {
   # get total number of arguments passed.
   my $n = scalar(@_);
   my  $sum = 0;

   foreach my  $item (@_) {
      $sum += $item;
   }
   my $average = $sum / $n;

   print "Average for the given numbers : $average\n";
}

# Function call
Average(10, 20, 30);

# Function definition
sub PrintList {
   my @list = @_;
   print "Given list is @list\n";
}
$a = 10;
my @b = (1, 2, 3, 4);

# Function call with list parameter
PrintList($a, @b);

# Function definition
sub PrintHash {
   my (%hash) = @_;

   foreach my $key ( keys %hash ) {
      my $value = $hash{$key};
      print "$key : $value\n";
   }
}
my %hash = ('name' => 'Tom', 'age' => 19);

# Function call with hash parameter
PrintHash(%hash);

# Reference 

print "\nReference\n";

my $var = 10;
my $r = \$var;
print "Reference type in r : ", ref($r), "\n";

my @var = (1, 2, 3);
$r = \@var;
print "Reference type in r : ", ref($r), "\n";

my %var = ('key1' => 10, 'key2' => 20);
$r = \%var;
print "Reference type in r : ", ref($r), "\n";

# Format

print "\nFormat\n";

format EMPLOYEE =
===================================
@<<<<<<<<<<<<<<<<<<<<<< @<< 
$name $age
@#####.##
$salary
===================================
.

format EMPLOYEE_TOP =
===================================
Name                    Age
===================================
.

select(STDOUT);
$~ = EMPLOYEE;
$^ = EMPLOYEE_TOP;

my @n = ("Ali", "Raza", "Jaffer");
my @a  = (20,30, 40);
my @s = (2000.00, 2500.00, 4000.000);

my $i = 0;
foreach (@n) {
   my $name = $_;
   my $age = $a[$i];
   my $salary = $s[$i++];
   write;
}

# File I/O

print "\nFile I/O\n";

open(DATA, "<employees.txt") or die "Couldn't open file employees.txt, $!";

while(<DATA>) {
   print "$_";
}


# Directories

print "\Directories\n";

# Display all the files in ./ currently dir.
$dir = "./*";
my @files = glob( $dir );

foreach (@files ) {
   print $_ . "\n";
}

# Error Handling

print "\nHandling\n";

# Special Variable

print "\nSpecial Variable\n";

foreach ('hickory','dickory','doc') {
   print $_;
   print "\n";
}

# Sendmail utility

print "\nSendmail utility\n";

=begin
$to = 'hwang822@gmail.com';
$from = 'hwang822@gmail.com';
$subject = 'Test Email';
$message = 'This is test email sent by Perl Script';
 
open(MAIL, "|/usr/sbin/sendmail -t");  # this utiliy only for linux
 
# Email Header
print MAIL "To: $to\n";
print MAIL "From: $from\n";
print MAIL "Subject: $subject\n\n";
# Email Body
print MAIL $message;

close(MAIL);
print "Email Sent Successfully\n";

=cut

