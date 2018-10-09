class Attack < ApplicationRecord
    has_many :heros, dependent: :destroy
    has_many :creeps, dependent: :destroy

    validates :attack_type, presence: true
end
