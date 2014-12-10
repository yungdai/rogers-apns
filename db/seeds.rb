# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new
admin.first_name = 'Yung'
admin.last_name = 'Dai'
admin.email = 'yungchidai@gmail.com'
admin.company_name = 'Works for myself'
admin.street_address = '375 Berkeley St.'
admin.city = 'Toronto'
admin.province_state = 'Ontario'
admin.country = 'Canada'
admin.phone_number1 = '4169236673'
admin.phone_number2 = '4162946097'
admin.username = 'yungdai'
admin.password = '12345'
admin.administrator = true
admin.save
