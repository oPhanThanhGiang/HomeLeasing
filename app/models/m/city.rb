class M::City < ApplicationRecord
  has_many :news, class_name: New, foreign_key: :city_id
end
