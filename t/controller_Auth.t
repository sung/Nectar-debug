use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Nectar::Debug';
use Nectar::Debug::Controller::Auth;

ok( request('/auth')->is_success, 'Request should succeed' );
done_testing();
