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
User.create :email => 'mod@rentluk.pl',
  :password=> '123456', :password_confirmation => '123456',
  :roles => [:moderator]
User.create :email => 'owner@rentluk.pl',
  :password=> '123456', :password_confirmation => '123456',
  :roles => [:owner]
User.create :email => 'user@rentluk.pl',
  :password=> '123456', :password_confirmation => '123456',
  :roles => [:tenant]
