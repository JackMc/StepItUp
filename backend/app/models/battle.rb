class Battle < ApplicationRecord
  before_action :authenticate_user!
  has_and_belongs_to_many :users
end
