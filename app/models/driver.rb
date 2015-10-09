class Driver < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :services
  
    has_attached_file :picture,
    styles: { medium: "300x300>",thumb: "100x100>"},
    default_url:"/images/:styles/missing.png"
    
     validates :email,
            uniqueness: { case_sensitive: false}
                    
     validates:picture, attachment_presence:true, presence:true
     validates_attachment :picture,
       content_type:{
       content_type:["image/jpeg","image/gif","image/png"]}
  
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
