# Celery demo

The celery daemon itself is deployed as a separate app:

    ln -sf stackato-worker.yml stackato.yml  # or, make worker
    stackato push -n

Actual web application is deployed next:

    ln -sf stackato-web.yml stackato.yml  # or, make web
    stackato push -n

RabbitMQ is the configured message broker; this is how the two apps communicate. Now, trigger a task from the demo app so that actual work is done on the celery daemon (first app):

    $ stackato run celery-web python demo.py 
    Making pi
    Dispatching tasks
    Waiting for results
    Results:
    3.14158265359
    3.14159165359
    3.14159255359
    $

Note: celery-web runs as a hello-world WSGI app - wsgi.py, which is not
used for any specific purpose. The purpose is to have demo.py deployed so that we may trigger tasks on the worker. This triggering normally happens from the web app itself.