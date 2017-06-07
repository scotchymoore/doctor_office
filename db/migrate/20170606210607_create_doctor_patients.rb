class CreateDoctorPatients < ActiveRecord::Migration[5.1]
  def change
    create_table :doctor_patients do |t|
      t.belongs_to :doctor, foreign_key: true
      t.belongs_to :patient, foreign_key: true
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
