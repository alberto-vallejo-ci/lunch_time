class Restaurant < ActiveRecord::Base
  #-------------------
  # ASSOCIATIONS
  #-------------------

  #-------------------
  # VALIDATIONS
  #-------------------
  validates :name, presence: true, length: 1..99
  validates :average_rate, :average_cost, numericality: true, allow_nil: true

  #-------------------
  # SCOPES
  #-------------------

  #-------------------
  # INSTANCE METHODS
  #-------------------

  #-------------------
  # CLASS METHODS
  #-------------------
end
