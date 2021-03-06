class User < ActiveRecord::Base

  has_and_belongs_to_many :battles
  has_many :steps
  has_friendship

  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
end
