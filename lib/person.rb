require 'pry'
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize name, bank_account=25, happiness=8, hygiene=8
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness= points
        if points >= 0 && points <= 10  
            @happiness = points
        elsif points > 10
            @happiness = 10
        else @happiness = 0
        end 
    end

    def hygiene= points
        if points >= 0 && points <= 10  
            @hygiene = points
        elsif points > 10
            @hygiene = 10
        else @hygiene = 0
        end 
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def get_paid amount
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, conversation
        case conversation
        when "politics"
            friend.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end