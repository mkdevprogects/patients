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
