# General config
# http://localhost:4567/__middleman

# For the metaman gem
require "active_support/core_ext/hash/indifferent_access"
# Import custom libraries and helpers
Dir['./*/*.rb'].each { |file| load file }

# Load Sass from node_modules
config[:sass_assets_paths] << File.join(root, 'node_modules')

set :css_dir,    'assets/stylesheets'
set :fonts_dir,  'assets/fonts'
set :images_dir, 'assets/images'
set :js_dir,     'assets/javascripts'

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |config|
  config.browsers = '>0.25%, not ie 11, not op_mini all, not dead'
end

activate :external_pipeline,
         name: :webpack,
         command: build? ? 'npm run build' : 'npm run start',
         source: 'dist',
         latency: 1

page '/*.xml',  layout: false
page '/*.json', layout: false
page '/*.txt',  layout: false

configure :development do
  set      :debug_assets, true
end

configure :build do
  ignore   File.join(config[:js_dir], '*') # handled by webpack
  set      :relative_links, true
  activate :asset_hash
  activate :gzip
  activate :minify_css
  activate :relative_assets
end

activate :metaman, host: 'https://domain.com'
