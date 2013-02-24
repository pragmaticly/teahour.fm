###
# Blog settings
###

Time.zone = "Beijing"

activate :blog do |blog|
  # blog.prefix = "blog"
  # blog.permalink = ":year/:month/:day/:title.html"
  # blog.sources = ":year-:month-:day-:title.html"
  # blog.taglink = "tags/:tag.html"
  blog.layout = "layouts/podcast"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = ":year.html"
  # blog.month_link = ":year/:month.html"
  # blog.day_link = ":year/:month/:day.html"
  # blog.default_extension = ".markdown"

  # blog.tag_template = "tag.html"
  # blog.calendar_template = "calendar.html"

  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/:num"
end

page "/feed.xml", :layout => false

###
# Compass
###

# Susy grids in Compass
# First: gem install susy --pre
# require 'susy'
require 'sassy-buttons'
require 'rgbapng'

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

#activate :syntax

# Methods defined in the helpers block are available in templates
helpers do
  def disqus_identifier(podcast)
    podcast.data["disqus_identifier"] || podcast.title.parameterize
  end

  def author(ident)
    data.author[ident]
  end

  def prev_nav(article)
    if article
      %Q!<a href="#{article.url}" class="prev"><i class="icon-angle-left"></i></a>!
    else
      %Q!<a href="#" class="prev disabled"><i class="icon-angle-left"></i></a>!
    end
  end

  def next_nav(article)
    if article
      %Q!<a href="#{article.url}" class="next"><i class="icon-angle-right"></i></a>!
    else
      %Q!<a href="#" class="next disabled"><i class="icon-angle-right"></i></a>!
    end
  end
end

# Assets PATH
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

set :markdown_engine, :kramdown
#set :markdown, fenced_code_blocks: true, autolink: true, smartypants: true

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

activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = "gh-pages"
end
