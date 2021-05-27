class FinantialInfo < ApplicationRecord
  belongs_to :user
  belongs_to :visa_type
  belongs_to :worker_type
end
