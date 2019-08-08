class Project
    attr_reader :title 
    attr_accessor :backers, :projects_backed
    
    def initialize(title)
        @title = title
        @backers = []
    end 

    def all 
        @backers
    end


    def add_backer(backer)
        @backers << backer
        backer.back_project(self) unless backer.backed_projects.include?(self)
    end 

    
    end 