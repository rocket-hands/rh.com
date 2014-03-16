require 'digest'

class People
  def self.all
    {
      jack: {
        twitter:  'beetlefeet',
        email:    'beetlefeet@gmail.com',
      },
      rob: {
        twitter:  'rockethandsrob',
        avatar:   'https://pbs.twimg.com/profile_images/773552004/rob_bigger.jpeg',
        email:    'rob@rockethands.com',
      },
      jason: {
        twitter:  'kranzky',
        email:    'kranzky@rockethands.com',
      },
      dan: {
        twitter:  'rockethandsdan',
        email:    'dadams@rockethands.com',
      },
      simon: {
        twitter:  'FACEPOCALYPSE',
        email:    'sb@simonboxer.com',
      },
      brad: {
        twitter:  'paradroid001',
        email:    'brad@rockethands.com',
      },
    }
  end

  def self.twitter(person)
    person = self.all[person.to_sym]
    return nil unless person
    person[:twitter]
  end

  def self.icon_for?(person)
    return !self.all[person].nil?
  end

  def self.avatar_url(person)
    person = self.all[person.to_sym]
    return nil unless person
    return person[:avatar] if !person[:avatar].nil?
    email = person[:email]
    hash = Digest::MD5.hexdigest(email)
    "http://www.gravatar.com/avatar/#{hash}?s=64"
  end

end