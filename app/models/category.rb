class Category
  include Mongoid::Document

  field :name

  has_many :sub_categories

end
