class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :finantial_info
  has_many :finantial_products, through: :finantial_products_users
  has_many :finantial_products_user, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def users_profile
    @finantial_info = FinantialInfo.all
    find_profile = @finantial_info.pluck(:user_id)
    User.find(find_profile)
  end

  def have_profiling?(user)
    users_profile.include? (user)
  end
  
end
