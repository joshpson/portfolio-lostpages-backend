class Lending < ApplicationRecord
  belongs_to :book
  has_one :user, through: :book
  belongs_to :borrower, :class_name => "User"
end
