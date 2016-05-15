# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.create(title: 'Столиця України', A: 'Ужгород', B: 'Харків', C: 'Київ', D: 'Львів', good: 'Київ')
Question.create(title: 'Столиця Німеччини', A: 'Брно', B: 'Кельн', C: 'Осло', D: 'Берлін', good: 'Берлін')
Question.create(title: 'Столиця Угорщини', A: 'Вена', B: 'Будапешт', C: 'Дебрецен', D: 'Рим', good: 'Будапешт')

