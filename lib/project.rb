
class Project
  attr_reader :title

  @@all = []

  def initialize title
    @title = title
    @@all << title
  end

  def add_backer backer
    ProjectBacker.new(self, backer)
  end

  def backers 
    all_backers = []
    ProjectBacker.all.each do |project|
      if project.project == self
        all_backers << project.backer
      end
    end
    all_backers
  end
end
