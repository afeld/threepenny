class Loan < ActiveRecord::Base
  belongs_to :country
  belongs_to :loan_sector
end
