# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'open-uri'
require 'active_record/fixtures'

User.create :email => 'mod@rentluk.pl',
  :password=> '123456', :password_confirmation => '123456',
  :roles => [:moderator] , :username => 'mod'
  puts "utworzono moda"
User.create :email => 'owner@rentluk.pl',
  :password=> '123456', :password_confirmation => '123456',
  :roles => [:owner] ,  :username => 'owner'
  puts "utworzono owner"
User.create :email => 'user@rentluk.pl',
  :password=> '123456', :password_confirmation => '123456',
  :roles => [:tenant]   , :username => 'user'
  puts "utworzono usera"

ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "places")
puts "dodano mieszkania, jesli chcesz dodac wiecej /test/fixtures/places.yml"
