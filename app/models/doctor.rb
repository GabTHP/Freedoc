class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :docspecs
  has_many :specs, through: :docspecs
  belongs_to :city
end
