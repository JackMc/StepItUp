class Battle < ApplicationRecord
  validates :category, :info, presence: true
  has_and_belongs_to_many :users
end
