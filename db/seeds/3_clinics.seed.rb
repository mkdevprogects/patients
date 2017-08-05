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
