class Product
  include Mongoid::Document

  belongs_to :sub_category

  has_many :reviews

  field :name


end
