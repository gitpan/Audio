#!/usr/local/bin/perl -w
use strict;
use Audio::Data;

print "1..15\n";

my $a = new Audio::Data data => [0,1,2,3];
my $b = new Audio::Data data => [4,5,6,7];
my $c = $a . $b;
my $r = join(',',$c->data);
print "#$r\nnot " unless ($r eq "0,1,2,3,4,5,6,7");
print "ok 1\n";
$a .= $b;
$r = join(',',$a->data);
print "#$r\nnot " unless ($r eq "0,1,2,3,4,5,6,7");
print "ok 2\n";
$c = $b . 8;
$r = join(',',$c->data);
print "#$r\nnot " unless ($r eq "4,5,6,7,8");
print "ok 3\n";
$c = 3 . $b;
$r = join(',',$c->data);
print "#$r\nnot " unless ($r eq "3,4,5,6,7");
print "ok 4\n";
$c = [2,3] . $b;
$r = join(',',$c->data);
print "#$r\nnot " unless ($r eq "2,3,4,5,6,7");
print "ok 5\n";
$a .= [8,9];
$r = join(',',$a->data);
print "#$r\nnot " unless ($r eq "0,1,2,3,4,5,6,7,8,9");
print "ok 6\n";
$a += 1;
$r = join(',',$a->data);
print "#$r\nnot " unless ($r eq "1,2,3,4,5,6,7,8,9,10");
print "ok 7\n";
$c = $b + -8;
$r = join(',',$c->data);
print "#$r\nnot " unless ($r eq "-4,-3,-2,-1");
print "ok 8\n";
$c = $a + $c;
$r = join(',',$c->data);
print "#$r\nnot " unless ($r eq "-3,-1,1,3,5,6,7,8,9,10");
print "ok 9\n";
$c = $a-1;
$r = join(',',$c->data);
print "#$r\nnot " unless ($r eq "0,1,2,3,4,5,6,7,8,9");
print "ok 10\n";
$c = 1-$a;
$r = join(',',$c->data);
print "#$r\nnot " unless ($r eq "0,-1,-2,-3,-4,-5,-6,-7,-8,-9");
print "ok 11\n";
$c = $b*2;
$r = join(',',$c->data);
print "#$r\nnot " unless ($r eq "8,10,12,14");
print "ok 12\n";
$b *= 2;
$r = join(',',$b->data);
print "#$r\nnot " unless ($r eq "8,10,12,14");
print "ok 13\n";
$c = 2*$b;
$r = join(',',$c->data);
print "#$r\nnot " unless ($r eq "16,20,24,28");
print "ok 14\n";
$c /= 4;
$r = join(',',$c->data);
print "#$r\nnot " unless ($r eq "4,5,6,7");
print "ok 15\n";

