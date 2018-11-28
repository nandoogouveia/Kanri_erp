class CreateChamados < ActiveRecord::Migration[5.2]
  def change
    create_table :chamados do |t|
      t.string :called

      t.timestamps
    end
  end
end
