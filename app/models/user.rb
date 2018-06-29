class User < ApplicationRecord
  has_many :books
  has_many :lendings, through: :books
  has_many :borrowings, :foreign_key => 'borrower_id', :class_name => "Lending"
  has_many :friendships
  has_many :friends, through: :friendships
end
