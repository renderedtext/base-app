class Role < ActiveRecord::Base

  has_and_belongs_to_many :users

  def self.admin
    find_or_create_by(:name => "admin")
  end

end
