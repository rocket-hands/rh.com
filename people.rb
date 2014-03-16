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
        email:    'rob@rockethands.com',
      },
      jason: {
        twitter:  'kranzky',
        email:    'kranzky@rockethands.com',
      },
    }
  end

  def self.icon_for?(person)
    return !self.all[person].nil?
  end

  def self.avatar_url(person)
    person = self.all[person.to_sym]
    return nil unless person
    email = person[:email]
    hash = Digest::MD5.hexdigest(email)
    "http://www.gravatar.com/avatar/#{hash}?s=32"
  end

end