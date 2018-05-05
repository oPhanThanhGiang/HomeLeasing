class M::Interior < ApplicationRecord
  has_many :news, class_name: New, foreign_key: :interior_id
end
