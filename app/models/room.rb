class Room < ApplicationRecord
  has_many :places,dependent :destroy
  accepts_nested_attributes_for :places
end
