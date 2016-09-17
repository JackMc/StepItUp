class Battle < ApplicationRecord
  attr_accessor :category, :info
  validates :category, :info, presence: true

  has_and_belongs_to_many :users
end
