class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :breed, :user_id
end
