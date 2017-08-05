grades = [
    {title: 'Врач второй категории'}, {title: 'Врач высшей категории'},
    {title: 'Врач первой категории'}, {title: 'Доктор медицинских наук'},
    {title: 'Кандидат медицинских наук'}, {title: 'Профессор'}
]

grades.each do |params|
  Grade.create!(params)
end
