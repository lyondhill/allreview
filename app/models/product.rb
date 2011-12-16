class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :sub_category

  has_many :reviews

  field :name


end
