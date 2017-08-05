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
