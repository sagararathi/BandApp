class CreateMusicians< ActiveRecord::Migration

  def change
    create_table :musicians do |t|
      t.string :first_name
      t.string :last_name
      t.references :band


      t.timestamps
    end
  end

end
