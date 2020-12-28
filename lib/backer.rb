class Backer
   
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def self.all
        @@all
    end

    def backed_projects
        projects = ProjectBacker.all.select{|project| project.backer == self}
        projects.map{|project| project.project}
    end
end