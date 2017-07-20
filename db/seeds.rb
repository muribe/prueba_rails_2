# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
User.destroy_all
Category.destroy_all

u1 = User.create(name: 'user1', mail: 'mail@mail.com')
u2 = User.create(name: 'user2', mail: 'mail2@mail.com')

c = Category.create!(name: 'category 1')
c.items.create!(serie: '1234', size: 4, description: 'Lorem ipsum dolor sit amet.',user: u1)
c.items.create!(serie: '4321', size: 1, description: 'Lorem ipsum dolor sit amet.')

c = Category.create!(name: 'category 2')
c.items.create!(serie: '1234', size: 6, description: 'Lorem ipsum dolor sit amet.',user: u2)
c.items.create!(serie: '4321', size: 9, description: 'Lorem ipsum dolor sit amet.',user: u1)

c = Category.create!(name: 'category 3')
c.items.create!(serie: '1234', size: 20, description: 'Lorem ipsum dolor sit amet.')
c.items.create!(serie: '4321', size: 22, description: 'Lorem ipsum dolor sit amet.')
