Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

symptoms = [
    {title: 'Головная боль', description: 'Описание 11111'},
    {title: 'Тошнота', description: 'Описание 22222'},
    {title: 'Учащенное сердцебиение', description: 'Описание 33333'},
    {title: 'Отдышка', description: 'Описание 44444'},
    {title: 'Выделения из носа', description: 'Описание 555555'},
    {title: 'Сухость во рту', description: Faker::WorldOfWarcraft.quote },
    {title: 'Горечь во рту', description: Faker::Matz.quote},
    {title: 'Сыпь', description: ''},
    {title: 'Потемнение в глазах', description: Faker::WorldOfWarcraft.quote },
    {title: 'Апатия', description: ''},
    {title: 'Боль внизу живота', description: Faker::Matz.quote},
    {title: 'Носовое кровотечение', description: ''},
    {title: 'Неприятный запах изо рта', description: Faker::WorldOfWarcraft.quote },
    {title: 'Чихание', description: ''},
    {title: 'Увеличение грудных желез', description: Faker::Matz.quote},
    {title: 'Потеря голоса', description: ''},
    {title: 'Слюна с кровью', description: Faker::WorldOfWarcraft.quote },
    {title: 'Отеки ступней', description: ''},
    {title: 'Зудящая сыпь', description: Faker::WorldOfWarcraft.quote },
    {title: 'Тяжесть в груди', description: ''},
    {title: 'Анальный зуд', description: ''},
    {title: 'Атрофия кожи', description: ''},
    {title: 'Беспокойство', description: Faker::WorldOfWarcraft.quote},
    {title: 'Амнезия', description: ''},
    {title: 'Боль в груди', description: ''},
    {title: 'Боль в области половых органов', description: ''},
    {title: 'Волдыри', description: ''},
    {title: 'Вздутие живота', description: ''},
    {title: 'Воспаленные гланды', description: ''},
    {title: 'Выраженная мышечная слабость', description: Faker::WorldOfWarcraft.quote },
    {title: 'Выпадение волос', description: ''},
    {title: 'Высыпания в виде пузырьков', description: ''},
    {title: 'Газы', description: ''},
    {title: 'Галлюцинации', description: Faker::WorldOfWarcraft.quote },
    {title: 'Головокружение', description: ''},
    {title: 'Депрессия', description: ''},
    {title: 'Диарея', description: ''},
    {title: 'Жажда', description: Faker::WorldOfWarcraft.quote },
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
    {title: 'Охриплость голоса', description: Faker::WorldOfWarcraft.quote },
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
        description: Faker::WorldOfWarcraft.quote
    },
    {
        title: 'Сифилис сердечно-сосудистой системы',
        icd_code: 'A52.0+',
        symptoms: [Symptom.find(11), Symptom.find(20)],
        specializations: [Specialization.find_by_code('therap'), Specialization.find_by_code('gynecolog')],
        description: Faker::WorldOfWarcraft.quote
    },
    {
        title: 'Нейросифилис с симптомами',
        icd_code: 'A52.1',
        symptoms: [Symptom.find(12), Symptom.find(21)],
        specializations: [Specialization.find_by_code('gynecolog')],
        description: Faker::WorldOfWarcraft.quote
    },
    {
        title: 'Гонококковая инфекция аноректальной области',
        icd_code: 'A54.6',
        symptoms: [Symptom.find(13), Symptom.find(22)],
        specializations: [Specialization.find_by_code('gynecolog')],
        description: Faker::WorldOfWarcraft.quote
    },
    {
        title: 'Пятнистая лихорадка, вызываемая Rickettsia siberica',
        icd_code: 'A77.2',
        symptoms: [Symptom.find(14), Symptom.find(23)],
        specializations: [Specialization.find_by_code('therap'), Specialization.find_by_code('pediatr')],
        description: Faker::WorldOfWarcraft.quote
    },
    {
        title: 'Тиф, вызываемый Rickettsia tsutsugamushi',
        icd_code: 'A75.3',
        symptoms: [Symptom.find(15), Symptom.find(24)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::StarWars.wookiee_sentence
    },
    {
        title: 'Психическое расстройство без дополнительных уточнений',
        icd_code: 'F99',
        symptoms: [Symptom.find(16), Symptom.find(25)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::WorldOfWarcraft.quote
    },
    {
        title: 'Фобические тревожные расстройства',
        icd_code: 'F40',
        symptoms: [Symptom.find(17), Symptom.find(26)],
        specializations: [Specialization.find_by_code('psycholog')],
        description: Faker::WorldOfWarcraft.quote
    },
    {
        title: 'Диссоциативные конвульсии',
        icd_code: 'F44.5',
        symptoms: [Symptom.find(18), Symptom.find(27)],
        specializations: [Specialization.find_by_code('psycholog')],
        description: Faker::WorldOfWarcraft.quote
    },
    {
        title: 'Транс и одержимость',
        icd_code: 'F44.3',
        symptoms: [Symptom.find(19), Symptom.find(28)],
        specializations: [Specialization.find_by_code('psycholog')],
        description: Faker::StarWars.wookiee_sentence
    },
    {
        title: 'Диссоциативная амнезия',
        icd_code: 'F44.0',
        symptoms: [Symptom.find(30), Symptom.find(29)],
        specializations: [Specialization.find_by_code('psycholog')],
        description: Faker::WorldOfWarcraft.quote
    },
    {
        title: 'Глазная боль',
        icd_code: 'H57.1',
        symptoms: [Symptom.find(31), Symptom.find(32)],
        specializations: [Specialization.find_by_code('ophthalmolog')],
        description: Faker::StarWars.wookiee_sentence
    },
    {
        title: 'Старческая катаракта',
        icd_code: 'H25',
        symptoms: [Symptom.find(41), Symptom.find(33)],
        specializations: [Specialization.find_by_code('ophthalmolog')],
        description: Faker::WorldOfWarcraft.quote
    },
    {
        title: 'Глаукома',
        icd_code: 'H40',
        symptoms: [Symptom.find(34), Symptom.find(42)],
        specializations: [Specialization.find_by_code('ophthalmolog')],
        description: Faker::WorldOfWarcraft.quote
    },
    {
        title: 'Идиопатическая гипотензия',
        icd_code: 'I95.0',
        symptoms: [Symptom.find(35), Symptom.find(36)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')],
        description: Faker::StarWars.wookiee_sentence
    },
    {
        title: 'Стенокардия неуточненная',
        icd_code: 'I20.9',
        symptoms: [Symptom.find(37), Symptom.find(38)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Другие формы хронической ишемической болезни сердца',
        icd_code: 'I25.8',
        symptoms: [Symptom.find(39), Symptom.find(40)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Острый субэндокардиальный инфаркт миокарда',
        icd_code: 'I21.4',
        symptoms: [Symptom.find(3), Symptom.find(41)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Тромбоз портальной вены',
        icd_code: 'I81',
        symptoms: [Symptom.find(4), Symptom.find(43)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Генерализованный и неуточненный атеросклероз',
        icd_code: 'I70.9',
        symptoms: [Symptom.find(5), Symptom.find(44)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Болезни перикарда неуточненные',
        icd_code: 'I31.9',
        symptoms: [Symptom.find(6), Symptom.find(45)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Ревматическая лихорадка без упоминания о вовлечении сердца',
        icd_code: 'I00',
        symptoms: [Symptom.find(7), Symptom.find(46)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')],
        description: Faker::StarWars.wookiee_sentence
    },
    {
        title: 'Митральный стеноз',
        icd_code: 'I05.',
        symptoms: [Symptom.find(8), Symptom.find(47)],
        specializations: [Specialization.find_by_code('cardio'), Specialization.find_by_code('surg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Грипп с пневмонией, вирус не идентифицирован',
        icd_code: 'J11.0',
        symptoms: [Symptom.find(9), Symptom.find(48)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::Matz.quote
    },
    {
        title: 'Грипп с другими респираторными проявлениями, вирус не идентифицирован',
        icd_code: 'J11.1',
        symptoms: [Symptom.find(1), Symptom.find(49)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::Matz.quote
    },
    {
        title: 'Пневмония неуточненная',
        icd_code: 'J18.9',
        symptoms: [Symptom.find(4), Symptom.find(50)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::Matz.quote
    },
    {
        title: 'Пневмония, вызванная Streptococcus pneumoniae',
        icd_code: 'J13',
        symptoms: [Symptom.find(28), Symptom.find(36)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::Matz.quote
    },
    {
        title: 'Грипп с пневмонией, вирус гриппа идентифицирован',
        icd_code: 'J10.0',
        symptoms: [Symptom.find(8), Symptom.find(3)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::StarWars.wookiee_sentence
    },
    {
        title: 'Острая инфекция верхних дыхательных путей неуточненная',
        icd_code: 'J06.9',
        symptoms: [Symptom.find(6), Symptom.find(2)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::Matz.quote
    },
    {
        title: 'Острый фарингит, вызванный другими уточненными возбудителями',
        icd_code: 'J02.8',
        symptoms: [Symptom.find(17), Symptom.find(38)],
        specializations: [Specialization.find_by_code('otolaryngolog')],
        description: Faker::Matz.quote
    },
    {
        title: 'Другой острый синусит',
        icd_code: 'J01.8',
        symptoms: [Symptom.find(1), Symptom.find(48)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::StarWars.wookiee_sentence
    },
    {
        title: 'Стрептококковый тонзиллит',
        icd_code: 'J03.0',
        symptoms: [Symptom.find(2), Symptom.find(39)],
        specializations: [Specialization.find_by_code('otolaryngolog')],
        description: Faker::Matz.quote
    },
    {
        title: 'Острый тонзиллит, вызванный другими уточненными возбудителями',
        icd_code: 'J03.8',
        symptoms: [Symptom.find(3), Symptom.find(21)],
        specializations: [Specialization.find_by_code('otolaryngolog')],
        description: Faker::Matz.quote
    },
    {
        title: 'Другие острые инфекции верхних дыхательных путей множественной локализации',
        icd_code: 'J06.8',
        symptoms: [Symptom.find(4), Symptom.find(28)],
        specializations: [Specialization.find_by_code('otolaryngolog')],
        description: Faker::Matz.quote
    },
    {
        title: 'Пневмокониоз неуточненный',
        icd_code: 'J64',
        symptoms: [Symptom.find(5), Symptom.find(2)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::StarWars.wookiee_sentence
    },
    {
        title: 'Каннабиноз',
        icd_code: 'J66.2',
        symptoms: [Symptom.find(6), Symptom.find(24)],
        specializations: [Specialization.find_by_code('allerg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Болезнь дыхательных путей, вызванная другой уточненной органической пылью',
        icd_code: 'J66.8',
        symptoms: [Symptom.find(7), Symptom.find(23)],
        specializations: [Specialization.find_by_code('allerg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Атопический дерматит неуточненный',
        icd_code: 'L20.9',
        symptoms: [Symptom.find(8), Symptom.find(27)],
        specializations: [Specialization.find_by_code('allerg')],
        description: Faker::StarWars.wookiee_sentence
    },
    {
        title: 'Аллергический контактный дерматит, вызванный металлами',
        icd_code: 'L23.0',
        symptoms: [Symptom.find(9), Symptom.find(25)],
        specializations: [Specialization.find_by_code('allerg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Аллергический контактный дерматит, вызванный клейкими веществами',
        icd_code: 'L23.1',
        symptoms: [Symptom.find(10), Symptom.find(12)],
        specializations: [Specialization.find_by_code('allerg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Аллергический контактный дерматит, вызванный лекарственными средствами при их контакте с кожей',
        icd_code: 'L23.3',
        symptoms: [Symptom.find(33), Symptom.find(29)],
        specializations: [Specialization.find_by_code('allerg')],
        description: Faker::StarWars.wookiee_sentence
    },
    {
        title: 'Аллергический контактный дерматит, причина не уточнена',
        icd_code: 'L23.9',
        symptoms: [Symptom.find(41), Symptom.find(30)],
        specializations: [Specialization.find_by_code('allerg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Аллергический контактный дерматит, вызванный пищевыми продуктами при их контакте с кожей',
        icd_code: 'L23.6',
        symptoms: [Symptom.find(2), Symptom.find(12)],
        specializations: [Specialization.find_by_code('allerg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Зуд неуточненный',
        icd_code: 'L29.9',
        symptoms: [Symptom.find(3), Symptom.find(18)],
        specializations: [Specialization.find_by_code('allerg')],
        description: Faker::Matz.quote
    },
    {
        title: 'Алкогольная печеночная недостаточность',
        icd_code: 'K70.4',
        symptoms: [Symptom.find(34), Symptom.find(19)],
        specializations: [Specialization.find_by_code('rheumatolog')],
        description: Faker::Matz.quote
    },
    {
        title: 'Алкогольный фиброз и склероз печени',
        icd_code: 'K70.2',
        symptoms: [Symptom.find(35), Symptom.find(20)],
        specializations: [Specialization.find_by_code('rheumatolog')],
        description: Faker::Matz.quote
    },
    {
        title: 'Алкогольный цирроз печени',
        icd_code: 'K70.3',
        symptoms: [Symptom.find(37), Symptom.find(11)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::Matz.quote
    },
    {
        title: 'Односторонняя или неуточненная паховая грыжа с непроходимостью без гангрены',
        icd_code: 'K40.3',
        symptoms: [Symptom.find(39), Symptom.find(12)],
        specializations: [Specialization.find_by_code('phlebolog')],
        description: Faker::Matz.quote
    },
    {
        title: 'Односторонняя или неуточненная бедренная грыжа без непроходимости или гангрены',
        icd_code: 'K41.9',
        symptoms: [Symptom.find(8), Symptom.find(17)],
        specializations: [Specialization.find_by_code('phlebolog')],
        description: Faker::StarWars.wookiee_sentence
    },
    {
        title: 'Пупочная грыжа без непроходимости или гангрены',
        icd_code: 'K42.9',
        symptoms: [Symptom.find(19), Symptom.find(23)],
        specializations: [Specialization.find_by_code('phlebolog')],
        description: Faker::Matz.quote
    },
    {
        title: 'Грыжа передней брюшной стенки без непроходимости или гангрены',
        icd_code: 'K43.9',
        symptoms: [Symptom.find(17), Symptom.find(3)],
        specializations: [Specialization.find_by_code('phlebolog')],
        description: Faker::StarWars.wookiee_sentence
    },
    {
        title: 'Кариес эмали',
        icd_code: 'K02.0',
        symptoms: [Symptom.find(11), Symptom.find(27)],
        specializations: [Specialization.find_by_code('dent')],
        description: Faker::Matz.quote
    },
    {
        title: 'Кариес дентина',
        icd_code: 'K02.1',
        symptoms: [Symptom.find(12), Symptom.find(26)],
        specializations: [Specialization.find_by_code('dent')],
        description: Faker::Matz.quote
    },
    {
        title: 'Другой кариес зубов',
        icd_code: 'K02.8',
        symptoms: [Symptom.find(13), Symptom.find(25)],
        specializations: [Specialization.find_by_code('dent')],
        description: Faker::Matz.quote
    },
    {
        title: 'Брюшинные спайки',
        icd_code: 'K66.0',
        symptoms: [Symptom.find(14), Symptom.find(24)],
        specializations: [Specialization.find_by_code('phlebolog')],
        description: Faker::Matz.quote
    },
    {
        title: 'Язва кишечника',
        icd_code: 'K63.3',
        symptoms: [Symptom.find(15), Symptom.find(23)],
        specializations: [Specialization.find_by_code('phlebolog')],
        description: Faker::StarWars.quote
    },
    {
        title: 'Синдром раздраженного кишечника с диареей',
        icd_code: 'K58.0',
        symptoms: [Symptom.find(16), Symptom.find(22)],
        specializations: [Specialization.find_by_code('phlebolog')],
        description: Faker::StarWars.quote
    },
    {
        title: 'Синдром раздраженного кишечника без диареи',
        icd_code: 'K58.9',
        symptoms: [Symptom.find(49), Symptom.find(21)],
        specializations: [Specialization.find_by_code('phlebolog')],
        description: Faker::StarWars.quote
    },
    {
        title: 'Выпадение заднего прохода',
        icd_code: 'K62.2',
        symptoms: [Symptom.find(18), Symptom.find(28)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::StarWars.quote
    },
    {
        title: 'Болезнь заднего прохода и прямой кишки неуточненная',
        icd_code: 'K62.9',
        symptoms: [Symptom.find(17), Symptom.find(29)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::StarWars.quote
    },
    {
        title: 'Острая трещина заднего прохода',
        icd_code: 'K60.0',
        symptoms: [Symptom.find(16), Symptom.find(2)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::StarWars.quote
    },
    {
        title: 'Хроническая трещина заднего прохода',
        icd_code: 'K60.1',
        symptoms: [Symptom.find(15), Symptom.find(18)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::StarWars.quote
    },
    {
        title: 'Травма черепного нерва неуточненного',
        icd_code: 'S04.9',
        symptoms: [Symptom.find(14), Symptom.find(14)],
        specializations: [Specialization.find_by_code('surg')],
        description: Faker::StarWars.quote
    },
    {
        title: 'Размозжение лица',
        icd_code: 'S07.0',
        symptoms: [Symptom.find(13), Symptom.find(2)],
        specializations: [Specialization.find_by_code('surg')],
        description: Faker::StarWars.quote
    },
    {
        title: 'Размозжение черепа',
        icd_code: 'S07.1',
        symptoms: [Symptom.find(12), Symptom.find(21)],
        specializations: [Specialization.find_by_code('surg')],
        description: Faker::StarWars.quote
    },
    {
        title: 'Вывих шейного позвонка',
        icd_code: 'S13.1',
        symptoms: [Symptom.find(10), Symptom.find(22)],
        specializations: [Specialization.find_by_code('surg')],
        description: Faker::StarWars.quote
    },
    {
        title: 'Перелом неуточненной части костей предплечья',
        icd_code: 'S52.9',
        symptoms: [Symptom.find(10), Symptom.find(22)],
        specializations: [Specialization.find_by_code('surg')],
        description: Faker::StarWars.quote
    },
    {
        title: 'Травма собственной мышцы и сухожилия другого пальца на уровне запястья и кисти',
        icd_code: 'S66.5',
        symptoms: [Symptom.find(19), Symptom.find(38)],
        specializations: [Specialization.find_by_code('therap')],
        description: Faker::StarWars.quote
    },
    {
        title: 'Термические ожоги нескольких областей тела с указанием хотя бы на один ожог третьей степени',
        icd_code: 'T29.3',
        symptoms: [Symptom.find(14), Symptom.find(3)] ,
        specializations: [Specialization.find_by_code('surg'), Specialization.find_by_code('neuropatholog')],
        description: Faker::StarWars.wookiee_sentence
    },
    {
        title: 'Поверхностное отморожение колена и голени',
        icd_code: 'T33.7',
        symptoms: [Symptom.find(6), Symptom.find(2)],
        specializations: [Specialization.find_by_code('surg'),
                          Specialization.find_by_code('podiatr'),
                          Specialization.find_by_code('orthoped')],
        description: Faker::StarWars.wookiee_sentence
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

drugs = [
    {
        title: Faker::WorldOfWarcraft.hero, description: Faker::VentureBros.quote
    },
    {
        title: Faker::WorldOfWarcraft.hero, description: Faker::VentureBros.quote
    },
    {
        title: Faker::WorldOfWarcraft.hero, description: Faker::VentureBros.quote
    },
    {
        title: Faker::WorldOfWarcraft.hero, description: Faker::VentureBros.quote
    },
    {
        title: Faker::WorldOfWarcraft.hero, description: Faker::VentureBros.quote
    }
]

drugs.each do |params|
    Drug.create!(params)
end

prescriptions = [
    { recommendations: Faker::Matz.quote, drug_id: Drug.first.id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(2).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(3).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(4).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(5).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(1).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(2).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(3).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(4).id },
    { recommendations: Faker::Matz.quote, drug_id: Drug.find(5).id }
]

prescriptions.each do |params|
    Prescription.create!(params)
end

visits = [
    {
        date_time: '2017-08-03 11:44:23 UTC',
        doctor_id: Doctor.find(1).id,
        clinic_id: Clinic.find(1).id,
    },
    {
        date_time: '2017-07-03 11:44:23 UTC',
        doctor_id: Doctor.find(1).id,
        clinic_id: Clinic.find(1).id,
    },
    {
        date_time: '2017-07-13 11:44:23 UTC',
        doctor_id: Doctor.find(1).id,
        clinic_id: Clinic.find(1).id,
    },
    {
        date_time: '2017-08-01 11:44:23 UTC',
        doctor_id: Doctor.find(2).id,
        clinic_id: Clinic.last.id,
    },
    {
        date_time: '2017-05-03 11:44:23 UTC',
        doctor_id: Doctor.find(2).id,
        clinic_id: Clinic.last.id,
    },
    {
        date_time: '2017-07-13 11:44:23 UTC',
        doctor_id: Doctor.find(2).id,
        clinic_id: Clinic.last.id,
    }
]

visits.each do |params|
    Visit.create!(params)
end

illnesses = [
    {
        patient_id: Patient.find(1).id,
        doctor_id: Doctor.find(1).id,
        symptoms: [Symptom.find(1), Symptom.find(2)],
        visits: [Visit.find(1), Visit.find(2), Visit.find(3)],
        prescriptions: [Prescription.find(1), Prescription.find(2),Prescription.find(3), Prescription.find(4)],
        diseases: [Disease.find(1)]
    },
    {
        patient_id: Patient.find(1).id,
        doctor_id: Doctor.find(2).id,
        symptoms: [Symptom.find(1), Symptom.find(2)],
        visits: [Visit.find(4), Visit.find(5), Visit.find(6)],
        prescriptions: [Prescription.find(5), Prescription.find(6),Prescription.find(7), Prescription.find(8)],
        diseases: [Disease.find(32)]
    }
]

illnesses.each do |params|
  Illness.create!(params)
end
