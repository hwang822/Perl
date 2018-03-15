# https://www.youtube.com/watch?v=WEghIXs8F6c


use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature "switch";

use v5.16;

# output functions

print "Hello World!\n";

my $name ='Derek';

my ($age, $street) = (40, '123 Mian St');

my $my_info = "$name lives on \"$street\"\n";

$my_info = qq{$name lives on "$street"\n};

print $my_info;

my $bunch_on_info = <<"END";
This is a 
bunch of informaiton
on multiple lines
END

say $bunch_on_info;

my $big_int = 18446744073709551615;

# %c : Charcter
# %s : string
# %d : Decimal
# %u : Unsigned integer
# %f : Floating Point (Deciaml Natation)
# %e : Floating Point (Scientific Nattion)

printf("%u \n", $big_int + 1);

my $big_float = .1000000000000001;

printf("%.16f \n", $big_float + .1000000000000001);

my $first = 1;
my $second = 2;

($first, $second) = ( $second, $first);
say "$first $second";

# Math functions

say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 ** 4 = ", 5 ** 4;

say "EXP 1 = ", exp 1;
say "HEX 10 = ", hex 10;
say "OCT 10 = ", oct 10;
say "INT 6.45 = ", int(6.45);
say "LOG 2 = ", log 2;
say "Random between 0 - 10 = ", int(rand 11);
say "SQRT 9 = ", sqrt 9;

my $rand_num = 5;
$rand_num +=1;
say "Number Incremented ", $ rand_num;

say "6++ = ", $rand_num++;
say "++6 = ", ++$rand_num;
say "6-- = ", $rand_num--;
say "--6 = ", --$rand_num;

say "3 + 2 * 5 = ", 3 + 2 * 5;
say "(3 + 2) * 5 = ", (3 + 2) * 5;

my $age = 80;
my $is_not_intoxicated = 1;

my $age_last_exam = 16;

if($age<16){
	say "you can't drive";
} elsif(!$is_not_intoxicated) {
	say "you can't drive";
} else {
	say "you can drive";
}

if (($age >=1) && ($age < 16)){
	say "you can't drive";
} elsif(!$is_not_intoxicated){
	say "you can't drive";
} elsif (($age>=80) && (($age > 100) || 
  (($age - $age_last_exam) > 5 ))){
    say "you can't drive";
} else {
    say "you can drive";
}
   
if('a' eq 'b') {
	say "a equals b";
} else {
	say "a doesn't equal b";
}

unless(!$is_not_intoxicated){
	say "Get Sober";
}

say (($age > 18)? "Can derive" : "Can not drive");

for(my $i = 0; $i < 10; $i++){
	say $i;
}

my $i = 1;
printf("\n");


while($i < 10){
	if($i % 2 == 0) {
		$i++;
		next;
	}
	
	if($i == 7){last;}
	say $i;
	$i++;
}
printf("\n");

=begin
my $lucky_num = 7;
my $quess;

do{
   say "Guess a Number Between 1 and 10";
   $quess = <STDIN>;
} while $quess != $lucky_num;

say "You Guessed 7";
=cut
# 28:25/1:07:18.

my $i = 1;
my $age_old = 18;

given ($age_old) {
	when($_ > 16){
		say "Drive";
	}
	when($_ > 17) {say	"Go Vote";}
	default {say "Nothing Secial";}

}

my $long_string = "Random Long String";

say "Length of String ", length $long_string;

printf("Long is at %d \n", index $long_string, "Long");
printf("Last g is at %d \n", rindex $long_string, "g");

$long_string = $long_string . ' isn\'t that long';

say "Index 7 through 10 ", substr $long_string, 7, 4;

my $animal = "animals";

printf("Last character is %s\n", chop $animal);

my $no_newline = "NO Newline\n";
chomp $no_newline;

printf("Uppercase : %s \n", uc $long_string);

printf("Uppercase : %s \n", uc $long_string);
printf("1st Uppercase : %s \n", ucfirst $long_string);

$long_string =~ s/ /, /g;
say $long_string;

my $two_times = "What I said is " x 2;
say $two_times;
my @abcs = ('a' .. 'z');

print join(", ", @abcs), "\n";

my $letter = 'c';
say "Next Letter ", ++$letter;


# array

my @primes = (2,3,5, 7, 11, 13, 17);

my @my_info = ("Derek", "123 Main St", 40, 6.25);

$my_info[4] = "Banas";

for my $info (@my_info){
	say $info;
}

