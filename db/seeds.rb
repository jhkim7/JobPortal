# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin.create(name: 'Richard Schaeffer', email: 'rgschaef@ncsu.edu', address: '315 SW 7 St', encrypted_password: 'password', created_at: '', updated_at: '')
Admin.create(name: 'Jeffrey Kim', email: 'rgschaef@ncsu.edu', address: 'Somewhere in Raleigh', encrypted_password: 'password', created_at: '', updated_at: '')

Employer.create(company: 'Citrix', name: 'Ronald McDonald', email: 'ronaldmcdonald@citrix.com', password:'password',created_at:'', updated_at:'')
Employer.create(company: 'Red Hat', name: 'The Hamburgler', email: 'thehamburgler@redhat.com', password:'password',created_at:'', updated_at:'')
Employer.create(company: 'Cisco', name: 'Grimace', email: 'grimace@citrix.com', password:'password', created_at:'', updated_at:'')
Employer.create(company: 'NetApp', name: 'Bert', email: 'bert@netapp.com', password:'password', created_at:'', updated_at:'')

Job.create(title: 'Web Developer', description:'Develop web applications.', tag:'web, developer, fun, awesome', created_at:'', updated_at:'')
Job.create(title: 'C++ Developer', description:'Develop in C++', tag:'web, developer, fun, difficult', created_at:'', updated_at:'')
Job.create(title: 'Ruby Developer', description:'Who would want this job?', tag:'web, developer, fun, awesome', created_at:'', updated_at:'')
Job.create(title: 'Taxi Driver', description:'Drive car, defend self from hobos', tag:'cars, driving, money, stuff', created_at:'', updated_at:'')
Job.create(title: 'Bartender', description:'Serve drinks, defend self from hobos', tag:'alcohol, bums', created_at:'', updated_at:'')
Job.create(title: 'Line cook', description:'Flip burgers', tag:'food, burgers', created_at:'', updated_at:'')




