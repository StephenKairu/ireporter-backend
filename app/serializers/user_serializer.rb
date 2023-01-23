class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :role, :avatar, :password_digest
end
