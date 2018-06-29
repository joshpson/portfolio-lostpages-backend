class FriendshipSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :friend, class_name: "User"
  attributes :id, :user_id, :friend_id
end
