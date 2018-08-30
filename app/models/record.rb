class Record < ApplicationRecord
  belongs_to :owner
  has_many :nodes
end
