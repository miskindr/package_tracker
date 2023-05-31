%%%-------------------------------------------------------------------
%% @doc put_on_vehicle public API
%% @end
%%%-------------------------------------------------------------------

-module(put_on_vehicle_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    put_on_vehicle_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
