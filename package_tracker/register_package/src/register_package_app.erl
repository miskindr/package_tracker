%%%-------------------------------------------------------------------
%% @doc register_package public API
%% @end
%%%-------------------------------------------------------------------

-module(register_package_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    register_package_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
