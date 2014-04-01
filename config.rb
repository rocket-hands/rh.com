activate :livereload

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

set :markdown_engine, :redcarpet
set :markdown, { fenced_code_blocks: true, smartypants: true }

data.games.each do |id, game|
  proxy("/game/#{id}.html", "/game/index.html", :locals => { id: id, game: game })
end

data.people.each do |id, person|
  proxy("/person/#{person.nick.downcase}.html", "/person/index.html", :locals => { id: id, person: person})
end

ignore "/game/index.html"
ignore "/person/index.html"

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
