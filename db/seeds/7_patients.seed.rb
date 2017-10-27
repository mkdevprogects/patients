patients = [
    {
        name: 'Илья',
        surname: 'Гордиенко',
        patronymic: 'Арсеньевич',
        phone: '11111111111',
        email: 'patient.1.@patient.com',
        password: '123123',
        address: 'Мичуринский просп., д. 7, Москва',
        latitude: 55.7028203,
        longitude: 37.5099813
    },
    {
        name: 'Кирилл',
        surname: 'Семкин',
        patronymic: 'Сергеевич',
        phone: '11111111112',
        email: 'patient.2.@patient.com',
        password: '123123',
        address: 'Лесной просп., д. 10, Санкт-Петербург',
        latitude: 59.96471440000001,
        longitude: 30.3511009
    },
    {
        name: 'Олег',
        surname: 'Осташков',
        patronymic: 'Олегович',
        phone: '11111111113',
        email: 'patient.3.@patient.com',
        password: '123123',
        address: 'ул. Федора Абрамова, д. 20, Санкт-Петербург',
        latitude: 60.0813446,
        longitude: 30.3408908
    }
]

patients.each do |params|
  Patient.create!(params)
end
