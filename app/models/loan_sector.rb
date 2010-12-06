class LoanSector < ActiveRecord::Base
  has_many :loans, :dependent => :nullify
  
  validates :name, :uniqueness => true
  
  def to_s
    self.name
  end
end
