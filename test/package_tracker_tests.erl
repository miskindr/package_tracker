-module(package_tracker_tests).
-include_lib("eunit/include/eunit.hrl").

add_test() ->
    ?assertEqual(3, package_tracker_functions:add(1, 2)),
    ?assertEqual(10, package_tracker_functions:add(5, 5)),
    ?assertEqual(-2, package_tracker_functions:add(-1, -1)).