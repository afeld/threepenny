class Country < ActiveRecord::Base
  has_many :loans, :dependent => :nullify
  
  validates :country_code, :uniqueness => true
  
  def to_s
    self.name
  end
end
