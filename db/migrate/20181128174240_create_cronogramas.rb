class CreateCronogramas < ActiveRecord::Migration[5.2]
  def change
    create_table :cronogramas do |t|
      t.string :calendario

      t.timestamps
    end
  end
end
