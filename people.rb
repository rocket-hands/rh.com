require 'digest'

class People
  def self.all
    # avatar defaults to gravatar for email
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
        avatar:   'https://pbs.twimg.com/profile_images/2915432680/1ff23cacb121efa7117d8f9899913964_bigger.jpeg',
        email:    'dadams@rockethands.com',
      },
      simon: {
        twitter:  'sboxle',
        avatar:   'https://pbs.twimg.com/profile_images/1268047876/selfSFsquaretwitter_bigger.jpg',
        email:    'sb@simonboxer.com',
      },
      brad: {
        twitter:  'paradroid001',
        avatar:   'https://pbs.twimg.com/profile_images/3304727068/dc38d0113390bc8f5e5e027c6a2bd34a_bigger.png',
        email:    'brad@rockethands.com',
      },
      aladar: {
        twitter:  'aladarapponyi',
        avatar:   'https://pbs.twimg.com/profile_images/1928929887/avadar_240_normal_bigger.png',
        email:    'aladayapponyi@gmail.com',
      },
    }
  end

  def self.twitter(person)
    person = self.all[person.to_sym]
    return nil unless person
    person[:twitter]
  end

  def self.icon_for?(person)
    return !self.all[person.to_sym].nil?
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