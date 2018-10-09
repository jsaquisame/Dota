class Skill < ApplicationRecord
    has_many :heros, dependent: :destroy
    has_many :creeps, dependent: :destroy
end
