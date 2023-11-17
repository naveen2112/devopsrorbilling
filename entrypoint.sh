set -e
rake db:create
rake db:migrate
rake assets:precompile
export SECRET_KEY_BASE=`rake secret`
exec "$@"
