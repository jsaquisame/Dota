class Creep < ApplicationRecord
  belongs_to :attack
  belongs_to :skill

  validates :creep_name, presence: true
  validates :creep_type, presence: true
end
