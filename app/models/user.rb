class User < ApplicationRecord
    include Authority::UserAbilities
  devise :database_authenticatable, :registerable

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

         def email_required?
          false
        end


end
