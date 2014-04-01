activate :livereload

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

set :markdown_engine, :redcarpet
set :markdown, { fenced_code_blocks: true, smartypants: true }

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
  activate :imageoptim
end
