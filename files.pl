#!/usr/bin/perl

use warnings;
use strict;
use Cwd;

#read each file in a directory

my $dir = getcwd;
my @files;
my $i;


opendir(my $dh, $dir) || die "ERROR: Can't open directory!";

$i = 0;

while(readdir $dh) {
     if($_ =~ m/^\w/) {
	$files[$i] = $_;
     	$i++;
}
}

foreach $i (@files) {
    print "File is ", $i, "\n";
    }


closedir $dh;




