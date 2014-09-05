class Prihlaska < ActiveRecord::Base
  belongs_to :cart
  belongs_to :akce
end
