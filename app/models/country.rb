class Country < ActiveRecord::Base
  has_many :loans, :dependent => :nullify
  
  def to_s
    self.name
  end
end
