require "rack"
require "rack/contrib/try_static"
require 'rack/contrib/static_cache'

# require "middleman"
# require "middleman/builder"

# Middleman::Builder.start

module Heroku
  class StaticAssetsMiddleware
    def initialize(app)
      @app = app
    end

    def call(env)
      @app.call(env)
    end
  end
end

use Rack::TryStatic,
  :root => 'build',
  :urls => ['/'],
  :try  => ['.html', 'index.html', '/index.html']

use Rack::StaticCache, urls: ['/'], root: 'build'

run lambda{ |env|
  not_found_page = File.expand_path("../build/404.html", __FILE__)
  if File.exist?(not_found_page)
    [ 404, { 'Content-Type'  => 'text/html'}, [File.read(not_found_page)] ]
  else
    [ 404, { 'Content-Type'  => 'text/html' }, ['File not found!'] ]
  end
}
