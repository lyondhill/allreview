class Authorization
  include Mongoid::Document
  field :provider, :type => String
  field :uid, :type => String
  field :user_id, :type => Integer

  belongs_to :user
  validates_presence_of :user_id, :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def self.find_from_hash(hash)
    Authorization.where(provider: hash['provider'], uid: hash['uid']).first
  end

  def self.create_from_hash(hash, user = nil)
    user ||= User.create_from_hash!(hash)
    Authorization.create(:user => user, :uid => hash['uid'], :provider => hash['provider'])
  end

end
