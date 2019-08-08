class Project
    def initialize(title)
        @title = title
        @backers = []
    end

    attr_reader :title, :backers

    def add_backer(backer)
        backer.backed_projects << self
        @backers << backer
    end
end