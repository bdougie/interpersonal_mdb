class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :cast

  has_many :people, serializer: PersonSerializer
end
