class LoanSector < ActiveRecord::Base
  has_many :loans, :dependent => :nullify
end
