class Base < ApplicationRecord
    has_many :hero

    validates :team, presence: true
end
