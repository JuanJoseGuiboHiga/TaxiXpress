class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthabl
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
end
