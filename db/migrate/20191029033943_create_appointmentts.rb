class CreateAppointmentts < ActiveRecord::Migration[6.0]
  def change
    create_table :appointmentts do |t|
      t.datetime :visit
      t.references :physician, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
