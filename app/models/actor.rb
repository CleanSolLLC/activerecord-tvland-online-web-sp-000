class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    character = self.characters.collect{|n| n.name}
    shows = self.shows.collect{|n| n.name}
    "#{character} - #{shows}"
  end

end
