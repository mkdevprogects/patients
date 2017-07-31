specializations = [
    {title: 'Терапевт', code: 'therap'}, {title: 'Педиатр', code: 'pediatr'},
    {title: 'Отоларинголог', code: 'otolaryngolog'}, {title: 'Хирург', code: 'surg'},
    {title: 'Невропатолог', code: 'neuropatholog'}, {title: 'Психолог', code: 'psycholog'},
    {title: 'Ревматолог', code: 'rheumatolog'}, {title: 'Аллерголог', code: 'allerg'},
    {title: 'Кардиолог', code: 'cardio'}, {title: 'Стоматолог', code: 'dent'},
    {title: 'Подиатр', code: 'podiatr'}, {title: 'Ортопед', code: 'orthoped'},
    {title: 'Офтальмолог', code: 'ophthalmolog'}, {title: 'Гинеколог', code: 'gynecolog'},
    {title: 'Андролог', code: 'androlog'}, {title: 'Флеболог', code: 'phlebolog'}
]

specializations.each do |params|
  Specialization.create!(params)
end

symptoms = [
    {title: 'Головная боль', description: 'Описание 11111'},
    {title: 'Тошнота', description: 'Описание 22222'},
    {title: 'Учащенное сердцебиение', description: 'Описание 33333'},
    {title: 'Отдышка', description: 'Описание 44444'},
    {title: 'Выделения из носа', description: 'Описание 555555'},
]

symptoms.each do |params|
  Symptom.create!(params)
end

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

grades = [
    {title: 'Врач второй категории'}, {title: 'Врач высшей категории'},
    {title: 'Врач первой категории'}, {title: 'Доктор медицинских наук'},
    {title: 'Кандидат медицинских наук'}, {title: 'Профессор'}
]

grades.each do |params|
  Grade.create!(params)
end

