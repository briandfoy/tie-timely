use Module::Build;

Module::Build->new(
   module_name => 'Tie::Timely',
   abstract    => 'This is what the module does',
   dist_author => 'brian d foy <bdfoy@cpan.org>',
   license     => 'perl',

   requires => {
      'perl'   => '5.012',
   },

   build_requires => {
      'Test::More' => 0,
   },

   recommends => {
      # Optional in tests, skipped if not present
      'Test::Pod' => 0,
      'Test::Pod::Coverage' => 0,
   },

   script_files => [],

   add_to_cleanup => [ 'CAM-PDF-*' ],

   create_makefile_pl => 'traditional',
)->create_build_script;
