class User < ActiveRecord::Base
	#Associations
	belongs_to :account
	has_many :authorizations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :account_id
  accepts_nested_attributes_for :account

  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :password

  after_create :remember_me

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
        user.remember_me!
      end
    else
      super
    end
  end

def self.from_omniauth(auth, current_user)
    authorization = Authorization.where(provider: auth.provider, uid: auth.uid.to_s).first_or_initialize
    if authorization.user.blank?
      user = current_user.nil? ? User.where('email = ?', auth["info"]["email"]).first : current_user
      if user.blank?
       user = User.new
       user.password = Devise.friendly_token[0,10]
       user.name = auth.info.name
       user.email = auth.info.email
       auth.provider == "twitter" ?  user.save(:validate => false) :  user.save
     end
     authorization.username = auth.info.nickname
     authorization.user_id = user.id
     authorization.save
     authorization.fetch_details(auth)
   end
   authorization.user
 end

end
