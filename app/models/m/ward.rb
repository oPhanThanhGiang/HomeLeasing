class M::Ward < ApplicationRecord
  has_many :news, class_name: New, foreign_key: :ward_id
end
