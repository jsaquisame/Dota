# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Base.destroy_all
Attack.destroy_all
Stat.destroy_all
Hero.destroy_all

#two bases of dota
base1 = Base.create(team: 'Radiant');
base2 = Base.create(team: 'Dire');
require'faker'

#attack_type
attack1 = Attack.create(attack_type: 'Melee')
attack2 = Attack.create(attack_type: 'Range')

# #status
attribute1= Stat.create(att: 'Agiligy')
attribute2= Stat.create(att: 'Strength')
attribute3= Stat.create(att: 'Intelegence')


#
100.times do 
    create_skill = Skill.create

#deploy heroes

# 10.times do
#     base = Base.all.sample
#     attack = Attack.all.sample
#     attribute = Stat.all.sample
#     create_hero = Hero.create(name: Faker::Dota.hero,
#                               description: Faker::Dota.quote,
#                               popularity: Faker::Number.between(1,100),
#                               base: base,
#                               attack: attack,
#                               stat: attribute)
#     end


