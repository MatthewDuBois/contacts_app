class Contact < ApplicationRecord  

# There must be a first name
# There must be a last name
# The email must be unique
# Bonus: The email must be in a proper format.
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
