class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :finantial_info
  has_many :products, through: :finantial_product_users
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
