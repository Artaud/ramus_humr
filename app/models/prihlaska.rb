class Prihlaska < ActiveRecord::Base
  belongs_to :role_ucastnika
  belongs_to :akce
end
