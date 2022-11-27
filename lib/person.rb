# your code goes here
require 'pry'

class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0,10)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0,10)
    end

    def happy?
        if @happiness > 7
            true
        else false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else false
        end
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        nope = @hygiene += 4
        # binding.pry
        self.hygiene= nope
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        nope = @hygiene -= 3
        yup = @happiness += 2
        self.hygiene= nope
        self.happiness= yup
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend.self)
        # happy = @happiness += 3
        # both = friend.happy
        # self.happiness= happy
        # friend.happiness= both
    end
end

# binding.pry