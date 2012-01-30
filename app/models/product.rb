class Product
  include Mongoid::Document

  belongs_to :sub_category

  has_many :reviews

  field :name, :type => String
  field :image # Not sure how to deal with this.
  field :description

end
