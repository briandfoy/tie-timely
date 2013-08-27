use ExtUtils::MakeMaker;

require 5.012;

eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'	       => 'Tie::Timely',
	'ABSTRACT'     => 'Time out scalar values',
	'VERSION_FROM' => 'lib/Tie/Timely.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => { 
		'Test::More' => '0',
		},

	clean  => { FILES    => q|Tie-Timely-*| },

	'META_MERGE' => {
        'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url  => 'git@github.com:briandfoy/tie-timely.git',
				web  => 'https://github.com/briandfoy/tie-timely',
				},
			},
		},

	);
