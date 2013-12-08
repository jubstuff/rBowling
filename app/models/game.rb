class Game < ActiveRecord::Base
    def score
        rolls = []
        self.rolls.split(',').each do |f|
            rolls.push(f.to_i)
        end

        frame = 1
        total = 0

        frame_results = []

        until rolls.empty?
            if frame > 10
                break
            elsif rolls[0] == 10
                rolls = rolls[1..-1]
                total += 10 + rolls[0] + rolls[1]
            elsif rolls.length == 1
                total += rolls.shift
            elsif rolls[0]+rolls[1] == 10
                rolls = rolls[2..-1]
                total += 10 + rolls[0]
            else
                total += rolls[0] + rolls[1]
                rolls = rolls[2..-1]
            end
            frame +=1
            frame_results.push(total)
        end
        return frame_results
    end

end
