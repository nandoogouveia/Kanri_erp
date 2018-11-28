class CreatePainels < ActiveRecord::Migration[5.2]
  def change
    create_table :painels do |t|
      t.string :painel

      t.timestamps
    end
  end
end
