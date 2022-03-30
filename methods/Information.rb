require 'tty-prompt'

module Information
    def self.list1
        choices = { do: 1, dont: 2 }
        prompt = TTY::Prompt.new
        prompt.select('Would you like to know the dos or donts for an injury?', choices)
    end

    def self.list2
        menu = {
          'Head injury do' => 1,
          'Kneck injury do' => 2,
          'Back injury do' => 3,
          'Shoulder Injury do' => 4
        }
        prompt = TTY::Prompt.new
        prompt.select("Please select the injury to learn what exercises to do to strengthen it!", menu)
    end

    def self.list3
        menu = {
          'Head injury dont' => 1,
          'Kneck injury dont' => 2,
          'Back injury dont' => 3,
          'Shoulder Injury dont' => 4
        }
        prompt = TTY::Prompt.new
        prompt.select("Lets avoid further injuries! Select the injury to learn what exercises you should not to do!",
                      menu)
    end
end
