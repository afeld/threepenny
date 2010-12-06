class Country < ActiveRecord::Base
  has_many :loans, :dependent => :nullify
end
