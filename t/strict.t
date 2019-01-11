use strictures 2;

use Test::More tests => 2;
use Test::Exception qw/throws_ok lives_ok/;

use Mus;

ro "test";

lives_ok { main->new(test => "successful") } 'created successfully';

throws_ok { }
run();
done_testing;
exit;

sub run {
    
    my $s = main->new( test => 3, roletest => 3 );
    is eval { $s->test( 2 ); 1 }, undef, "test is indeed ro";
    is $s->test, 3, "reading test works";
    is eval { $s->roletest( 2 ); 1 }, undef, "roletest is indeed ro";
    is $s->roletest, 3, "reading roletest works";
    return;
}

