class GiftEntry < ApplicationRecord
  belongs_to :user
  belongs_to :tin
end
