class FinantialProduct < ApplicationRecord
  belongs_to :institution_type
  belongs_to :product_type
  has_many :users, through: :finantial_products_users
  has_many :finantial_products_user, dependent: :destroy
  scope :filter_by_pro, -> (visibility) { where visibility: visibility }
  def liked?(user)
    !!self.finantial_products_user.find{|finantial_products_user| finantial_products_user.user_id == user.id}
  end
  def remove_like(user)
    FinantialProductsUser.where(user: user, finantial_product:self).first.destroy
  end
  def add_like(user)
    FinantialProductsUser.create(user: user, finantial_product:self)
  end
  def to_s
    name
  end

end
