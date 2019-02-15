class Machine < ApplicationRecord
  validates_presence_of :location

  belongs_to :owner
  belongs_to :snacks
  has_many :snacks, through: :machine_snack
end
