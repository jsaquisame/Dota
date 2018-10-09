class Hero < ApplicationRecord
  belongs_to :base
  belongs_to :attack
  belongs_to :stat
  belongs_to :skill
end
