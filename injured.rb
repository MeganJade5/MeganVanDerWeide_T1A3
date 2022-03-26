class Injured
    attr_reader :input :output
    def initialize (input: $stdin, output: $stdout)
        @input = input
        @output = output
    end

    def ask_if_injured
         @output.puts "Input if injured y/n"
         loop do
             input = @input.gets.to_s
            return true if input= "y"
            @output.puts "Invalid"
         end
    end
end