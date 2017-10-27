clinics = [
    {
        title: 'Медлайн',
        phone: '1111111111',
        address: 'Невский просп., д. 2, Санкт-Петербург',
        email: 'clinic.1.@clinic.com',
        latitude: 59.937197,
        longitude: 30.312927
    },
    {
        title: 'АЦЗ',
        phone: '2222222222',
        address: 'ул. Широкая, д. 15, Москва',
        email: 'clinic.2.@clinic.com',
        latitude: 55.83737410000001,
        longitude: 37.2530661
    },
    {
        title: 'ЕМС',
        phone: '3333333333',
        address: 'ул. Щепкина, д. 25б Москва',
        email: 'clinic.3.@clinic.com',
        latitude: 55.7778263,
        longitude: 37.6287344
    },
    {
        title: 'Полимедика',
        phone: '444444444444',
        address: 'просп.Славы, д. 100, Белгород',
        email: 'clinic.4.@clinic.com',
        latitude: 50.5998019,
        longitude: 36.575649
    },
    {
        title: 'Аллегро',
        phone: '555555555555',
        address: 'наб. Калнала Грибоедова, д 25, Санкт-Петербург',
        email: 'clinic.5.@clinic.com',
        latitude: 59.93292650000001,
        longitude: 30.3249209
    },
    {
        title: 'МСЧ 125',
        phone: '555555555555',
        address: 'площадь Ленина, д. 2, Санкт-Петербург',
        email: 'clinic.6.@clinic.com',
        latitude: 59.95462,
        longitude: 30.354058
    },
    {
        title: 'РАМИ',
        phone: '4444444444',
        address: 'Лиговский просп., д. 10, Санкт-Петербург',
        email: 'clinic.7.@clinic.com',
        latitude: 59.93208949999999,
        longitude: 30.3621571
    },
]

clinics.each do |params|
  Clinic.create!(params)
end
