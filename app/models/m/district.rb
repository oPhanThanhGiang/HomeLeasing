class M::District < ApplicationRecord
  has_many :news, class_name: New, foreign_key: :district_id
end
