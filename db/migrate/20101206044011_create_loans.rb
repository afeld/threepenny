class CreateLoans < ActiveRecord::Migration
  def self.up
    create_table :loans do |t|
      t.integer :kiva_id
      t.string :title
      t.string :city
      t.integer :country_id
      t.string :gender
      t.string :kiva_status
      t.integer :loan_sector_id

      t.timestamps
    end
  end

  def self.down
    drop_table :loans
  end
end
