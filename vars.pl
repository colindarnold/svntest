#!/usr/bin/perl

#use strict;
use warnings;

$myVarGlobal = 5;

my $myVarlocal = 10;

{
     my $myVarlocal = 15;
     print "in braces local is ", $myVarlocal, " and global: ", $myVarGlobal, "\n";
}


print "and outside the braces: ", $myVarlocal, "\n";


$myVarlocal = "but wait, there's more!";

print $myVarlocal;

print "\nor if you prefer $myVarlocal\n";


