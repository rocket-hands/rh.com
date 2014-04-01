activate :livereload

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

set :markdown_engine, :redcarpet
set :markdown, { fenced_code_blocks: true, smartypants: true }

case ENV['TARGET'].to_s.downcase
when 'production'
  activate :deploy do |deploy|
    deploy.method = :git
    deploy.remote = "git@github.com:rocket-hands/rocket-hands.github.io.git"
    deploy.branch = "master"
  end
else
  activate :deploy do |deploy|
    deploy.method = :git
    deploy.remote = "origin"
    deploy.branch = "gh-pages"
  end
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
  activate :imageoptim
end
