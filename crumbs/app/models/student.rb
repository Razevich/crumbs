class Student < ActiveRecord::Base
  has_many :comments, as: :commentable
  has_many :solutions, as: :solutionable
  has_many :students_non_profits
  has_many :non_profits, through: :students_non_profits

  validates :email, email: true

  def self.omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |student|
      student.provider = auth.provider
      student.uid = auth.id
      student.name = auth.info.name
      student.image = auth.info.image
      student.token = auth.credentials.token
      student.expires_at = Time.at(auth.credentials.expires_at)
      student.save!
  end

end
