%%%-------------------------------------------------------------------
%% @doc enter_center public API
%% @end
%%%-------------------------------------------------------------------

-module(enter_center_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    enter_center_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
