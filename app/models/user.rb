class User < ApplicationRecord

validates_uniqueness_of :username

  has_many :orders
  has_many :items, through: :order

  has_secure_password

end
