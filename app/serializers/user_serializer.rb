class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :trips
end
