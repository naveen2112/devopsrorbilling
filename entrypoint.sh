#!/bin/bash

set -e


export SECRET_KEY_BASE=9b5beb6d78a2c9f443bdd43c053ce6d73789d1f103276bda63ec3c50d7515838f44e09b2a029260c71f1e085218454ae482b38df9ef7de769d9f2552cc5c317c
export RAILS_ENV=production
rake db:create
rake db:migrate
rake assets:precompile

exec "$@"
