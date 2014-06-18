class Project < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  def search(search)
    if search != ""
      @projects = Project.where('name LIKE ?', "%#{search}%")
    else
      @projects = Project.all
    end
  end
end
