class AddMoreKivaDataToLoans < ActiveRecord::Migration
  def self.up
    add_column :loans, :kiva_image_id, :integer
    add_column :loans, :kiva_image_template, :integer
    add_column :loans, :loan_amount, :integer
    add_column :loans, :activity, :string
    add_column :loans, :posted_date, :datetime
    add_column :loans, :borrower_count, :integer
    add_column :loans, :name, :string
    add_column :loans, :use, :string
    add_column :loans, :latitude, :float
    add_column :loans, :longitude, :float
    add_column :loans, :geo_level, :string
  end

  def self.down
    remove_column :loans, :geo_level
    remove_column :loans, :longitude
    remove_column :loans, :latitude
    remove_column :loans, :use
    remove_column :loans, :name
    remove_column :loans, :borrower_count
    remove_column :loans, :posted_date
    remove_column :loans, :activity
    remove_column :loans, :loan_amount
    remove_column :loans, :kiva_image_template
    remove_column :loans, :kiva_image_id
  end
end
