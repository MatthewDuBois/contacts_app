class Contact < ApplicationRecord  

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
