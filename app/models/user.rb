class User < ApplicationRecord
    include Authority::UserAbilities
  attr_accessor :username
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :username
  validates_presence_of :username
  validates :username, :presence => true, :uniqueness => true, :format => /[a-z]/

  validates :username, length: { in: 4..20 }

  protected
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    username = conditions.delete(:username)
    where(conditions).where(["lower(username) = :value", { :value => username.downcase }]).first
 end
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable

         def email_required?
          false
        end


end
