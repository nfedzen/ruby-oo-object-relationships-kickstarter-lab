# BACKER CLASS
class Backer
  attr_reader :name

  @@all = []

  def initialize name
    @name = name
    @@all << name
  end

  def back_project project
    ProjectBacker.new(project, self)
  end

  def backed_projects
    projects = []
    ProjectBacker.all.each do |project|
      if project.backer == self
        projects << project.project
      end
    end
    projects
  end
end
