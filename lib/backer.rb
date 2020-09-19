class Backer
    @@all = []
    attr_reader :name

    def initialize (name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end 
    
    def backed_projects
      got_backer_from_pb_array = ProjectBacker.all.select {
            |pb| pb.backer == self 
        } #got_backer_from_pb_array checks w.e the user puts for backer... then checks its instance
            got_backer_from_pb_array.map{
                |n| n.project #returns an array of the projects that were associated with the backer intances
            }
    end
end