require 'tty-prompt'

module Prompts
    def self.continue
        prompt = TTY::Prompt.new
        prompt.keypress('Press space or enter to continue', keys: [:space, :return])
    end
    
    def self.exit
        prompt = TTY::Prompt.new
        prompt.yes?('Would you like to exit the application')
    end

    def self.help
        prompt = TTY::Prompt.new
        prompt.yes?('Would you like to read the help document?')
    end

    def self.move_on
        prompt = TTY::Prompt.new
        prompt.yes?('Are you ready to move on?')
    end
end