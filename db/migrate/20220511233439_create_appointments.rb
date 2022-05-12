class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :patient_id
      t.integer :day
      t.string :appt_start
      t.string :appt_end
      t.boolean :checked_in
      t.integer :physical_therapist_id
      t.string :exercises
      t.string :notes
      t.string :label
    end
  end
end
