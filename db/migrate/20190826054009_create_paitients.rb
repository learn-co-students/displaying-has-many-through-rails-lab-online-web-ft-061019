class CreatePaitients < ActiveRecord::Migration[5.0]
  def change
    create_table :paitients do |t|
      t.string :name
      t.integer :age
    end
  end
end
