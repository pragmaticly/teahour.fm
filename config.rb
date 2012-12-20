###
# Compass
###

# Susy grids in Compass
# First: gem install susy --pre
# require 'susy'
require 'sassy-buttons'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Slim configuration
set :slim, {
  :format  => :html5,
  :attr_wrapper => '"',
  :indent => '    ',
  :pretty => true,
  :sort_attrs => false
}

# Assets PATH
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'


# Livereload
# use: https://github.com/middleman/middleman-livereload
activate :livereload



# Build-specific configuration
configure :build do

  # Or use a different image path
  # set :http_path, "/Content/images/"

  # Make favicons
  # use: https://github.com/follmann/middleman-favicon-maker
  activate :favicon_maker

  # Minify
  # see: https://github.com/middleman/middleman-guides/blob/master/source/advanced/file-size-optimization.html.markdown#compressing-images
  activate :minify_css
  activate :minify_javascript

  # Enable cache buster
  # see: https://github.com/middleman/middleman-guides/blob/master/source/advanced/improving-cacheability.html.markdown#cache-buster-in-query-string
  activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # use: https://github.com/middleman/middleman-smusher
  activate :smusher

  # Gzip HTML, CSS, and JavaScript
  # see: https://github.com/middleman/middleman-guides/blob/master/source/advanced/file-size-optimization.html.markdown#gzip-text-files
  activate :gzip

end


