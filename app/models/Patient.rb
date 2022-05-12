class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :physical_therapists, through: :appointments
end