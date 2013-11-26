
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
    "Dist::Zilla" => "5.006",
    "Dist::Zilla::App::Command::cover" => "1.101001",
    "Dist::Zilla::App::Command::dumpphases" => "v0.6.0",
    "Dist::Zilla::App::Command::podpreview" => "0.004",
    "Dist::Zilla::Plugin::Bootstrap::lib" => "0.04000002",
    "Dist::Zilla::Plugin::CheckExtraTests" => "0.016",
    "Dist::Zilla::Plugin::CheckPrereqsIndexed" => "0.009",
    "Dist::Zilla::Plugin::Clean" => "0.07",
    "Dist::Zilla::Plugin::ContributorsFromGit" => "0.006",
    "Dist::Zilla::Plugin::CopyFilesFromBuild" => "0.103510",
    "Dist::Zilla::Plugin::GitFmtChanges" => "0.005",
    "Dist::Zilla::Plugin::InstallGuide" => "1.200001",
    "Dist::Zilla::Plugin::InstallRelease" => "0.008",
    "Dist::Zilla::Plugin::MetaProvides::Package" => "1.15000001",
    "Dist::Zilla::Plugin::MetaResourcesFromGit" => "1.103620",
    "Dist::Zilla::Plugin::NoTabsTests" => "0.05",
    "Dist::Zilla::Plugin::OurPkgVersion" => "0.005000",
    "Dist::Zilla::Plugin::PodWeaver" => "4.000",
    "Dist::Zilla::Plugin::ReadmeAnyFromPod" => "0.131500",
    "Dist::Zilla::Plugin::ReportPhase" => 0,
    "Dist::Zilla::Plugin::Test::CPAN::Changes" => "0.008",
    "Dist::Zilla::Plugin::Test::CPAN::Meta::JSON" => "0.003",
    "Dist::Zilla::Plugin::Test::CheckDeps" => "0.010",
    "Dist::Zilla::Plugin::Test::CheckManifest" => "0.04",
    "Dist::Zilla::Plugin::Test::Compile" => "2.037",
    "Dist::Zilla::Plugin::Test::DistManifest" => "2.000004",
    "Dist::Zilla::Plugin::Test::EOL" => "0.08",
    "Dist::Zilla::Plugin::Test::MinimumVersion" => "2.000005",
    "Dist::Zilla::Plugin::Test::Portability" => "2.000005",
    "Dist::Zilla::Plugin::Test::ReportPrereqs" => "0.010",
    "Dist::Zilla::Plugin::Test::Synopsis" => "2.000004",
    "Dist::Zilla::Plugin::Test::Version" => "0.002004",
    "Dist::Zilla::Plugin::TravisYML" => "1.04",
    "Dist::Zilla::PluginBundle::Git" => "2.019",
    "Dist::Zilla::PluginBundle::Git::CheckFor" => "0.008",
    "Dist::Zilla::PluginBundle::GitHub" => "0.35",
    "Dist::Zilla::PluginBundle::Prereqs" => "0.92",
    "Dist::Zilla::Role::PluginBundle::Merged" => "1.00",
    "Dist::Zilla::Role::PluginBundle::PluginRemover" => "0.102",
    "Dist::Zilla::Stash::PAUSE::Encrypted" => "0.003",
    "Moose" => "2.1005",
    "Pod::Coverage::TrustPod" => "0.100003",
    "Pod::Elemental::Transformer::List" => "0.101620",
    "Pod::Weaver" => "4.004",
    "Pod::Weaver::Plugin::WikiDoc" => "0.093003",
    "Pod::Weaver::Section::Availability" => "1.20",
    "Pod::Weaver::Section::Contributors" => "0.006",
    "Pod::Weaver::Section::Support" => "1.001",
    "Test::CPAN::Meta::JSON" => "0.15",
    "autovivification" => "0.12",
    "indirect" => "0.31",
    "multidimensional" => "0.011",
    "sanity" => "1.02"
  },
  "TEST_REQUIRES" => {
    "Test::CheckDeps" => "0.010",
    "Test::More" => "0.94"
  },
  "VERSION" => "1.00",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Dist::Zilla" => "5.006",
  "Dist::Zilla::App::Command::cover" => "1.101001",
  "Dist::Zilla::App::Command::dumpphases" => "v0.6.0",
  "Dist::Zilla::App::Command::podpreview" => "0.004",
  "Dist::Zilla::Plugin::Bootstrap::lib" => "0.04000002",
  "Dist::Zilla::Plugin::CheckExtraTests" => "0.016",
  "Dist::Zilla::Plugin::CheckPrereqsIndexed" => "0.009",
  "Dist::Zilla::Plugin::Clean" => "0.07",
  "Dist::Zilla::Plugin::ContributorsFromGit" => "0.006",
  "Dist::Zilla::Plugin::CopyFilesFromBuild" => "0.103510",
  "Dist::Zilla::Plugin::GitFmtChanges" => "0.005",
  "Dist::Zilla::Plugin::InstallGuide" => "1.200001",
  "Dist::Zilla::Plugin::InstallRelease" => "0.008",
  "Dist::Zilla::Plugin::MetaProvides::Package" => "1.15000001",
  "Dist::Zilla::Plugin::MetaResourcesFromGit" => "1.103620",
  "Dist::Zilla::Plugin::NoTabsTests" => "0.05",
  "Dist::Zilla::Plugin::OurPkgVersion" => "0.005000",
  "Dist::Zilla::Plugin::PodWeaver" => "4.000",
  "Dist::Zilla::Plugin::ReadmeAnyFromPod" => "0.131500",
  "Dist::Zilla::Plugin::ReportPhase" => 0,
  "Dist::Zilla::Plugin::Test::CPAN::Changes" => "0.008",
  "Dist::Zilla::Plugin::Test::CPAN::Meta::JSON" => "0.003",
  "Dist::Zilla::Plugin::Test::CheckDeps" => "0.010",
  "Dist::Zilla::Plugin::Test::CheckManifest" => "0.04",
  "Dist::Zilla::Plugin::Test::Compile" => "2.037",
  "Dist::Zilla::Plugin::Test::DistManifest" => "2.000004",
  "Dist::Zilla::Plugin::Test::EOL" => "0.08",
  "Dist::Zilla::Plugin::Test::MinimumVersion" => "2.000005",
  "Dist::Zilla::Plugin::Test::Portability" => "2.000005",
  "Dist::Zilla::Plugin::Test::ReportPrereqs" => "0.010",
  "Dist::Zilla::Plugin::Test::Synopsis" => "2.000004",
  "Dist::Zilla::Plugin::Test::Version" => "0.002004",
  "Dist::Zilla::Plugin::TravisYML" => "1.04",
  "Dist::Zilla::PluginBundle::Git" => "2.019",
  "Dist::Zilla::PluginBundle::Git::CheckFor" => "0.008",
  "Dist::Zilla::PluginBundle::GitHub" => "0.35",
  "Dist::Zilla::PluginBundle::Prereqs" => "0.92",
  "Dist::Zilla::Role::PluginBundle::Merged" => "1.00",
  "Dist::Zilla::Role::PluginBundle::PluginRemover" => "0.102",
  "Dist::Zilla::Stash::PAUSE::Encrypted" => "0.003",
  "Moose" => "2.1005",
  "Pod::Coverage::TrustPod" => "0.100003",
  "Pod::Elemental::Transformer::List" => "0.101620",
  "Pod::Weaver" => "4.004",
  "Pod::Weaver::Plugin::WikiDoc" => "0.093003",
  "Pod::Weaver::Section::Availability" => "1.20",
  "Pod::Weaver::Section::Contributors" => "0.006",
  "Pod::Weaver::Section::Support" => "1.001",
  "Test::CPAN::Meta::JSON" => "0.15",
  "Test::CheckDeps" => "0.010",
  "Test::More" => "0.94",
  "autovivification" => "0.12",
  "indirect" => "0.31",
  "multidimensional" => "0.011",
  "sanity" => "1.02"
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);

{
package
MY;
use File::ShareDir::Install qw(postamble);
}


