class Project
    
    attr_reader :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def self.all
        @@all
    end

    def backers
        backers = ProjectBacker.all.select{|backer| backer.project == self}
        backers.map{|backer| backer.backer}
    end
end