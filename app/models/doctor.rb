class Doctor < ApplicationRecord
validates_presence_of :name
validates_uniqueness_of :name, case_sensitive: false

has_many :doctor_patients, dependent: :destroy
has_many :patients, through: :doctor_patients

end
