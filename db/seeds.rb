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
admin.activation_state = 'active'
admin.save

# testapn = Apn.new
# testapn.apn_name = "test.apn"
# testapn.rogers_apn_id = "200"
# testapn.fido_apn_id = "5200"
# testapn.msd_code = "TESTMSD"
# testapn.static_ip = false
# testapn.control_center = true
# testapn.control_center_account_id = "123456"
# testapn.contacts.first_name = "Test"
# testapn.contacts.last_name = "User"
# testapn.contacts.company_name = "Test Company"
# testapn.contacts.street_address = "123 ABC ST."
# testapn.contacts.city = "Toronto"
# testapn.contacts.country = "Canada"
# testapn.contacts.email = "test@email.com"
# testapn.contacts.phone_number1 = "4169231234"
# testapn.contacts.technical_contact = true
# testapn.contacts.business_contact = true
# testapn.primary_dns = "8.8.8.8"
# testapn.secondary_dns = "9.9.9.9"
# testapn.project_number = "1111-111"
# testapn.project_name = "This is a test APN"
# testapn.redundancy_type = "1 GGSN/SSR, 1 Egress Point, GRE, Static Source Routing"
# testapn.m2m_communications = "Mobile to Mobile Communication is Denied (Default)"
# testapn.radius_jasper_proxy_filter = "Default: Forward Radius traffic to Control Centre based on Jasper dedicated IMSIs only"
# testapn.nodes.ssr_location = "Toronto"
# testapn.nodes.tunnels.nat_server_ip = "Not Required"
# testapn.nodes.tunnels.customer_vpn_ip = "1.2.3.4"
# testapn.nodes.tunnels.customer_server_ip = "2.3.4.5"
# testapn.nodes.tunnels.rogers_vpn_ip = "3.3.3.3"
# testapn.nodes.tunnels.rogers_mobile_ip = "192.168.0.1/24"
# testapn.nodes.tunnels.rogers_gre_tunnel_ip = "74.198.64.254"
# testapn.nodes.tunnels.customer_gre_tunnel_ip = "2.3.4.5"
# testapn.nodes.tunnels.rogers_vpn_device_desc = "Toronto"
# testapn.nodes.tunnels.customer_vpn_device_desc = "Somewhere"
# testapn.nodes.tunnels.rogers_vpn_device_version = "1.2.3"
# testapn.nodes.tunnels.customer_vpn_device_version = "2.3.4"
# testapn.nodes.tunnels.rogers_encryption_domain = "10.1.1.1/24"
# testapn.nodes.tunnels.customer_encryption_domain = "10.2.1.1/24"
# testapn.nodes.tunnels.tunnel_rules.rogers_source_ip = "1.1.1.1"
# testapn.nodes.tunnels.tunnel_rules.customer_source_ip = '2.2.2.2'
# testapn.save