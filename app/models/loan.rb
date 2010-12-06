class Loan < ActiveRecord::Base
  belongs_to :country
  belongs_to :loan_sector
  
  validates :kiva_id, :uniqueness => true
end
