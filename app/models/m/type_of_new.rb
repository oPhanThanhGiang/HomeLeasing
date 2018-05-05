class M::TypeOfNew < ApplicationRecord
  has_many :news, class_name: New, foreign_key: :type_of_new_id
end
