#!/usr/bin/perl
use JSON;
use LWP::Simple;
use File::Slurp;
use Data::Dumper;

my $json = read_file('logolist.json');
my %logos = %{decode_json($json)};

for $team (keys %logos) {
    $gif = get($logos{$team});
    write_file("logos/$team", $gif);
}
