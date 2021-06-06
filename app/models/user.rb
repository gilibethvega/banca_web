class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :finantial_info
  has_many :products, through: :finantial_product_users
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
