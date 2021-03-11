class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :character
  belongs_to :network

  def actors_list
    Array(self.characters[0].actor.full_name)
  end

end