foreach my $num (@primes){
	say $num;
}

for (@my_info){
	say $_;
}

my @my_name = @my_info[0,4];
say @my_name;

my $items = scalar @my_info;

say $items;

my ($f_name, $address, $how_old, $height, $l_name) = @my_info;

say "$f_name $l_name";

say "Popped Value ", pop @primes;

say "Pushed Value ", push @primes, 17;

say "First Item ", shift @primes;
say "Unshifted Item ", unshift @primes, 2;

print join(", ",  @primes), "\n";

say "Remove Index 0 - 2 ", splice @primes, 0, 3;

print join(", ", @primes), "\n";

print join " ", ('list', 'of', 'words', "\n");

my $customers = "Sue Sally Paul";
my @cust_array = split / /, $customers;
print join(", ", @cust_array), "\n";

@cust_array = reverse @cust_array;
@cust_array = reverse sort @cust_array;



my @cust_array = split / /, $customers;

my @number_array = (1,2,3,4, 5, 6, 7,8);

my @odds_array = grep {$_ % 2} @number_array;
print join(", ", @odds_array), "\n";

my @dbl_array = map {$_ *2} @number_array;

print join(", ", @dbl_array), "\n";


# Hash

my %employees = (
"Sue"=>35,\"Paule"=>43,
"Sam"=>39
);

printf("Sue is %d \n", $employees{Sue});

printf("\n");

$employees{Frankm} = 44;

while(my ($k, $v)=each %employees){print "$k $v\n"}

printf("\n");

my @ages = @employees{"Sue", "Sam"};

say @ages;
printf("\n");

my @hash_array = %employees;

delete $employees{'Frank'};

while(my ($k, $v)=each %employees){print "$k $v\n"}
printf("\n");

say ((exists $employees{'Sam'}) ? "Sam is here" : "No Sam");

for my $key (keys %employees){
    if($employees{$key}==35){
        say "Hi Sue";
    }
}


# subrounting

sub get_random {
    return int(rand 11);
}

say "Random Number ", get_random();


sub get_random_max {
    my($max_num) = @_;
    $max_num ||= 11;
    return int(rand $max_num);
}

say "Random Number ", get_random_max(100);

sub get_sum {
    my ($num_1, $num_2) = @_;
    $num_1 ||= 1;
    $num_2 ||= 1;

    return $num_1 + $num_2;    
}

sub sum_many {
   my $sum = 0;
   foreach my $val (@_){
    $sum += $val;
   }
   return $sum;
}

say "Sum : ", sum_many(1,2,3,4,.5);

sub increment {
    state $execute_total = 0;
    $execute_total++;
    say "Executed $execute_total times";
}

increment();
increment();


sub double_array{
    my @num_array = @_;
    $_ *= 2 for @num_array;
    return @num_array;
}

my @rand_array = (1,2,3,4,5);
print join(", ", double_array(@rand_array)), "\n";

sub get_mults{
    my($rand_num) = @_;
    $rand_num ||=1;
    return $rand_num * 2, $rand_num * 3;
}

my ($dbl_num, $trip_num) = get_mults(3);

say "$dbl_num, $trip_num";

sub factorial {
    my ($num) = @_;
    return 0 if $num <= 0;
    return 1 if $num == 1;
    return $num * factorial($num - 1);
    
}

say "Factorial 4 = ", factorial(4);

# file input output

my $emp_file = 'employees.txt';

open my $fh, '<', $emp_file
    or die "Can't Open File : $_";

    
while(my $info = <$fh>){
    chomp($info);
    my ($emp_name, $job, $id) = split /:/, $info;
    print "$emp_name is a $job and has the id $id \n";
}

close $fh or die "Couldn't Close File : $_";

open $fh, '>>', $emp_file
   or die "Can't Open File : $_";
   
print $fh "Mark:Salesman:124\n";
close $fh or die "Couldn't Close File : $_";
   
open $fh, '+<', $emp_file
   or die "Can't Open File : $_";
seek $fh, 0, 0;
print $fh "Phil:Salesman:125\n";
close $fh or die "Couldn't Close File : $_";


# class/object 

use lib 'lib';
use Animal::Cat;

my $whiskers = new Animal::Cat("whiskers", "Derek");

say $whiskers->getName();

$whiskers->setName("Whiskers");

say $whiskers->getName();
say $whiskers->getSound();

use Animal::Lion;
my $king = new Animal::Lion("King", "No Owner");

say $king->getSound();
