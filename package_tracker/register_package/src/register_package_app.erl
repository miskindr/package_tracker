%%%-------------------------------------------------------------------
%% @doc register_package public API
%% @end
%%%-------------------------------------------------------------------

-module(register_package_app).

-behaviour(application).

-import(riak, [put_package/2]).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

-endif.

-export([start/2, stop/1, register_package/5]).


start(_StartType, _StartArgs) ->
    register_package_sup:start_link().

register_package(bucket, id, location, time, pid) ->
    package_info = riakc_obj:new(bucket, <<id>>, {location, time}),
    put_package(pid, package_info).
    

stop(_State) ->
    ok.

%% internal functions
%%%-------------------------------------------------------------------
%% Eunit Tests
%%%-------------------------------------------------------------------
-ifdef(EUNIT).

-include_lib("eunit/include/eunit.hrl").

register_package_test_() -> 
    [?_assertEqual({ok}, register_package(bucket, id, location, time, pid))].

-endif.