# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seeding USERS relation
unless User.find_by_email('user1@gmail.com').present?
  user1 = User.create(email: 'user1@gmail.com', password: '123', country: 'Russian Federation',
                      town: 'Rostov-on-Don', address_line1: 'Pushkinskaya 123', postcode: '123456')
end
unless User.find_by_email('user2@gmail.com').present?
  user2 = User.create(email: 'user2@gmail.com', password: '456', country: 'Russian Federation',
                      town: 'Rostov-on-Don', address_line1: 'Pushkinskaya 456', postcode: '123456')
end

# seeding SIZES relation
unless Size.find_by_size('5 US').present?
  size1 = Size.create(s_type: 'MENS Footwear', size: '5 US')
end
unless Size.find_by_size('6 US').present?
  size2 = Size.create(s_type: 'MENS Footwear', size: '6 US')
end
unless Size.find_by_size('7 US').present?
  size3 = Size.create(s_type: 'MENS Footwear', size: '7 US')
end
unless Size.find_by_size('8 US').present?
  size4 = Size.create(s_type: 'MENS Footwear', size: '8 US')
end
unless Size.find_by_size('9 US').present?
  size5 = Size.create(s_type: 'MENS Footwear', size: '9 US')
end
unless Size.find_by_size('10 US').present?
  size6 = Size.create(s_type: 'MENS Footwear', size: '10 US')
end
unless Size.find_by_size('11 US').present?
  size7 = Size.create(s_type: 'MENS Footwear', size: '11 US')
end
unless Size.find_by_size('12 US').present?
  size8 = Size.create(s_type: 'MENS Footwear', size: '12 US')
end

# seeding PRODUCTS relation
unless Product.find_by_name('Nike Air Jordan 1 Retro High OG BLACK').present?
  product1 = Product.create(name: 'Nike Air Jordan 1 Retro High OG BLACK',
                            s_type: 'MENS Footwear',
                            size: '10 US',
                            price: 215,
                            currency: 'EU')
end
#unless Product.find_by_name('Nike Air Jordan 6 Retro PSG').present?
  #product2 = Product.create(name: 'Nike Air Jordan 6 Retro PSG', size: '9 US')
#end

# seeding ORDERS relation



