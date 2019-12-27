# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seeding USERS relation
unless User.find_by_email('user1@gmail.com').present?
  user1 = User.create(country: 'Russian Federation', town: 'Rostov-on-Don',
                      address_line1: 'Pushkinskaya 123', postcode: '123456',
                      email: 'user1@gmail.com', encrypted_password: '123')
end
unless User.find_by_email('user2@gmail.com').present?
  user2 = User.create(country: 'Russian Federation', town: 'Rostov-on-Don',
                      address_line1: 'Pushkinskaya 456', postcode: '123456',
                      email: 'user2@gmail.com', encrypted_password: '456')
end

# seeding SIZES relation
unless Size.find_by_size('5 US').present?
  size_5_us = Size.create(s_type: 'MENS Footwear', size: '5 US')
end
unless Size.find_by_size('6 US').present?
  size_6_us = Size.create(s_type: 'MENS Footwear', size: '6 US')
end
unless Size.find_by_size('7 US').present?
  size_7_us = Size.create(s_type: 'MENS Footwear', size: '7 US')
end
unless Size.find_by_size('8 US').present?
  size_8_us = Size.create(s_type: 'MENS Footwear', size: '8 US')
end
unless Size.find_by_size('9 US').present?
  size_9_us = Size.create(s_type: 'MENS Footwear', size: '9 US')
end
unless Size.find_by_size('10 US').present?
  size_10_us = Size.create(s_type: 'MENS Footwear', size: '10 US')
end
unless Size.find_by_size('11 US').present?
  size_11_us = Size.create(s_type: 'MENS Footwear', size: '11 US')
end
unless Size.find_by_size('12 US').present?
  size_12_us = Size.create(s_type: 'MENS Footwear', size: '12 US')
end

# seeding PRODUCTS relation
unless Product.find_by_name('Nike Air Jordan 1 Retro High OG BLACK').present?
  product_1 = Product.create(name: 'Nike Air Jordan 1 Retro High OG BLACK',
                            s_type: 'MENS Footwear',
                            size: size_9_us,
                            price: 215,
                            currency: 'EU',
                            img_link: 'https://sneakerbardetroit.com/wp-content/uploads/2019/10/Air-Jordan-1-Bloodline-555088-062-2019-Release-Date-4.jpg',
                            desc: '"Who said man was not meant to fly?" This question was famously asked in a 1985 TV advert for the OG Air Jordan I while MJ soared in slow motion across the sky. It is now printed on the insoles of this special iteration that re-imagines the OG black and red colourway, a line that runs deep through the legacy of the AJI. Keep that heritage look on point with a double-layered construction on the tumbled leather upper, Nike Air branding on the tongue and a Jordan Wings logo pinned to the ankle collar. In the OG, everyone is meant to fly.'

  )

end
unless Product.find_by_name('Nike Air Jordan 11 Retro UNC WIN LIKE 82').present?
  product_2 = Product.create(name: 'Nike Air Jordan 11 Retro UNC WIN LIKE 82',
                             s_type: 'MENS Footwear',
                             size: size_11_us,
                             price: 213,
                             currency: 'EU',
                             img_link: 'https://sneakerbardetroit.com/wp-content/uploads/2017/10/jordan-11-navy-win-like-82-378037-123-4.jpg',
                             desc: 'Jordan Brand expands their “Win Like Mike” campaign with the release of the Air Jordan 11 Win Like 82 as a nod to Michael Jordan’s national title-winning shot as a college freshman in 1982.

As a tribute to his alma mater, MJ famously wore his collegiate practice shorts under his professional uniform. This Air Jordan 11 celebrates this ritual by featuring a University Blue Jumpman and Midnight Navy patent leather that ties back to his alternate practice short colorway.'
  )
end
unless Product.find_by_name('Nike Air Jordan 3 Animal Instinct').present?
  product_3 = Product.create(name: 'Nike Air Jordan 3 Animal Instinct',
                             s_type: 'MENS Footwear',
                             size: size_10_us,
                             price: 225,
                             currency: 'EU',
                             img_link: 'https://sneakerbardetroit.com/wp-content/uploads/2019/12/Air-Jordan-3-Animal-Instinct-CK4344-002-Release-Date-4.jpg',
                             desc: 'Jordan Brand will be releasing two exotic renditions of the Air Jordan 3 as part of an upcoming “Animal Pack” for the Spring 2020 season.

One pair comes dressed in “Black/Sail-Gum Light Brown-Multi-Color” and the other sports a “Black/Dark Mocha-Rope-Multi-Color” color scheme. Both Air Jordan 3s features pony hair and premium animal print materials with “INSTINCT” underneath the tongues atop Gum rubber outsoles.')
end
unless Product.find_by_name('Nike Zoom Vomero 5 Vast Grey').present?
  product_4 = Product.create(name: 'Nike Zoom Vomero 5 Vast Grey',
                             s_type: 'MENS Footwear',
                             size: size_9_us,
                             price: 160,
                             currency: 'EU',
                             img_link: 'https://sneakerbardetroit.com/wp-content/uploads/2019/01/Nike-Zoom-Vomero-5-Vast-Grey-BV1358-001-Release-Date.jpg',
                             desc: 'Originally reintroduced by A Cold Wall, the Nike Zoom Vomero 5 is now set to release in a new color option
Pair comes dressed in Vast Grey. Constructed with mesh and leather overlays along with Air ventilation on the heel. Nike Air Zoom cushioning completes the design.'
  )
end
unless Product.find_by_name('Nike Dunk Low Viotech').present?
  product_5 = Product.create(name: 'Nike Dunk Low Viotech',
                             s_type: 'MENS Footwear',
                             size: size_8_us,
                             price: 120,
                             currency: 'EU',
                             img_link: 'https://sneakerbardetroit.com/wp-content/uploads/2019/10/Nike-Dunk-Low-Viotech-CT5050-500-2019-Release-Date-4.jpg',
                             desc: 'Originally released in 2002 as a Japan CO.JP exclusive release, and re-released in 2013, the Nike Dunk Low “Viotech” will officially be making a return during the fall season.

Said to be one of the most sought after Nike Dunk Low releases of all-time. The shoe features a full rainbow of colors on its premium suede upper with each individual sections sporting a different color. A Black leather tongue and lining – which was an addition from the original, atop a Zoom cushioned sole completes the design.'
  )
end
unless Product.find_by_name('Nike React Element 87 Royal Tint').present?
  product_6 = Product.create(name: 'Nike React Element 87 Royal Tint',
                             s_type: 'MENS Footwear',
                             size: size_10_us,
                             price: 160,
                             currency: 'EU',
                             img_link: 'https://sneakerbardetroit.com/wp-content/uploads/2019/01/Nike-React-Element-87-Royal-Tint-AQ1090-400-Release-Date-4.jpg',
                             desc: 'Following a successful year in 2018, the Nike React Element 87 will be kicking off 2019 with a brand new lineup that includes a few eye-catching color options.

One of those is this upcoming “Royal Tint” iteration. It features a Light Blue translucent upper with Wolf Grey overlays, Dark Green on the lace stay and Pink contrasting accents. A White React sole with translucent detailing and cork insoles completes the design.'
  )
end

# seeding ORDERS relation
order_1 = Order.create(user_id: 1, )
order_2 = Order.create(user_id: 1)

# seeding ORDERS_PRODUCTS
Order.find_by_user_id(1).products.push(Product.first)
Order.find_by_user_id(1).products.push(Product.second)

unless AdminUser.find_by_email('admin@example.com').present?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
end