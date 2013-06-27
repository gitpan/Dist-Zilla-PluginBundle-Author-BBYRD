
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;

use File::ShareDir::Install;
install_share module => "Dist::Zilla::MintingProfile::Author::BBYRD", "profiles";


my %WriteMakefileArgs = (
  "ABSTRACT" => "DZIL Author Bundle for BBYRD",
  "AUTHOR" => "Brendan Byrd <BBYRD\@CPAN.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "File::ShareDir::Install" => "0.03"
  },
  "DISTNAME" => "Dist-Zilla-PluginBundle-Author-BBYRD",
  "EXE_FILES" => [],
  "LICENSE" => "artistic_2",
  "NAME" => "Dist::Zilla::PluginBundle::Author::BBYRD",
  "PREREQ_PM" => {
    "Dist::Zilla" => "4.300035",
    "Dist::Zilla::App::Command::podpreview" => "0.002",
    "Dist::Zilla::Plugin::Bootstrap::lib" => "0.02000100",
    "Dist::Zilla::Plugin::CheckExtraTests" => "0.011",
    "Dist::Zilla::Plugin::CheckPrereqsIndexed" => "0.009",
    "Dist::Zilla::Plugin::Clean" => "0.07",
    "Dist::Zilla::Plugin::ContributorsFromGit" => "0.006",
    "Dist::Zilla::Plugin::CopyFilesFromBuild" => "0.103510",
    "Dist::Zilla::Plugin::GitFmtChanges" => "0.005",
    "Dist::Zilla::Plugin::InstallGuide" => "1.200000",
    "Dist::Zilla::Plugin::InstallRelease" => "0.008",
    "Dist::Zilla::Plugin::MetaProvides::Package" => "1.14000002",
    "Dist::Zilla::Plugin::MetaResourcesFromGit" => "1.103620",
    "Dist::Zilla::Plugin::NoTabsTests" => "0.01",
    "Dist::Zilla::Plugin::OurPkgVersion" => "0.004000",
    "Dist::Zilla::Plugin::PodWeaver" => "3.101641",
    "Dist::Zilla::Plugin::ReadmeAnyFromPod" => "0.131500",
    "Dist::Zilla::Plugin::ReportPhase" => 0,
    "Dist::Zilla::Plugin::Test::CPAN::Meta::JSON" => "0.003",
    "Dist::Zilla::Plugin::Test::CheckDeps" => "0.007",
    "Dist::Zilla::Plugin::Test::CheckManifest" => "0.04",
    "Dist::Zilla::Plugin::Test::Compile" => "2.002",
    "Dist::Zilla::Plugin::Test::DistManifest" => "2.000003",
    "Dist::Zilla::Plugin::Test::EOL" => "0.07",
    "Dist::Zilla::Plugin::Test::MinimumVersion" => "2.000005",
    "Dist::Zilla::Plugin::Test::Portability" => "2.000004",
    "Dist::Zilla::Plugin::Test::ReportPrereqs" => "0.006",
    "Dist::Zilla::Plugin::Test::Synopsis" => "2.000003",
    "Dist::Zilla::Plugin::Test::Version" => "0.002004",
    "Dist::Zilla::Plugin::TravisYML" => "1.04",
    "Dist::Zilla::PluginBundle::Git" => "2.014",
    "Dist::Zilla::PluginBundle::Git::CheckFor" => "0.006",
    "Dist::Zilla::PluginBundle::GitHub" => "0.34",
    "Dist::Zilla::PluginBundle::Prereqs" => "0.92",
    "Dist::Zilla::Role::PluginBundle::Merged" => "1.00",
    "Dist::Zilla::Role::PluginBundle::PluginRemover" => "0.102",
    "Dist::Zilla::Stash::PAUSE::Encrypted" => "0.003",
    "Moose" => "2.0802",
    "Pod::Coverage::TrustPod" => "0.100002",
    "Pod::Elemental::Transformer::List" => "0.101620",
    "Pod::Weaver" => "3.101638",
    "Pod::Weaver::Plugin::Encoding" => "0.01",
    "Pod::Weaver::Plugin::WikiDoc" => "0.093002",
    "Pod::Weaver::Section::Availability" => "1.20",
    "Pod::Weaver::Section::Contributors" => "0.006",
    "Pod::Weaver::Section::Support" => "1.001",
    "Test::CPAN::Meta::JSON" => "0.14",
    "autovivification" => "0.11",
    "indirect" => "0.30",
    "multidimensional" => "0.011",
    "sanity" => "1.02"
  },
  "TEST_REQUIRES" => {
    "Test::CheckDeps" => "0.006",
    "Test::More" => "0.94"
  },
  "VERSION" => "0.98",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);

{
package
MY;
use File::ShareDir::Install qw(postamble);
}


