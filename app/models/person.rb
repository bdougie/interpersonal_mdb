class Person < ActiveRecord::Base
  has_many :credits
  has_many :movies, through: :credits
end
