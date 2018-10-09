class Hero < ApplicationRecord
  belongs_to :base
  belongs_to :attack
  belongs_to :stat
  belongs_to :skill

  validates :name, presence: true
  validates :description, presence: true
  validates :popularity, presence: true
  
end
