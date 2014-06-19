class Project < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  geocoded_by :address
  before_validation :geocode, :if => :address_changed?
  def self.search(search)
    if search != ""
      @projects = Project.where('name LIKE ?', "%#{search}%")
    else
      @projects = Project.all
    end
  end
end
