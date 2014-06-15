# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new(:email => "admin@example.org", :password => "12345678", :name => "admin")
admin.save!

normal_user = User.new(:email => "user1@example.org", :password => "12345678", :name => "Normal user")
normal_user.save!

group = Group.create!(:title => "System Announcement", :user_id => admin.id)
group.save!
