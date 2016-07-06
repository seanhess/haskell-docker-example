Haskell Docker Error
--------------------

This was build from `stack new` with minimal changes. The app responds with `"Hello World"` if you start it:

    stack build
    stack exec haskell-docker-example

But if you build the docker image and start it:

    stack image container
    docker run -it -p 8010:8010 haskell-docker-example

Requests reach the docker container, but we get an empty response error because there's nothing behind it.

    $ curl -i http://localhost:8010
    curl: (52) Empty reply from server
