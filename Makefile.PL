use ExtUtils::MakeMaker;
WriteMakefile(
        'NAME'         => 'Sledge::Plugin::Template::Plugin::Comma',
        'VERSION_FROM' => 'lib/Sledge/Plugin/Template/Plugin/Comma.pm', # finds $VERSION
        'PREREQ_PM'    => {
                Test::More              => 0.32,
                Template::Plugin::Comma => 0.04,
        },
);
