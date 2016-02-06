class Student < ActiveRecord::Base
  has_many :comments, as: :commentable
  has_many :solutions, as: :solutionable
  has_many :students_non_profits
  has_many :non_profits, through: :students_non_profits

  class << self
    def from_omniauth(auth_hash)
      student = find_or_create_by(uid: auth_hash['uid'].to_s, provider: auth_hash['provider'])
      student.first_name = auth_hash['info']['first_name']
      student.last_name = auth_hash['info']['last_name']
      student.location = auth_hash['info']['location']
      student.image_url = auth_hash['info']['image']
      student.token = auth_hash['credentials']['token']
      student.expires_at = Time.at(auth_hash.credentials.expires_at)
      student.url = auth_hash['info']['urls'][student.provider.capitalize]
      student.save!
      student
    end
  end


end
