class Movie < ActiveRecord::Base
  has_many :credits
  has_many :people, through: :credits 
end
