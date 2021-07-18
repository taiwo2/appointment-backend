# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.create(name: 'Dr John Doe', qualification: 'MBBS, MS', experience: '6 Years', image: 'https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg')
Doctor.create(name: 'Dr Habeeb Yusuf', qualification: 'MBBS, MD', experience: '10 Years', image: 'https://image.freepik.com/free-vector/doctor-pointing-clipboard_23-2147793153.jpg')
Doctor.create(name: 'Dr fatimah', qualification: 'MCH, MS', experience: '8 Years', image: 'https://img.freepik.com/free-vector/doctor-pointing-clipboard_23-2147795772.jpg')
Doctor.create(name: 'Dr Aishat badro', qualification: 'MBBS', experience: '3 Years', image: 'https://image.freepik.com/free-vector/happy-doctor-with-clipboard_23-2147798688.jpg')
Doctor.create(name: 'Dr Farooq ahmed', qualification: 'BDS', experience: '11 Years', image: 'https://image.freepik.com/free-vector/smiley-doctor-with-clipboard-stethoscope_23-2147657761.jpg')
Doctor.create(name: 'Dr Haleemah Kehiinde', qualification: 'Radiologist', experience: '5 Years', image: 'https://image.freepik.com/free-vector/therapist-physician-doctor_82574-5381.jpg')
Doctor.create(name: 'Dr Adekunle', qualification: 'MBBS, MS(Gyne.)', experience: '12 Years', image: 'https://img.freepik.com/free-vector/smiley-female-doctor-with-clipboard-stethoscope_23-2147657762.jpg')
Doctor.create(name: 'Dr Sehu garba', qualification: 'MBBS, MD', experience: '8 Years', image: 'https://image.freepik.com/free-vector/female-doctor-pointing-clipboard_23-2147791255.jpg')

# 10.times do
#   user = User.create! name: Faker::Name.unique.name, email: Faker::Internet.unique.email, password: "secret_password", password_confirmation: "secret_password"
#   doctor = Doctor.create! name: Faker::Name.unique.name
#   appointment = Appointment.create! user: user, doctor: doctor, appointment_date: Faker::Date.between(from: '2014-09-23', to: '2014-09-25')
# end 

