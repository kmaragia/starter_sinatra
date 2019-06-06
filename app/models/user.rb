class User < ActiveRecord::Base

  has_many :bankaccounts, dependent: :destroy

end
