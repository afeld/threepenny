class Loan < ActiveRecord::Base
  belongs_to :country
  belongs_to :loan_sector
  
  validates :kiva_id, :uniqueness => true
  
  def latitude
    super || self.country.latitude if self.country
  end
  
  def longitude
    super || self.country.longitude if self.country
  end
end
