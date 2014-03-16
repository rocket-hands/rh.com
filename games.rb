class Games
  def self.find(name)
    all.select{ |x| x[:title] == name }.first
  end

  def self.all
    [
      {
        title:    'Dwarf Squad',
        url:      'dwarf_squad.html',
        authors:  {
          jack: 'Art, Code, Design',
          jason: 'Code, Design',
          rob: 'Code, Design',
          dan: 'Code',
          brad: 'Code',
          aladar: 'Art',
          richard: 'Sound, Music'
        },
        platforms: {
          web: 'http://dwarfsquad.com/'
        },
        text_color:   'white',
        top_color:    '#933',
        bottom_color: '#ee4',
        background:   'dwarf_squad_badge.jpg',
      },
      {
        :title => "Sojourn",
        :authors => {
          jack: 'Code, Design, Some Art'
        },
        :platforms => {
          'unity' => 'https://dl.dropboxusercontent.com/u/327811/1gam/Sojourn/Sojourn.html'
        },
        :top_color => "#333",
        :background => "sojourn_badge.jpg",
        :bottom_color => "#555",
        :text_color => "white"
      },
      {
        :title => "Rocketfuse",
        :icon => "rocketfuse_icon.png",
        :authors => {
          jack: 'Code, Art',
          rob: 'Code',
          dan: 'Music',
          simon: 'Art'
        },
        :platforms => {
          'ios' => 'http://itunes.com/apps/rocketfuse'
        },
        :top_color => "#242458",
        :bottom_color => "#f19002",
        :text_color => "white"
      }
    ]
  end
end
