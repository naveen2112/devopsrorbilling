#!/bin/bash
RUN rake db:create
RUN rake db:migrate
RUN rake assets:precompile
exec "$@"
