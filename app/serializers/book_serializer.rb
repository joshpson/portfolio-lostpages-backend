class BookSerializer < ActiveModel::Serializer
  attributes :id, :name, :author, :short_description, :info_link, :cover_img, :user_id, :condition, :notes, :created_at
  belongs_to :user
  has_many :lendings
end
