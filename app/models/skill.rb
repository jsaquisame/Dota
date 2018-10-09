class Skill < ApplicationRecord
    has_many :heros, dependent: :destroy
    has_many :creeps, dependent: :destroy

    validates :name, presence: true
    validates :cooldown, presence: true
end