doctors = [
    {name: 'Натаван', surname: 'Альтшулер', patronymic: 'Ивановна',
     phone: '21111111111', email: 'doctor.1.@doctor.com',
    clinics: [Clinic.first, Clinic.find(5)],
     specializations: [Specialization.find_by_code('therap')],
     grades: [Grade.find(1)]},
    {name: 'София', surname: 'Бугайченко', patronymic: 'Сергеевна',
     phone: '21111111112', email: 'doctor.2.@doctor.com',
     clinics: [Clinic.find(1), Clinic.last],
     specializations: [Specialization.find_by_code('pediatr')],
     grades: [Grade.find(2)]},
    {name: 'Олег', surname: 'Макаров', patronymic: 'Викторович',
     phone: '21111111113', email: 'doctor.3.@doctor.com',
     clinics: [Clinic.find(2)],
     specializations: [Specialization.find_by_code('surg'), Specialization.find_by_code('neuropatholog')],
     grades: [Grade.find(5)]},
    {name: 'Перване', surname: 'Алексерова', patronymic: 'Игоревна',
     phone: '21111111114', email: 'doctor.4.@doctor.com',
     clinics: [Clinic.find(3)],
     specializations: [Specialization.find_by_code('podiatr'), Specialization.find_by_code('orthoped')],
     grades: [Grade.find(4)]},
    {name: 'Whalter', surname: 'White', patronymic: 'Testovich',
     phone: '21111111115', email: 'doctor.5.@doctor.com',
     clinics: [Clinic.find(4), Clinic.find(2), Clinic.find(3)],
     specializations: [Specialization.find_by_code('therap'), Specialization.find_by_code('pediatr')],
     grades: [Grade.find(3), Grade.find(6)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '21111111116', email: 'doctor.6.@doctor.com',
     clinics: [Clinic.find(4), Clinic.find(2), Clinic.find(3)],
     specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')],
     grades: [Grade.find(2), Grade.find(6)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '21111111117', email: 'doctor.7.@doctor.com',
     clinics: [Clinic.find(1), Clinic.find(2)],
     specializations: [Specialization.find_by_code('surg')],
     grades: [Grade.find(2)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '21111111118', email: 'doctor.8.@doctor.com',
     clinics: [Clinic.find(4), Clinic.find(2), Clinic.find(3)],
     specializations: [Specialization.find_by_code('gynecolog')],
     grades: [Grade.find(2), Grade.find(6)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '21111111119', email: 'doctor.9.@doctor.com',
     clinics: [Clinic.find(2)],
     specializations: [Specialization.find_by_code('dent')],
     grades: [Grade.find(5)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111110', email: 'doctor.10.@doctor.com',
     clinics: [Clinic.find(1)],
     specializations: [Specialization.find_by_code('dent')],
     grades: [Grade.find(4)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111111', email: 'doctor.11.@doctor.com',
     clinics: [Clinic.find(3)],
     specializations: [Specialization.find_by_code('gynecolog')],
     grades: [Grade.find(2)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111112', email: 'doctor.12.@doctor.com',
     clinics: [Clinic.find(1)],
     specializations: [Specialization.find_by_code('dent')],
     grades: [Grade.find(3)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111113', email: 'doctor.13.@doctor.com',
     clinics: [Clinic.find(5), Clinic.find(7)],
     specializations: [Specialization.find_by_code('gynecolog')],
     grades: [Grade.find(4)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111114', email: 'doctor.14.@doctor.com',
     clinics: [Clinic.find(4), Clinic.find(2)],
     specializations: [Specialization.find_by_code('dent')],
     grades: [Grade.find(2)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111115', email: 'doctor.15.@doctor.com',
     clinics: [Clinic.find(5), Clinic.find(3)],
     specializations: [Specialization.find_by_code('otolaryngolog')],
     grades: [Grade.find(2)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111116', email: 'doctor.16.@doctor.com',
     clinics: [Clinic.find(7)],
     specializations: [Specialization.find_by_code('allerg')],
     grades: [Grade.find(1)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111117', email: 'doctor.17.@doctor.com',
     clinics: [Clinic.find(6), Clinic.find(7)],
     specializations: [Specialization.find_by_code('pediatr')],
     grades: [Grade.find(3)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111118', email: 'doctor.18.@doctor.com',
     clinics: [Clinic.find(6)],
     specializations: [Specialization.find_by_code('therap')],
     grades: [Grade.find(6)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111119', email: 'doctor.19.@doctor.com',
     clinics: [Clinic.find(4)],
     specializations: [Specialization.find_by_code('cardio')],
     grades: [Grade.find(2)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111120', email: 'doctor.20.@doctor.com',
     clinics: [Clinic.find(2)],
     specializations: [Specialization.find_by_code('therap')],
     grades: [Grade.find(1)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111121', email: 'doctor.21.@doctor.com',
     clinics: [Clinic.find(5)],
     specializations: [Specialization.find_by_code('therap')],
     grades: [Grade.find(1)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111122', email: 'doctor.22.@doctor.com',
     clinics: [Clinic.find(6), Clinic.find(7)],
     specializations: [Specialization.find_by_code('neuropatholog')],
     grades: [Grade.find(3)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111123', email: 'doctor.23.@doctor.com',
     clinics: [Clinic.find(6)],
     specializations: [Specialization.find_by_code('rheumatolog')],
     grades: [Grade.find(6)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111124', email: 'doctor.24.@doctor.com',
     clinics: [Clinic.find(4)],
     specializations: [Specialization.find_by_code('ophthalmolog')],
     grades: [Grade.find(2)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111125', email: 'doctor.25.@doctor.com',
     clinics: [Clinic.find(1)],
     specializations: [Specialization.find_by_code('psycholog')],
     grades: [Grade.find(1)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111126', email: 'doctor.26.@doctor.com',
     clinics: [Clinic.find(7)],
     specializations: [Specialization.find_by_code('therap')],
     grades: [Grade.find(1)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111127', email: 'doctor.27.@doctor.com',
     clinics: [Clinic.find(3), Clinic.find(2)],
     specializations: [Specialization.find_by_code('phlebolog')],
     grades: [Grade.find(3)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111128', email: 'doctor.28.@doctor.com',
     clinics: [Clinic.find(6)],
     specializations: [Specialization.find_by_code('androlog')],
     grades: [Grade.find(6)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111129', email: 'doctor.29.@doctor.com',
     clinics: [Clinic.find(4)],
     specializations: [Specialization.find_by_code('phlebolog')],
     grades: [Grade.find(2)]},
    {name: Faker::StarTrek.character, surname: Faker::LordOfTheRings.character, patronymic: Faker::ElderScrolls.race,
     phone: '211111111130', email: 'doctor.30.@doctor.com',
     clinics: [Clinic.find(1)],
     specializations: [Specialization.find_by_code('androlog')],
     grades: [Grade.find(1)]}
]

doctors.each do |params|
  Doctor.create!(params)
end

patients = [
    {name: 'Илья', surname: 'Гордиенко', patronymic: 'Арсеньевич', phone: '11111111111', email: 'patient.1.@patient.com', password: '123123',
    doctors: [Doctor.first, Doctor.find(3), Doctor.last]},
    {name: 'Кирилл', surname: 'Семкин', patronymic: 'Сергеевич', phone: '11111111112', email: 'patient.2.@patient.com', password: '123123',
     doctors: [Doctor.find(1), Doctor.last]},
    {name: 'Олег', surname: 'Осташков', patronymic: 'Олегович', phone: '11111111113', email: 'patient.3.@patient.com', password: '123123',
     doctors: [Doctor.find(2), Doctor.last]},
    {name: 'Константин', surname: 'Жданов', patronymic: 'Александрович', phone: '11111111114', email: 'patient.4.@patient.com', password: '123123',
     doctors: [Doctor.find(3), Doctor.last]},
    {name: 'Роман', surname: 'Лапин', patronymic: 'Евгеньевич', phone: '11111111115', email: 'patient.5.@patient.com', password: '123123',
     doctors: [Doctor.find(2), Doctor.last]},
]

patients.each do |params|
  Patient.create!(params)
end
