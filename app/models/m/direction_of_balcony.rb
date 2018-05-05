class M::DirectionOfBalcony < ApplicationRecord
  has_many :news, class_name: New, foreign_key: :direction_of_balcony_id
end
