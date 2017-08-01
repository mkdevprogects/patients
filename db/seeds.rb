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
    {title: 'Сухость во рту', description: ''},
    {title: 'Горечь во рту', description: ''},
    {title: 'Сыпь', description: ''},
    {title: 'Потемнение в глазах', description: ''},
    {title: 'Апатия', description: ''},
    {title: 'Боль внизу живота', description: ''},
    {title: 'Носовое кровотечение', description: ''},
    {title: 'Неприятный запах изо рта', description: ''},
    {title: 'Чихание', description: ''},
    {title: 'Увеличение грудных желез', description: ''},
    {title: 'Потеря голоса', description: ''},
    {title: 'Слюна с кровью', description: ''},
    {title: 'Отеки ступней', description: ''},
    {title: 'Зудящая сыпь', description: ''},
    {title: 'Тяжесть в груди', description: ''},
    {title: 'Анальный зуд', description: ''},
    {title: 'Атрофия кожи', description: ''},
    {title: 'Беспокойство', description: ''},
    {title: 'Амнезия', description: ''},
    {title: 'Боль в груди', description: ''},
    {title: 'Боль в области половых органов', description: ''},
    {title: 'Волдыри', description: ''},
    {title: 'Вздутие живота', description: ''},
    {title: 'Воспаленные гланды', description: ''},
    {title: 'Выраженная мышечная слабость', description: ''},
    {title: 'Выпадение волос', description: ''},
    {title: 'Высыпания в виде пузырьков', description: ''},
    {title: 'Газы', description: ''},
    {title: 'Галлюцинации', description: ''},
    {title: 'Головокружение', description: ''},
    {title: 'Депрессия', description: ''},
    {title: 'Диарея', description: ''},
    {title: 'Жажда', description: ''},
    {title: 'Жар', description: ''},
    {title: 'Запор', description: ''},
    {title: 'Изжога', description: ''},
    {title: 'Икота', description: ''},
    {title: 'Изменение цвета ногтей', description: ''},
    {title: 'Кашель', description: ''},
    {title: 'Кашель с кровью', description: ''},
    {title: 'Насморк', description: ''},
    {title: 'Одышка', description: ''},
    {title: 'Ожирение', description: ''},
    {title: 'Охриплость голоса', description: ''},
    {title: 'Рвота', description: ''},
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

