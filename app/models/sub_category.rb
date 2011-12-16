class SubCategory
  include Mongoid::Document

  belongs_to :category

  has_many :products

  field :name
  field :description

end
