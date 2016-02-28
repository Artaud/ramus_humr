class Prihlaska < ActiveRecord::Base
  # belongs_to :cart
  has_many :akce_prihlaskas
  has_many :akces, through: :akce_prihlaskas
  accepts_nested_attributes_for :akces, reject_if: :all_blank
end
