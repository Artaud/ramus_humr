class Akce < ActiveRecord::Base
	has_many :prihlaskas

	before_destroy :ensure_not_referenced_by_any_prihlaska

	def ensure_not_referenced_by_any_prihlaska
		if prihlaskas.count.zero?
			return true
		else
			errors[:base] << 'K teto akci jsou prihlaseni zajemci'
			return false
		end
	end
end
