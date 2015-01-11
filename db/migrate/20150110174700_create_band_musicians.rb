class CreateBandMusicians < ActiveRecord::Migration
  def change
    create_table :band_musicians do |t|
      t.references :band
      t.references :musician
    end
  end
end
