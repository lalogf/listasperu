class CreateProvincia < ActiveRecord::Migration
  def change
    create_table :provincia do |t|
      t.string :nombre
      t.references :departamento

      t.timestamps
    end
  end
end
