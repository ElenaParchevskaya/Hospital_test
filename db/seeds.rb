# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', phone_number: 375111111111)
#
# Category.create!([
#   { name: 'otolaryngologist' },
#   { name: 'ophthalmologist' },
#   { name: 'therapist' },
#   { name: 'surgeon' }
# ])
#
# Doctor.create!( name: 'Нина Петровна', category: categories[0], email: 'doctor@test.test', password: 'password', password_confirmation: 'password', phone_number: 375011111111 )
#
#
#

AdminUser.create!( email: 'admintest@example.com', phone_number: 80331111111, password: 'aaaaaa', password_confirmation: 'aaaaaa' )

  # ActiveAdmin.register Category do
  #   permit_params :name
  #
  # ActiveAdmin.register Doctor do
  #   permit_params :category_id
  #
  #   ActiveAdmin.register User do
  #     permit_params :role, :email,:first_name, :phone_number,:last_name, :password, :password_confirmation

      # AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
