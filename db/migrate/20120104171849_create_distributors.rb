class CreateDistributors < ActiveRecord::Migration
  def self.up
    create_table :distributors do |t|
      t.string :provincia
      t.string :comune
      t.string :indirizzo
      t.string :fulladdress
      t.string :img_url
      t.string :tipo
      t.string :prezzo
      t.string :prezzo_min
      t.timestamps
    end
  end

  def self.down
    drop_table :distributors
  end
end
