# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(first_name: 'Frank', last_name: 'Patrick', username: 'frankz.p', email: 'frank.etoundi@gmail.com', password: 'password1234', date_of_birth: '1990-12-10', gender: 'Male', phone: '0741233456', address_line: "xyz xyz xyz")
User.create!(first_name: 'John', last_name: 'Doe', username: 'john.doe', email: 'john@mail.com', password: 'password1234', date_of_birth: '1990-12-10', gender: 'Male', phone: '121212121', address_line: "zyx zyx zyx")
User.create!(first_name: 'Aldo', last_name: 'Moro', username: 'aldoz.m', email: 'aldo@mail.com', password: 'password1234', date_of_birth: '1990-12-10', gender: 'Male', phone: '131313131', address_line: "zyx zyx zyx")
User.create!(first_name: 'Paul', last_name: 'Biya', username: 'paula.b', email: 'paul@mail.com', password: 'password1234', date_of_birth: '1990-12-10', gender: 'Male', phone: '141414141', address_line: "zyx zyx zyx")
User.create!(first_name: 'Barack', last_name: 'Obama', username: 'barcdk.o', email: 'barack@mail.com', password: 'password1234', date_of_birth: '1990-12-10', gender: 'Male', phone: '151515151', address_line: "zyx zyx zyx")
User.create!(first_name: 'Jessica', last_name: 'Alba', username: 'jess.aflb', email: 'jess@mail.com', password: 'password1234', date_of_birth: '1990-12-10', gender: 'female', phone: '161616161', address_line: "zyx zyx zyx")
User.create!(first_name: 'Jessy', last_name: 'Fokoua', username: 'jess.af', email: 'jessy@mail.com', password: 'password1234', date_of_birth: '1990-12-10', gender: 'female', phone: '111111111', address_line: "xyz xyz xyz")
User.create!(first_name: 'Allpohon', last_name: 'Will', username: 'all.wihll', email: 'allpholon@mail.com', password: 'password1234', date_of_birth: '1990-12-10', gender: 'Male', phone: '121212121', address_line: "zyx zyx zyx")

CourseCategory.create!(cc_name: 'Art & Litterature Courses')
CourseCategory.create!(cc_name: 'Science Courses')

Period.create!(start_time: '2000-01-01T08:00:00.000Z', end_time: '2000-01-01T09:00:00.000Z', weekday: '2015-05-01', period_title: '1st Period' )
Period.create!(start_time: '2000-01-01T09:00:00.000Z', end_time: '2000-01-01T10:00:00.000Z', weekday: '2015-05-01', period_title: '2n Period' )
Period.create!(start_time: '2000-01-01T10:00:00.000Z', end_time: '2000-01-01T11:00:00.000Z', weekday: '2015-05-01', period_title: '3rd Period' )

Group.create!(group_name: 'Premiere C', group_code: '1ere C')
Group.create!(group_name: 'Terminale D', group_code: 'Tle D')
Group.create!(group_name: 'Sixieme A', group_code: '6e A')
Group.create!(group_name: 'Troisieme Esp', group_code: '3e E')

Course.create!(course_name: 'History', course_code: 'Hist-P', group_id:'1', course_category_id: '1')
Course.create!(course_name: 'Physics', course_code: 'Phy-T', group_id:'2', course_category_id: '2')
Course.create!(course_name: 'Maths', course_code: 'Math-6', group_id:'3', course_category_id: '2')
Course.create!(course_name: 'French', course_code: 'Fr-3', group_id:'4', course_category_id: '1')

Student.create!(first_name: 'Ariane', last_name: 'Elisa', username: 'arianas.e', date_of_birth: '2000-12-10', gender: 'Female', group_id: '1', enrollment_date: '2015-03-25')
Student.create!(first_name: 'Serena', last_name: 'Anouchka', username: 'seraaena.a', date_of_birth: '2005-12-10', gender: 'Female', group_id: '1', enrollment_date: '2015-03-25')
Student.create!(first_name: 'Cynthia', last_name: 'Carell', username: 'cynthiia.c', date_of_birth: '2000-12-10', gender: 'Female', group_id: '2', enrollment_date: '2015-03-25')
Student.create!(first_name: 'Yvana', last_name: 'Marcelle', username: 'yvaaana.m', date_of_birth: '1990-12-10', gender: 'Female', group_id: '2', enrollment_date: '2015-03-25')
Student.create!(first_name: 'Ines', last_name: 'Kenisha', username: 'inees.k', date_of_birth: '1990-12-10', gender: 'Female', group_id: '3', enrollment_date: '2015-03-25')
Student.create!(first_name: 'Claude', last_name: 'Adolph', username: 'claudae.a', date_of_birth: '1990-12-10', gender: 'Male', group_id: '3', enrollment_date: '2015-03-25')
Student.create!(first_name: 'Vanessa', last_name: 'Oleig', username: 'van.olfed', date_of_birth: '1990-12-10', gender: 'Female', group_id: '4', enrollment_date: '2015-03-25')
Student.create!(first_name: 'Elisa', last_name: 'Marie', username: 'elisaad.m', date_of_birth: '1990-12-10', gender: 'Female', group_id: '4', enrollment_date: '2015-03-25')

Guardian.create!(first_name: 'Paulo', last_name: 'Maldini', phone: '0741233456')
Guardian.create!(first_name: 'Nelson', last_name: 'Dida', phone: '07425754766')
Guardian.create!(first_name: 'Zinedine', last_name: 'Zidane', phone: '0747644336')
Guardian.create!(first_name: 'Andrea', last_name: 'Pirlo', phone: '0701587856')
Guardian.create!(first_name: 'Monica', last_name: 'Belucci', phone: '07974245966')
Guardian.create!(first_name: 'Halle', last_name: 'Berry', phone: '07014774533')
Guardian.create!(first_name: 'Lauren', last_name: 'Baccall', phone: '07004001577')


