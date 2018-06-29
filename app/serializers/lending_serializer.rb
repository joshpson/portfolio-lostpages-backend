class LendingSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :borrower_id, :lend_date, :status
  belongs_to :book
  has_one :user, through: :book
  belongs_to :borrower, :class_name => "User"
end
