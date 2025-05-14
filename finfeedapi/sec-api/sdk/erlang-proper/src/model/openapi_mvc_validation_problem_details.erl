-module(openapi_mvc_validation_problem_details).

-include("openapi.hrl").

-export([openapi_mvc_validation_problem_details/0]).

-export([openapi_mvc_validation_problem_details/1]).

-export_type([openapi_mvc_validation_problem_details/0]).

-type openapi_mvc_validation_problem_details() ::
  [ {'type', binary() }
  | {'title', binary() }
  | {'status', integer() }
  | {'detail', binary() }
  | {'instance', binary() }
  | {'errors', map() }
  ].


openapi_mvc_validation_problem_details() ->
    openapi_mvc_validation_problem_details([]).

openapi_mvc_validation_problem_details(Fields) ->
  Default = [ {'type', binary() }
            , {'title', binary() }
            , {'status', integer() }
            , {'detail', binary() }
            , {'instance', binary() }
            , {'errors', map() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

