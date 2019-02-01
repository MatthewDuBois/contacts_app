class Contact < ApplicationRecord  
  
  has_many :contact_groups
  has_many :groups, through: :contact_groups

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true

  def friendly_updated_at
    created_at.strftime("%b %d, %Y")
  end

  def full_name
    complete_name = "#{first_name} #{last_name}"
    complete_name
  end  

  def japanese_prefix
    "+81 #{phone_number}"
  end  


end
