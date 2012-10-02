
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "DZIL Author Bundle for BBYRD",
  "AUTHOR" => "Brendan Byrd <BBYRD\@CPAN.org>",
  "BUILD_REQUIRES" => {
    "Test::CheckDeps" => "0.002",
    "Test::UseAllModules" => "0.14"
  },
  "CONFIGURE_REQUIRES" => {},
  "DISTNAME" => "Dist-Zilla-PluginBundle-Author-BBYRD",
  "EXE_FILES" => [],
  "LICENSE" => "artistic_2",
  "NAME" => "Dist::Zilla::PluginBundle::Author::BBYRD",
  "PREREQ_PM" => {
    "Dist::Zilla" => "4.300024",
    "Dist::Zilla::Plugin::CheckExtraTests" => "0.007",
    "Dist::Zilla::Plugin::CheckPrereqsIndexed" => "0.007",
    "Dist::Zilla::Plugin::Clean" => "0.07",
    "Dist::Zilla::Plugin::CopyFilesFromBuild" => "0.103510",
    "Dist::Zilla::Plugin::GitFmtChanges" => "0.005",
    "Dist::Zilla::Plugin::InstallGuide" => "1.200000",
    "Dist::Zilla::Plugin::InstallRelease" => "0.008",
    "Dist::Zilla::Plugin::MetaProvides::Package" => "1.14000001",
    "Dist::Zilla::Plugin::MetaResourcesFromGit" => "1.103620",
    "Dist::Zilla::Plugin::NoTabsTests" => "0.01",
    "Dist::Zilla::Plugin::OurPkgVersion" => "0.004000",
    "Dist::Zilla::Plugin::PodWeaver" => "3.101641",
    "Dist::Zilla::Plugin::ReadmeAnyFromPod" => "0.120120",
    "Dist::Zilla::Plugin::ReportPhase" => 0,
    "Dist::Zilla::Plugin::ReportVersions::Tiny" => "1.06",
    "Dist::Zilla::Plugin::Test::CPAN::Meta::JSON" => "0.003",
    "Dist::Zilla::Plugin::Test::CheckDeps" => "0.005",
    "Dist::Zilla::Plugin::Test::CheckManifest" => "0.04",
    "Dist::Zilla::Plugin::Test::Compile" => "1.112820",
    "Dist::Zilla::Plugin::Test::DistManifest" => "2.000002",
    "Dist::Zilla::Plugin::Test::EOL" => "0.07",
    "Dist::Zilla::Plugin::Test::MinimumVersion" => "2.000002",
    "Dist::Zilla::Plugin::Test::Portability" => "2.000003",
    "Dist::Zilla::Plugin::Test::Synopsis" => "2.000002",
    "Dist::Zilla::Plugin::Test::UseAllModules" => "0.002",
    "Dist::Zilla::Plugin::Test::Version" => "0.002004",
    "Dist::Zilla::Plugin::TravisYML" => "0.94",
    "Dist::Zilla::PluginBundle::Git" => "1.122530",
    "Dist::Zilla::PluginBundle::Git::CheckFor" => "0.004",
    "Dist::Zilla::PluginBundle::GitHub" => "0.27",
    "Dist::Zilla::PluginBundle::Prereqs" => "0.91",
    "Dist::Zilla::Role::PluginBundle::Merged" => "0.91",
    "Moose" => "2.0604",
    "Pod::Coverage::TrustPod" => "0.100002",
    "Pod::Elemental::Transformer::List" => "0.101620",
    "Pod::Weaver::Plugin::Encoding" => "0.01",
    "Pod::Weaver::Plugin::WikiDoc" => "0.093002",
    "Pod::Weaver::Section::Availability" => "1.20",
    "Pod::Weaver::Section::Support" => "1.005",
    "Test::CPAN::Meta::JSON" => "0.14",
    "autovivification" => "0.10",
    "indirect" => "0.26",
    "multidimensional" => "0.010",
    "sanity" => "0.93"
  },
  "VERSION" => "0.92",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


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



