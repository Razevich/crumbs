class NonProfit < ActiveRecord::Base
  has_many :projects
  has_many :comments, as: :commentable
  has_many :tags, as: :tagable
  has_many :solutions, as: :solutionable
  has_many :students_non_profits
  has_many :students, through: :students_non_profits
end
