class CreatePts < ActiveRecord::Migration[6.1]
  def change
    create_table :physical_therapists do |t|
      t.string :name
      t.string :birthdate
    end
  end
end
