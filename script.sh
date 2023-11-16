#!/bin/bash
RUN rake db:create
RUN rake db:migrate

exec "$@"
