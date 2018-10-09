class Creep < ApplicationRecord
  belongs_to :attack
  belongs_to :skill
end
