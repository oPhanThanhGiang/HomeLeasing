class M::Unit < ApplicationRecord
  has_many :news, class_name: New, foreign_key: :unit_id
end