diseases = [
    {
        title: 'Холера неуточненная',
        icd_code: 'A00.9',
        symptoms: [Symptom.find(1), Symptom.find(2)],
        specializations: [Specialization.find_by_code('therap'), Specialization.find_by_code('pediatr')],
    },
    {
        title: 'Сифилис сердечно-сосудистой системы',
        icd_code: 'A52.0+',
        symptoms: [Symptom.find(11), Symptom.find(20)],
        specializations: [Specialization.find_by_code('therap'), Specialization.find_by_code('gynecolog')]
    },
    {
        title: 'Нейросифилис с симптомами', description: '',
        icd_code: 'A52.1',
        symptoms: [Symptom.find(12), Symptom.find(21)],
        specializations: [Specialization.find_by_code('gynecolog')]
    },
    {
        title: 'Гонококковая инфекция аноректальной области',
        icd_code: 'A54.6',
        symptoms: [Symptom.find(13), Symptom.find(22)],
        specializations: [Specialization.find_by_code('gynecolog')]
    },
    {
        title: 'Пятнистая лихорадка, вызываемая Rickettsia siberica',
        icd_code: 'A77.2',
        symptoms: [Symptom.find(14), Symptom.find(23)],
        specializations: [Specialization.find_by_code('therap'), Specialization.find_by_code('pediatr')]
    },
    {
        title: 'Тиф, вызываемый Rickettsia tsutsugamushi',
        icd_code: 'A75.3',
        symptoms: [Symptom.find(15), Symptom.find(24)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Психическое расстройство без дополнительных уточнений',
        icd_code: 'F99',
        symptoms: [Symptom.find(16), Symptom.find(25)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Фобические тревожные расстройства',
        icd_code: 'F40',
        symptoms: [Symptom.find(17), Symptom.find(26)],
        specializations: [Specialization.find_by_code('psycholog')]
    },
    {
        title: 'Диссоциативные конвульсии', description: '',
        icd_code: 'F44.5',
        symptoms: [Symptom.find(18), Symptom.find(27)],
        specializations: [Specialization.find_by_code('psycholog')]
    },
    {
        title: 'Транс и одержимость', description: '',
        icd_code: 'F44.3',
        symptoms: [Symptom.find(19), Symptom.find(28)],
        specializations: [Specialization.find_by_code('psycholog')]
    },
    {
        title: 'Диссоциативная амнезия', description: '',
        icd_code: 'F44.0',
        symptoms: [Symptom.find(30), Symptom.find(29)],
        specializations: [Specialization.find_by_code('psycholog')]
    },
    {
        title: 'Глазная боль', description: '',
        icd_code: 'H57.1',
        symptoms: [Symptom.find(31), Symptom.find(32)],
        specializations: [Specialization.find_by_code('ophthalmolog')]
    },
    {
        title: 'Старческая катаракта', description: '',
        icd_code: 'H25',
        symptoms: [Symptom.find(41), Symptom.find(33)],
        specializations: [Specialization.find_by_code('ophthalmolog')]
    },
    {
        title: 'Глаукома', description: '',
        icd_code: 'H40',
        symptoms: [Symptom.find(34), Symptom.find(42)],
        specializations: [Specialization.find_by_code('ophthalmolog')]
    },
    {
        title: 'Идиопатическая гипотензия',
        icd_code: 'I95.0',
        symptoms: [Symptom.find(35), Symptom.find(36)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')]
    },
    {
        title: 'Стенокардия неуточненная',
        icd_code: 'I20.9',
        symptoms: [Symptom.find(37), Symptom.find(38)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')]
    },
    {
        title: 'Другие формы хронической ишемической болезни сердца',
        icd_code: 'I25.8',
        symptoms: [Symptom.find(39), Symptom.find(40)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')]
    },
    {
        title: 'Острый субэндокардиальный инфаркт миокарда',
        icd_code: 'I21.4',
        symptoms: [Symptom.find(3), Symptom.find(41)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')]
    },
    {
        title: 'Тромбоз портальной вены',
        icd_code: 'I81',
        symptoms: [Symptom.find(4), Symptom.find(43)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')]
    },
    {
        title: 'Генерализованный и неуточненный атеросклероз',
        icd_code: 'I70.9',
        symptoms: [Symptom.find(5), Symptom.find(44)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')]
    },
    {
        title: 'Болезни перикарда неуточненные',
        icd_code: 'I31.9',
        symptoms: [Symptom.find(6), Symptom.find(45)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')]
    },
    {
        title: 'Ревматическая лихорадка без упоминания о вовлечении сердца',
        icd_code: 'I00',
        symptoms: [Symptom.find(7), Symptom.find(46)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')]
    },
    {
        title: 'Митральный стеноз',
        icd_code: 'I05.',
        symptoms: [Symptom.find(8), Symptom.find(47)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')]
    },
    {
        title: 'Грипп с пневмонией, вирус не идентифицирован',
        icd_code: 'J11.0',
        symptoms: [Symptom.find(9), Symptom.find(48)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Грипп с другими респираторными проявлениями, вирус не идентифицирован',
        icd_code: 'J11.1',
        symptoms: [Symptom.find(1), Symptom.find(49)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Пневмония неуточненная', description: '',
        icd_code: 'J18.9',
        symptoms: [Symptom.find(4), Symptom.find(50)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Пневмония, вызванная Streptococcus pneumoniae',
        icd_code: 'J13',
        symptoms: [Symptom.find(28), Symptom.find(36)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Грипп с пневмонией, вирус гриппа идентифицирован',
        icd_code: 'J10.0',
        symptoms: [Symptom.find(8), Symptom.find(3)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Острая инфекция верхних дыхательных путей неуточненная',
        icd_code: 'J06.9',
        symptoms: [Symptom.find(6), Symptom.find(2)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Острый фарингит, вызванный другими уточненными возбудителями',
        icd_code: 'J02.8',
        symptoms: [Symptom.find(17), Symptom.find(38)],
        specializations: [Specialization.find_by_code('otolaryngolog')]
    },
    {
        title: 'Другой острый синусит',
        icd_code: 'J01.8',
        symptoms: [Symptom.find(1), Symptom.find(48)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Стрептококковый тонзиллит',
        icd_code: 'J03.0',
        symptoms: [Symptom.find(2), Symptom.find(39)],
        specializations: [Specialization.find_by_code('otolaryngolog')]
    },
    {
        title: 'Острый тонзиллит, вызванный другими уточненными возбудителями',
        icd_code: 'J03.8',
        symptoms: [Symptom.find(3), Symptom.find(21)],
        specializations: [Specialization.find_by_code('otolaryngolog')]
    },
    {
        title: 'Другие острые инфекции верхних дыхательных путей множественной локализации',
        icd_code: 'J06.8',
        symptoms: [Symptom.find(4), Symptom.find(28)],
        specializations: [Specialization.find_by_code('otolaryngolog')]
    },
    {
        title: 'Пневмокониоз неуточненный',
        icd_code: 'J64',
        symptoms: [Symptom.find(5), Symptom.find(2)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Каннабиноз',
        icd_code: 'J66.2',
        symptoms: [Symptom.find(6), Symptom.find(24)],
        specializations: [Specialization.find_by_code('allerg')]
    },
    {
        title: 'Болезнь дыхательных путей, вызванная другой уточненной органической пылью',
        icd_code: 'J66.8',
        symptoms: [Symptom.find(7), Symptom.find(23)],
        specializations: [Specialization.find_by_code('allerg')]
    },
    {
        title: 'Атопический дерматит неуточненный',
        icd_code: 'L20.9',
        symptoms: [Symptom.find(8), Symptom.find(27)],
        specializations: [Specialization.find_by_code('allerg')]
    },
    {
        title: 'Аллергический контактный дерматит, вызванный металлами',
        icd_code: 'L23.0',
        symptoms: [Symptom.find(9), Symptom.find(25)],
        specializations: [Specialization.find_by_code('allerg')]
    },
    {
        title: 'Аллергический контактный дерматит, вызванный клейкими веществами',
        icd_code: 'L23.1',
        symptoms: [Symptom.find(10), Symptom.find(12)],
        specializations: [Specialization.find_by_code('allerg')]
    },
    {
        title: 'Аллергический контактный дерматит, вызванный лекарственными средствами при их контакте с кожей',
        icd_code: 'L23.3',
        symptoms: [Symptom.find(33), Symptom.find(29)],
        specializations: [Specialization.find_by_code('allerg')]
    },
    {
        title: 'Аллергический контактный дерматит, причина не уточнена',
        icd_code: 'L23.9',
        symptoms: [Symptom.find(41), Symptom.find(30)],
        specializations: [Specialization.find_by_code('allerg')]
    },
    {
        title: 'Аллергический контактный дерматит, вызванный пищевыми продуктами при их контакте с кожей',
        icd_code: 'L23.6',
        symptoms: [Symptom.find(2), Symptom.find(12)],
        specializations: [Specialization.find_by_code('allerg')]
    },
    {
        title: 'Зуд неуточненный',
        icd_code: 'L29.9',
        symptoms: [Symptom.find(3), Symptom.find(18)],
        specializations: [Specialization.find_by_code('allerg')]
    },
    {
        title: 'Алкогольная печеночная недостаточность',
        icd_code: 'K70.4',
        symptoms: [Symptom.find(34), Symptom.find(19)],
        specializations: [Specialization.find_by_code('rheumatolog')]
    },
    {
        title: 'Алкогольный фиброз и склероз печени',
        icd_code: 'K70.2',
        symptoms: [Symptom.find(35), Symptom.find(20)],
        specializations: [Specialization.find_by_code('rheumatolog')]
    },
    {
        title: 'Алкогольный цирроз печени',
        icd_code: 'K70.3',
        symptoms: [Symptom.find(37), Symptom.find(11)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Односторонняя или неуточненная паховая грыжа с непроходимостью без гангрены',
        icd_code: 'K40.3',
        symptoms: [Symptom.find(39), Symptom.find(12)],
        specializations: [Specialization.find_by_code('phlebolog')]
    },
    {
        title: 'Односторонняя или неуточненная бедренная грыжа без непроходимости или гангрены',
        icd_code: 'K41.9',
        symptoms: [Symptom.find(8), Symptom.find(17)],
        specializations: [Specialization.find_by_code('phlebolog')]
    },
    {
        title: 'Пупочная грыжа без непроходимости или гангрены',
        icd_code: 'K42.9',
        symptoms: [Symptom.find(19), Symptom.find(23)],
        specializations: [Specialization.find_by_code('phlebolog')]
    },
    {
        title: 'Грыжа передней брюшной стенки без непроходимости или гангрены',
        icd_code: 'K43.9',
        symptoms: [Symptom.find(17), Symptom.find(3)],
        specializations: [Specialization.find_by_code('phlebolog')]
    },
    {
        title: 'Кариес эмали',
        icd_code: 'K02.0',
        symptoms: [Symptom.find(11), Symptom.find(27)],
        specializations: [Specialization.find_by_code('dent')],
    },
    {
        title: 'Кариес дентина',
        icd_code: 'K02.1',
        symptoms: [Symptom.find(12), Symptom.find(26)],
        specializations: [Specialization.find_by_code('dent')],
    },
    {
        title: 'Другой кариес зубов',
        icd_code: 'K02.8',
        symptoms: [Symptom.find(13), Symptom.find(25)],
        specializations: [Specialization.find_by_code('dent')],
    },
    {
        title: 'Брюшинные спайки',
        icd_code: 'K66.0',
        symptoms: [Symptom.find(14), Symptom.find(24)],
        specializations: [Specialization.find_by_code('phlebolog')]
    },
    {
        title: 'Язва кишечника',
        icd_code: 'K63.3',
        symptoms: [Symptom.find(15), Symptom.find(23)],
        specializations: [Specialization.find_by_code('phlebolog')]
    },
    {
        title: 'Синдром раздраженного кишечника с диареей',
        icd_code: 'K58.0',
        symptoms: [Symptom.find(16), Symptom.find(22)],
        specializations: [Specialization.find_by_code('phlebolog')]
    },
    {
        title: 'Синдром раздраженного кишечника без диареи',
        icd_code: 'K58.9',
        symptoms: [Symptom.find(49), Symptom.find(21)],
        specializations: [Specialization.find_by_code('phlebolog')]
    },
    {
        title: 'Выпадение заднего прохода',
        icd_code: 'K62.2',
        symptoms: [Symptom.find(18), Symptom.find(28)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Болезнь заднего прохода и прямой кишки неуточненная',
        icd_code: 'K62.9',
        symptoms: [Symptom.find(17), Symptom.find(29)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Острая трещина заднего прохода',
        icd_code: 'K60.0',
        symptoms: [Symptom.find(16), Symptom.find(2)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Хроническая трещина заднего прохода',
        icd_code: 'K60.1',
        symptoms: [Symptom.find(15), Symptom.find(18)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Травма черепного нерва неуточненного',
        icd_code: 'S04.9',
        symptoms: [Symptom.find(14), Symptom.find(14)],
        specializations: [Specialization.find_by_code('surg')]
    },
    {
        title: 'Размозжение лица',
        icd_code: 'S07.0',
        symptoms: [Symptom.find(13), Symptom.find(2)],
        specializations: [Specialization.find_by_code('surg')]
    },
    {
        title: 'Размозжение черепа',
        icd_code: 'S07.1',
        symptoms: [Symptom.find(12), Symptom.find(21)],
        specializations: [Specialization.find_by_code('surg')]
    },
    {
        title: 'Вывих шейного позвонка',
        icd_code: 'S13.1',
        symptoms: [Symptom.find(10), Symptom.find(22)],
        specializations: [Specialization.find_by_code('surg')]
    },
    {
        title: 'Перелом неуточненной части костей предплечья',
        icd_code: 'S52.9',
        symptoms: [Symptom.find(10), Symptom.find(22)],
        specializations: [Specialization.find_by_code('surg')]
    },
    {
        title: 'Травма собственной мышцы и сухожилия другого пальца на уровне запястья и кисти',
        icd_code: 'S66.5',
        symptoms: [Symptom.find(19), Symptom.find(38)],
        specializations: [Specialization.find_by_code('therap')]
    },
    {
        title: 'Термические ожоги нескольких областей тела с указанием хотя бы на один ожог третьей степени',
        icd_code: 'T29.3',
        symptoms: [Symptom.find(14), Symptom.find(3)] ,
        specializations: [Specialization.find_by_code('surg'), Specialization.find_by_code('neuropatholog')]
    },
    {
        title: 'Поверхностное отморожение колена и голени',
        icd_code: 'T33.7',
        symptoms: [Symptom.find(6), Symptom.find(2)],
        specializations: [Specialization.find_by_code('surg'),
                          Specialization.find_by_code('podiatr'),
                          Specialization.find_by_code('orthoped')]
    },
]

diseases.each do |params|
  Disease.create!(params)
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
