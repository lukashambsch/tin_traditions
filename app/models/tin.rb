class Tin < ApplicationRecord
  has_many :gift_entries
  has_many :users, through: :gift_entries
end
