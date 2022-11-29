-module(url).
-export([start/0, stop/0]).
-export([headers/1]).

start() ->
    ssl:start(),
    inets:start().
stop() ->
    ssl:stop(),
    inets:stop().
headers(Url) ->
    {ok, {{_, 200}, Headers, _}} = httpc:request(Url),
    Headers.
