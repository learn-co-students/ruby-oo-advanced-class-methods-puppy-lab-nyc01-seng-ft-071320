class Dog
    @@all = []
    def initialize (name)
        @name = name
        save
    end
    attr_accessor :name

    def self.all
        @@all
    end

    def save
        self.class.all << self
      end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        @@all.each do |element| 
        puts element.name
        end
    end

end