-module(json_handler).

-export([json_reader/1, find_cmd/1]).

json_reader(json) ->
    jsx:decode(json, [json_map]).

find_cmd(input_map) ->
    maps:find(cmd, input_map).