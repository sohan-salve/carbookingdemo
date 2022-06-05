class User <  ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :vehicles, foreign_key: "owner_id"
  has_many :orders
  has_one_attached :image , dependent: :destroy

  after_create :welcome_email
  def welcome_email
    UserMailer.welcome_email(self).deliver
    # redirect_to root_path, alert: "Thank you for registration."
  end
  # validates :email, uniqueness: true
end
