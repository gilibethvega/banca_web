class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :finantial_info
  has_many :finantial_products, through: :finantial_product_users
  has_many :finantial_product_users, dependent: :destroy
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

  def have_product?(user)
    !!self.product.find{|product| product.user_id == user.id}
  end
  def remove_product(user)
    FinantialProductUsers.where(user: user, finantial_product:self).first.destroy
  end
  def add_product(user)
    FinantialProductUsers.create(user: user, finantial_product:self)
  end



end
