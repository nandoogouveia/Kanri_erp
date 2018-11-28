class CreateFinanceiros < ActiveRecord::Migration[5.2]
  def change
    create_table :financeiros do |t|
      t.string :financial

      t.timestamps
    end
  end
end
