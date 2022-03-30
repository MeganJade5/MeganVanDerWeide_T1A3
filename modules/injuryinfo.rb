require 'tty-prompt'
require 'pastel'

module InjuryInfo
    def self.list
        choices = { do: 1, dont: 2 }
        prompt = TTY::Prompt.new(active_color: :green, symbols:{})
        prompt.select('What injuries dos and donts list would you like to view?', choices)
    
    end
    def self.list1
        menu = {
                  'Head injury do' => 1,
                  'Kneck injury do' => 2,
                  'Back injury do' => 3,
                  'Shoulder Injury do' => 4
                  'Buttocks injury do' => 5,
                  'Knee injury do' => 6,
                  'feet injury do' => 7,
            }
        prompt = TTY::Prompt.new
        prompt.select("Please select the injury to learn what exercises to do to strengthen it!", menu, active_color: :red, symbols: { marker: ' ' })
    end
    def self.list2
        menu = {
                  'Head injury dont' => 1,
                  'Kneck injury dont' => 2,
                  'Back injury dont' => 3,
                  'Shoulder Injury dont' => 4
                  'Buttocks injury dont' => 5,
                  'Knee injury dont' => 6,
                  'feet injury dont' => 7,
            }
        prompt = TTY::Prompt.new
        prompt.select("Lets avoid further injuries! Select the injury to learn what exercises you should not to do with the injury!", menu, active_color: :red, symbols: { marker: '' })
    end

end