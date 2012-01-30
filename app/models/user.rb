class User
  include Mongoid::Document
  field :name, :type => String

  has_many :authorizations
  has_many :reviews

  def self.create_from_hash!(hash)
    create(:name => hash['info']['name'])
  end

end
