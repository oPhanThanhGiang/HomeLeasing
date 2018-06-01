class New < ApplicationRecord
  belongs_to :city, class_name: M::City
  belongs_to :unit, class_name: M::Unit
  belongs_to :district, class_name: M::District
  belongs_to :ward, class_name: M::Ward
  belongs_to :street, class_name: M::Street
  belongs_to :direction_of_house, class_name: M::DirectionOfHouse
  belongs_to :direction_of_balcony, class_name: M::DirectionOfBalcony
  belongs_to :interior, class_name: M::Interior
  belongs_to :type_of_new, class_name: M::TypeOfNew
  belongs_to :user, class_name: User

  enum type: [:real, :sale]
end
