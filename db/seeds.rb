require "csv"
require "faker"

if Rails.env.development? || Rails.env.staging?
  puts "--- Faker master data start ---"
    [:cities, :direction_of_balconies, :direction_of_houses,
      :districts, :interiors, :paper_types, :streets,
      :type_of_informations, :type_of_lands, :type_of_news, :units,
      :wards].each do |klass_name|
      klass = if klass_name == :type_of_news
          "M::TypeOfNew"
        else
          "M::#{klass_name.to_s.classify}"
        end.safe_constantize
      klass.delete_all

      10.times.each do |i|
        master_item = klass.new name: "#{klass_name} - #{i}",
          key_name: "#{klass_name}_#{i}",
          sort: i
        master_item.save validate: false
      end
    end
  puts "--- Faker master data end ---"

  User.delete_all
  20.times.each do |i|
    user = User.new name: "User - #{i}",
      info: "Info - #{i}",
      phone: 12345678,
      email: "homeleasing#{i}@yopmail.com",
      role: :normal,
      memo: "Memo - #{i}",
      is_active: true,
      skype: "Skype - #{i}",
      password: "password#{i}",
      password_confirmation: "password#{i}"
    user.save validate: false
  end

  NewsPaper.delete_all
  100.times.each do |i|
    news_paper = NewsPaper.new title: "Title NewsPaper - #{i}",
      m_paper_type_id: M::PaperType.all.sample.id,
      content: "Content NewsPaper - #{i}",
      sort: i,
      user_id: User.all.sample.id
    news_paper.save validate: false
  end

  New.delete_all
  100.times.each do |i|
    new_item = New.new type_of_information_id: M::TypeOfNew.all.sample.id,
      type_of_land_id: M::TypeOfLand.all.sample.id,
      unit_id: M::Unit.all.sample.id,
      city_id: M::City.all.sample.id,
      district_id: M::District.all.sample.id,
      ward_id: M::Ward.all.sample.id,
      street_id: M::Street.all.sample.id,
      direction_of_house_id: M::DirectionOfHouse.all.sample.id,
      direction_of_balcony_id: M::DirectionOfBalcony.all.sample.id,
      interior_id: M::Interior.all.sample.id,
      type_of_new_id: M::TypeOfNew.all.sample.id,
      price: 10000 + i,
      area: "Area - #{i}",
      address: "Address - #{i}",
      title: "Title - #{i}",
      content_posted: "Content Posted - #{i}",
      latitude: "1000",
      longitude: "1000",
      name_map: "Name Map - #{i}",
      front: "Front - #{i}",
      number_of_floors: "10#{i}",
      number_of_bedrooms: "100#{i}",
      number_of_toilets: "1000#{i}",
      access_road: "Access Road - #{i}",
      start_day: Time.current,
      end_date: Time.current,
      user_id: User.all.sample.id
    new_item.save validate: false
  end
end
