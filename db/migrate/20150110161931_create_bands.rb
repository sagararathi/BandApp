class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.references :musician

      t.timestamps
    end
  end
end
