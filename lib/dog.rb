# Add your code here
class Dog

    attr_accessor :name
    @@all = []

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def initialize (name)
        @name=name
        save
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        @@all.each do |x|
        puts x.name
        end

    end
end
