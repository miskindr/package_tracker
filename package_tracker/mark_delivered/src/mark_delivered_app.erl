%%%-------------------------------------------------------------------
%% @doc mark_delivered public API
%% @end
%%%-------------------------------------------------------------------

-module(mark_delivered_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    mark_delivered_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
