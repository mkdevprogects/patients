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
doctors = [
    {name: 'Натаван', surname: 'Альтшулер', patronymic: 'Ивановна', phone: '21111111111', email: 'doctor.1.@doctor.com',
    clinics: [Clinic.first, Clinic.find(5)],
     specializations: [Specialization.find_by_code('therap')]},
    {name: 'София', surname: 'Бугайченко', patronymic: 'Сергеевна', phone: '21111111112', email: 'doctor.2.@doctor.com',
     clinics: [Clinic.find(1), Clinic.last],
     specializations: [Specialization.find_by_code('pediatr')]},
    {name: 'Олег', surname: 'Макаров', patronymic: 'Викторович', phone: '21111111113', email: 'doctor.3.@doctor.com',
     clinics: [Clinic.find(2)],
     specializations: [Specialization.find_by_code('surg'), Specialization.find_by_code('neuropatholog')]},
    {name: 'Перване', surname: 'Алексерова', patronymic: 'Игоревна', phone: '21111111114', email: 'doctor.4.@doctor.com',
     clinics: [Clinic.find(3)],
     specializations: [Specialization.find_by_code('podiatr'), Specialization.find_by_code('orthoped')]},
    {name: 'Whalter', surname: 'White', patronymic: 'Testovich', phone: '21111111115', email: 'doctor.5.@doctor.com',
     clinics: [Clinic.find(4), Clinic.find(2), Clinic.find(3)],
     specializations: [Specialization.find_by_code('therap'), Specialization.find_by_code('pediatr')]}
]

grades = [
    'Врач второй категории', 'Врач высшей категории',
    'Врач первой катгории', 'Доктор медицинских наук',
    'Кандидат медицинских наук', 'Профессор',
]

doctors.each do |params|
  Doctor.create!(params).doctor_specializations.each do |spec|
    spec.update(grade: grades.shuffle.first)
  end
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



