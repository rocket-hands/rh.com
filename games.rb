class Games
  def self.all
    games = YAML.load_file('./games.yml')
    # puts games
    games['games']
  end

  def self.find(name)
    all.select{ |x| x[:title] == name }.first
  end

  def self.path_for(title)
    title.tr(' ', '').underscore.downcase
  end

end
