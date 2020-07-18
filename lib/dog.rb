class Dog
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        Dog.all << self
    end

    def self.clear_all
        Dog.all.clear
    end

    def self.print_all
        Dog.all.each {|dog| puts dog.name}
    end
end