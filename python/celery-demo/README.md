# Celery demo

The celery daemon itself is deployed as a separate app (celery-worker)
and actual web application as another (celery-web):

    $ stackato push -n --copy-unsafe-links

RabbitMQ is the configured message broker; this is how the two apps
communicate. Now, trigger a task from the demo app so that actual work
is done on the celery daemon (first app):

    $ stackato run celery-web python demo.py 
    Making pi
    Dispatching tasks
    Waiting for results
    Results:
    3.14158265359
    3.14159165359
    3.14159255359
    $

All the while, tailing the worker log to ensure that something in fact does happen on the server:

    $ stackato run celery-worker tail -f ../logs/stderr.log
    [...]
    [2012-01-23 19:21:36,279: WARNING/PoolWorker-1] Approximating pi with 100000 iterations
    [2012-01-23 19:21:36,374: WARNING/PoolWorker-1] Approximating pi with 1000000 iterations
    [2012-01-23 19:21:37,376: WARNING/PoolWorker-1] Approximating pi with 10000000 iterations

Note: celery-web runs as a hello-world WSGI app - wsgi.py, which is
not used for any specific purpose. The purpose is to have demo.py
deployed so that we may trigger tasks on the worker. This triggering
normally happens from the web app itself.