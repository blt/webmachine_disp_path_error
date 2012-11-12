%% @author author <author@example.com>
%% @copyright YYYY author.
%% @doc Example webmachine_resource.

-module(disp_path_resource).
-export([init/1, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

to_html(Req, State) ->
    {lists:flatten(io_lib:format("<html><body>~p</body></html>", [Req:disp_path()]))},
    {Req, State}.
