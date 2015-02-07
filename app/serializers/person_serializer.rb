class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :bio
end
