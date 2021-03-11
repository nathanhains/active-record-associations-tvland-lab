class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = []
    full_name << self.first_name
    full_name << self.last_name
    full_name.join(" ")
  end

  def list_roles
    role = []
    role << self.characters[0].name
    role << self.shows[0].name
    Array(role.join(" - "))
  end

end