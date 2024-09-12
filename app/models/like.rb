class Like < ApplicationRecord
  belongs_to :car
  belongs_to :user
  
  validates_uniqueness_of :car_id, scope: :user_id

end
