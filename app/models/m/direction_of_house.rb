class M::DirectionOfHouse < ApplicationRecord
  has_many :news, class_name: New, foreign_key: :direction_of_house_id
end
