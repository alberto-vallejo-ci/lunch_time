class Review < ActiveRecord::Base
  #-------------------
  # ASSOCIATIONS
  #-------------------
  belongs_to :restaurant

  #-------------------
  # VALIDATIONS
  #-------------------
  validates :cost, :rate, presence: true, numericality: true

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
