# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'json'
file = File.read (Rails.root.join('db/got.json'))
data = JSON.parse(file)
# data.keys



Skill.destroy_all
Stat.destroy_all    
Base.destroy_all
Attack.destroy_all
Hero.destroy_all



#two bases of dota
base1 = Base.create(team: data['characterName']);
base2 = Base.create(team: data['houseName']);
require'faker'

#attack_type
attack1 = Attack.create(attack_type: 'Melee')
attack2 = Attack.create(attack_type: 'Range')

# #status
attribute1= Stat.create(att: 'Agility')
attribute2= Stat.create(att: 'Strength')
attribute3= Stat.create(att: 'Inteligence')



#create skills
100.times do 
    create_skill = Skill.create(name: Faker::Music.instrument,
                                description: Faker::Music.album,
                                cooldown: Faker::Number.between(1,30))
    end

#create heroes
20.times do
    attack_sample = Attack.all.sample
    attribute_sample = Stat.all.sample
    skill_sample= Skill.all.sample
    base_sample = Base.all.sample
    create_hero = Hero.create(name: Faker::Dota.hero,
                              description: Faker::Dota.quote,
                              popularity: Faker::Number.between(1,100),
                              base: base_sample,
                              attack: attack_sample,
                              stat: attribute_sample,
                              skill: skill_sample )
    end

#create creeps
10.times do
    attack_sample = Attack.all.sample
    skill_sample= Skill.all.sample
    create_creep = Creep.create(creep_name: Faker::GameOfThrones.character,
                                creep_type: Faker::GameOfThrones.dragon,
                                attack: attack_sample,
                                skill: skill_sample)
    end




