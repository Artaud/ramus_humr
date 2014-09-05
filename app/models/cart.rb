class Cart < ActiveRecord::Base
	has_many :prihlaskas, :dependent => :destroy
end
