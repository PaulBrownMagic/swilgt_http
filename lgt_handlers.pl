:- multifile(term_expansion/2).
:- dynamic(term_expansion/2).

term_expansion(:- http_handler(Path, Object::Handler, Options),
               ':-'(http_handler(Path, [Request]>>(Object::HandlerRequest), Options))) :-
    Handler =.. HandlerParts,
    append(HandlerParts, [Request], RequestPlusParts),
    HandlerRequest =.. RequestPlusParts.
