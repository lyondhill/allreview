class User
  include Mongoid::Document

  field :username
  field :password
  
  has_many :reviews

  

end
