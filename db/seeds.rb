# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'json'
got_file = File.read (Rails.root.join('db/got.json'))
got_data = JSON.parse(got_file)
got_data.keys

attack_file = File.read (Rails.root.join('db/attack.json'))
attack_data = JSON.parse(attack_file)
attack_data.keys

Skill.destroy_all
Stat.destroy_all    
Base.destroy_all
Attack.destroy_all
Hero.destroy_all



#two bases of dota
base1 = Base.create(team: got_data["characters"][6]["houseName"]);
base2 = Base.create(team: got_data["characters"][1]["houseName"]);
require'faker'

#attack_type
attack1 = Attack.create(attack_type: attack_data["attack_type"][0]["attack_name"] )
attack2 = Attack.create(attack_type: attack_data["attack_type"][1]["attack_name"])

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
50.times do
    attack_sample = Attack.all.sample
    attribute_sample = Stat.all.sample
    skill_sample= Skill.all.sample
    base_sample = Base.all.sample
    create_hero = Hero.create(name: Faker::StarWars.unique.character,
                              description: Faker::StarWars.quote,
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




