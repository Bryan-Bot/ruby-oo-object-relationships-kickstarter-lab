class Project
    attr_reader :title

    def initialize (title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        back = ProjectBacker.all.select {
            |n| n.project == self
        }
        back.map { |y|
            y.backer
        }
    end 
end