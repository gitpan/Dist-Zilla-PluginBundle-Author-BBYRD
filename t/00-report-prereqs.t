#!perl

use strict;
use warnings;

use Test::More tests => 1;

use ExtUtils::MakeMaker;
use File::Spec::Functions;
use List::Util qw/max/;

my @modules = qw(
  Dist::Zilla
  Dist::Zilla::App::Command::podpreview
  Dist::Zilla::Plugin::CheckExtraTests
  Dist::Zilla::Plugin::CheckPrereqsIndexed
  Dist::Zilla::Plugin::Clean
  Dist::Zilla::Plugin::ContributorsFromGit
  Dist::Zilla::Plugin::CopyFilesFromBuild
  Dist::Zilla::Plugin::GitFmtChanges
  Dist::Zilla::Plugin::InstallGuide
  Dist::Zilla::Plugin::InstallRelease
  Dist::Zilla::Plugin::MetaProvides::Package
  Dist::Zilla::Plugin::MetaResourcesFromGit
  Dist::Zilla::Plugin::NoTabsTests
  Dist::Zilla::Plugin::OurPkgVersion
  Dist::Zilla::Plugin::PodWeaver
  Dist::Zilla::Plugin::ReadmeAnyFromPod
  Dist::Zilla::Plugin::ReportPhase
  Dist::Zilla::Plugin::Test::CPAN::Meta::JSON
  Dist::Zilla::Plugin::Test::CheckDeps
  Dist::Zilla::Plugin::Test::CheckManifest
  Dist::Zilla::Plugin::Test::Compile
  Dist::Zilla::Plugin::Test::DistManifest
  Dist::Zilla::Plugin::Test::EOL
  Dist::Zilla::Plugin::Test::MinimumVersion
  Dist::Zilla::Plugin::Test::Portability
  Dist::Zilla::Plugin::Test::ReportPrereqs
  Dist::Zilla::Plugin::Test::Synopsis
  Dist::Zilla::Plugin::Test::Version
  Dist::Zilla::Plugin::TravisYML
  Dist::Zilla::PluginBundle::Git
  Dist::Zilla::PluginBundle::Git::CheckFor
  Dist::Zilla::PluginBundle::GitHub
  Dist::Zilla::PluginBundle::Prereqs
  Dist::Zilla::Role::PluginBundle::Merged
  Dist::Zilla::Stash::PAUSE::Encrypted
  Moose
  Pod::Coverage::TrustPod
  Pod::Elemental::Transformer::List
  Pod::Weaver
  Pod::Weaver::Plugin::Encoding
  Pod::Weaver::Plugin::WikiDoc
  Pod::Weaver::Section::Availability
  Pod::Weaver::Section::Contributors
  Pod::Weaver::Section::Support
  Test::CPAN::Meta::JSON
  Test::CheckDeps
  Test::More
  autovivification
  indirect
  multidimensional
  perl
  sanity
);

# replace modules with dynamic results from MYMETA.json if we can
# (hide CPAN::Meta from prereq scanner)
my $cpan_meta = "CPAN::Meta";
if ( -f "MYMETA.json" && eval "require $cpan_meta" ) { ## no critic
  if ( my $meta = eval { CPAN::Meta->load_file("MYMETA.json") } ) {
    my $prereqs = $meta->prereqs;
    delete $prereqs->{develop};
    my %uniq = map {$_ => 1} map { keys %$_ } map { values %$_ } values %$prereqs;
    $uniq{$_} = 1 for @modules; # don't lose any static ones
    @modules = sort keys %uniq;
  }
}

my @reports = [qw/Version Module/];

for my $mod ( @modules ) {
  next if $mod eq 'perl';
  my $file = $mod;
  $file =~ s{::}{/}g;
  $file .= ".pm";
  my ($prefix) = grep { -e catfile($_, $file) } @INC;
  if ( $prefix ) {
    my $ver = MM->parse_version( catfile($prefix, $file) );
    $ver = "undef" unless defined $ver; # Newer MM should do this anyway
    push @reports, [$ver, $mod];
  }
  else {
    push @reports, ["missing", $mod];
  }
}

if ( @reports ) {
  my $vl = max map { length $_->[0] } @reports;
  my $ml = max map { length $_->[1] } @reports;
  splice @reports, 1, 0, ["-" x $vl, "-" x $ml];
  diag "Prerequisite Report:\n", map {sprintf("  %*s %*s\n",$vl,$_->[0],-$ml,$_->[1])} @reports;
}

pass;

# vim: ts=2 sts=2 sw=2 et:
