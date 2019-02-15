class Snack < ApplicationRecord
  belongs_to :machine
  has_many :machine, through: :machine_snack
end
