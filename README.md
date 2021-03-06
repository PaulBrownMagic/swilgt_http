# swilgt HTTP

A few useful imports for web server programming using Logtalk and SWI-Prolog's `library(http/http_server)`.

## `http.lgt`

This object is a proxy to `library(http/http_server)`. Anytime you have a predicate that starts with `http_` replace that part with `http::` and voila! For example, instead of:

```prolog
:- http_server([port(7000)]).
```
Write:

``` logtalk
:- http::server([port(7000)]).
```

If the predicate doesn't have a `http_` prefix, you still message the `http` object. So instead of:

``` prolog
reply_json_dict(D).
```
It's:

``` logtalk
http::reply_json_dict(D).
```

*NB* This still needs the `meta_predicate/1` declarations double checking. Furthermore, there appears to be some magic behind `http_current_handler/2`, so you may be getting a `false` answer when in truth there are handlers registered. It's on the TODO...

## `handler.lgt`

This is a category you can import so when making an object with handlers you can define them like so:

``` logtalk
:- object(home,
    imports(handler)).

    :- initialization((
        ^^handler(root(.), say_hi, [])
    )).

    say_hi(_Request) :-
        write('Content-type: text/plain'),
        nl,
        nl,
        write('Hello, world!'),
        nl.

:- end_object.
```

## `loader.lgt` And A Workaround/With For Existing SWI-Apps
This file loads `http` and `handler`. They're the recommended way to do things because if you load these before your routes you'll get to take advantage of static binding between the objects. But, if you're just wanting to add in a Logtalk route to an existing SWI-Prolog web application like so:

``` logtalk
:- http_handler(root(.), home::say_hi, []).
```

You'll find it'll throw an error. You could write:

``` logtalk
:- http_handler(root(.), [R]>>home::say_hi(R), []).
```

Or if you like it to look clean, then you can `logtalk_load(swilgt_http(lgt_handlers))`, which has a term expansion to re-write your routes into the lambda at compile time.

# Installation
See `settings.lgt` in your logtalk user directory for how to add third party libraries, then clone this repo into your third party library directory.
