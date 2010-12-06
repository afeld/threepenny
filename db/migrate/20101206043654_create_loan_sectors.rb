class CreateLoanSectors < ActiveRecord::Migration
  def self.up
    create_table :loan_sectors do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :loan_sectors
  end
end
