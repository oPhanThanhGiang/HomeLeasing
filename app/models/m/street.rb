class M::Street < ApplicationRecord
  has_many :news, class_name: New, foreign_key: :street_id
end
