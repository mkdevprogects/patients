patients = [
    {name: 'Илья', surname: 'Гордиенко', patronymic: 'Арсеньевич',
     phone: '11111111111', email: 'patient.1.@patient.com', password: '123123'},
    {name: 'Кирилл', surname: 'Семкин', patronymic: 'Сергеевич',
     phone: '11111111112', email: 'patient.2.@patient.com', password: '123123'},
    {name: 'Олег', surname: 'Осташков', patronymic: 'Олегович',
     phone: '11111111113', email: 'patient.3.@patient.com', password: '123123'},
    {name: 'Константин', surname: 'Жданов', patronymic: 'Александрович',
     phone: '11111111114', email: 'patient.4.@patient.com', password: '123123'},
    {name: 'Роман', surname: 'Лапин', patronymic: 'Евгеньевич',
     phone: '11111111115', email: 'patient.5.@patient.com', password: '123123'}
]

patients.each do |params|
  Patient.create!(params)
end
