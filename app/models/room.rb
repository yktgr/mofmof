class Room < ApplicationRecord
  validates :name, presence:true
  validates :price, presence:true
  validates :address, presence:true
  validates :age, presence:true
  validates :comment, presence:true
  has_many :places,dependent: :destroy
  accepts_nested_attributes_for :places
end
