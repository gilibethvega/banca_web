class FinantialProduct < ApplicationRecord
  belongs_to :institution_type
  belongs_to :product_type
  has_many :users, through: :finantial_product_users
  has_many :finantial_product_user, dependent: :destroy
  def liked?(user)
    !!self.finantial_product_user.find{|finantial_product_user| finantial_product_user.user_id == user.id}
  end
  def remove_like(user)
    FinantialProductUser.where(user: user, finantial_product:self).first.destroy
  end
  def add_like(user)
    FinantialProductUser.create(user: user, finantial_product:self)
  end
end
