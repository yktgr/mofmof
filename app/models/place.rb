class Place < ApplicationRecord
  validates :train, presence:true
  validates :station, presence:true
  validates :walk, presence:true
  belongs_to :room, optional: true
end
