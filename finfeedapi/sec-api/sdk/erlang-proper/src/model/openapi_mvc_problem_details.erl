-module(openapi_mvc_problem_details).

-include("openapi.hrl").

-export([openapi_mvc_problem_details/0]).

-export([openapi_mvc_problem_details/1]).

-export_type([openapi_mvc_problem_details/0]).

-type openapi_mvc_problem_details() ::
  [ {'type', binary() }
  | {'title', binary() }
  | {'status', integer() }
  | {'detail', binary() }
  | {'instance', binary() }
  ].


openapi_mvc_problem_details() ->
    openapi_mvc_problem_details([]).

openapi_mvc_problem_details(Fields) ->
  Default = [ {'type', binary() }
            , {'title', binary() }
            , {'status', integer() }
            , {'detail', binary() }
            , {'instance', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

