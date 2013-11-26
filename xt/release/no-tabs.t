use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::NoTabsTests 0.05

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/Dist/Zilla/MintingProfile/Author/BBYRD.pm',
    'lib/Dist/Zilla/PluginBundle/Author/BBYRD.pm',
    'lib/Pod/Weaver/PluginBundle/Author/BBYRD.pm'
);

notabs_ok($_) foreach @files;
done_testing;
