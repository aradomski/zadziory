# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.create :email => 'admin@rentluk.pl',
#  :password=> '123456', :password_confirmation => '123456',
#  :roles => [:admin]

require 'open-uri'
require 'active_record/fixtures'


User.create :email => 'mod@rentluk.pl',
  :password=> '123456', :password_confirmation => '123456',
  :roles => [:moderator]
  puts "utworzono moda"
User.create :email => 'owner@rentluk.pl',
  :password=> '123456', :password_confirmation => '123456',
  :roles => [:owner]
  puts "utworzono owner"
User.create :email => 'user@rentluk.pl',
  :password=> '123456', :password_confirmation => '123456',
  :roles => [:tenant]
  puts "utworzono usera"
#Place.create :is_active => 'true', :owner => 'Adam', :availability_from => '2011-11-16',
#  :availability_to => '2011-11-18', :price_min => '80.0', :price_max => '100.0', :deposit => '30',
#  :grade => '2.3', :telephone => '123456789', :country => 'Polska', :region => 'Pomorskie', 
#  :city => 'Gdynia', :district => 'asdasd', :street => 'Ulica', :place_nr => '23', :flat_nr =>'24',
# :coordinates => 'koordynaty', :place_type =>'mieszkanie', :floor_nr => '2', :nr_of_floors=> '10',
#  :nr_of_rooms => '3', :build_year => '1990', :heating_type =>'cieplo', :people_max => '10',
#  :for_who => 'par', :min_length_lease => '12', :type_length_lease =>'1', 
#  :description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel elit ut arcu volutpat pharetra ac in tellus. Aenean at elementum nulla. Sed sed arcu non erat luctus eleifend. Aenean lacinia, sem ac blandit fringilla, metus sem laoreet justo, at tristique urna ante sed eros. Pellentesque in justo eget odio sagittis mollis eu sit amet ligula. Nullam tempor mi eu justo luctus vitae sodales mauris molestie. Proin tellus arcu, condimentum eu accumsan eu, posuere ac enim. Ut eleifend tempor iaculis. Cras ac pharetra augue. Curabitur eu sapien in erat consectetur suscipit quis eget nibh. Morbi eget velit facilisis tellus rutrum ullamcorper. Nunc adipiscing volutpat eros, nec luctus nulla pulvinar at. Ut in neque purus, quis aliquam mauris.', 
#  :has_balcony=>'true', :has_garage =>'true', :has_basement =>'false', :has_parking=>'true',  :has_internet=>'true',  :has_terrace=>'true', :has_lift=>'false', :has_garden=>'true', 
#  :created_at=>'2012-01-04', :updated_at=>'2012-01-04', :user_id => '2', :surface => '133'

ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "places")
puts "dodano mieszkania, jesli chcesz dodac wiecej /test/fixtures/places.yml"
