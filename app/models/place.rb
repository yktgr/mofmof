class Place < ApplicationRecord
  belongs_to :room,optional: true
end
