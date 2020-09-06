:- category(handler).

    :- info([ version is 1:0:0
            , author is 'Paul Brown'
            , date is 2020-09-04
            , comment is 'Pretty HTTP handler registration']).

    :- private(handler/3).
    :- mode(handler(+term, +term, +list), one).
    :- info(handler/3,
        [ comment is 'Register handler for predicate within importing object'
        , argnames is ['Path', 'HandlerPredicateName', 'Options']]).
    handler(Path, Handler, Options) :-
        self(Self),
        Handler =.. HParts, list::append(HParts, [Request], FParts), FullHandler =.. FParts,
        http::handler(Path, {Self, FullHandler}/[Request]>>(Self::FullHandler), Options).

:- end_category.
