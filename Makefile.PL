use ExtUtils::MakeMaker;

require 5.012;

eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'	       => 'Tie::Timely',
	'ABSTRACT'     => '',
	'VERSION_FROM' => 'lib/',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => { 
		'Test::More' => '0',
		},

	clean  => { FILES    => q|Tie-Timely-*| },

	);
