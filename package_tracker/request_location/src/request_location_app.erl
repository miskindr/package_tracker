%%%-------------------------------------------------------------------
%% @doc request_location public API
%% @end
%%%-------------------------------------------------------------------

-module(request_location_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    request_location_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
