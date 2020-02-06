class Spec < ApplicationRecord
  has_many :docspecs
  has_many :doctors, through: :docspecs
end
