class Review
  include Mongoid::Document

  belongs_to :product

  field :score, type: Integer

  validates_numericality_of :score, :on => :create, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5


end
