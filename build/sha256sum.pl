#!/usr/bin/perl

BEGIN {
  require Digest::SHA; Digest::SHA->import(qw(sha256_hex sha512_hex));
}

$/=undef;

while(<>) {
  print sha256_hex($_),"  $ARGV\n";
}
