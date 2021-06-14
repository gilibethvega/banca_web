class FinantialInfo < ApplicationRecord
  belongs_to :user
  belongs_to :visa_type
  belongs_to :worker_type
  validates :user_id, uniqueness: true

  


end
