# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

clinics = [
    {title: 'Медлайн', phone: '1111111111', address: 'Невский просп., д. 2', email: 'clinic.1.@clinic.com'},
    {title: 'АЦЗ', phone: '2222222222', address: 'ул. Широкая, д. 15', email: 'clinic.2.@clinic.com'},
    {title: 'ЕМС', phone: '3333333333', address: 'ул. Щепкина, д. 25', email: 'clinic.3.@clinic.com'},
    {title: 'Полимедика', phone: '444444444444', address: 'просп.Славы, д. 100', email: 'clinic.4.@clinic.com'},
    {title: 'Аллегро', phone: '555555555555', address: 'наб. Калнала Грибоедова, д 25', email: 'clinic.5.@clinic.com'},
    {title: 'МСЧ 125', phone: '555555555555', address: 'площадь Ленина, д. 2', email: 'clinic.6.@clinic.com'},
    {title: 'РАМИ', phone: '4444444444', address: 'Лиговский просп., д. 10', email: 'clinic.7.@clinic.com'},
]

clinics.each do |params|
  Clinic.create!(params)
end

patients = [
    {name: 'Илья', surname: 'Гордиенко', patronymic: 'Арсеньевич', phone: '11111111111', email: 'patient.1.@patient.com', password: '123123'},
    {name: 'Кирилл', surname: 'Семкин', patronymic: 'Сергеевич', phone: '11111111112', email: 'patient.2.@patient.com', password: '123123'},
    {name: 'Олег', surname: 'Осташков', patronymic: 'Олегович', phone: '11111111113', email: 'patient.3.@patient.com', password: '123123'},
    {name: 'Константин', surname: 'Жданов', patronymic: 'Александрович', phone: '11111111114', email: 'patient.4.@patient.com', password: '123123'},
    {name: 'Роман', surname: 'Лапин', patronymic: 'Евгеньевич', phone: '11111111115', email: 'patient.5.@patient.com', password: '123123'},
]

patients.each do |params|
  Patient.create!(params)
end

doctors = [
    {name: 'Натаван', surname: 'Альтшулер', patronymic: 'Ивановна', phone: '21111111111', email: 'doctor.1.@doctor.com'},
    {name: 'София', surname: 'Бугайченко', patronymic: 'Сергеевна', phone: '21111111112', email: 'doctor.2.@doctor.com'},
    {name: 'Олег', surname: 'Макаров', patronymic: 'Викторович', phone: '21111111113', email: 'doctor.3.@doctor.com'},
    {name: 'Перване', surname: 'Алексерова', patronymic: 'Игоревна', phone: '21111111114', email: 'doctor.4.@doctor.com'},
    {name: 'Whalter', surname: 'White', patronymic: 'Testovich', phone: '21111111115', email: 'doctor.5.@doctor.com'},
]

doctors.each do |params|
  Doctor.create!(params)
end