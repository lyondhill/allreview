class Category
  include Mongoid::Document

  has_many :sub_categories

  field :name


end
