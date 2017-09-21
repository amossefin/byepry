module Byepry
  class Terminator
    def self.get_it
      if %x(grep -r byebug -r binding.pry . >&2) != ""
        puts "You have bye's and pry's in the program.
        Would you like to remove them? (y/n)"
        answer = gets
        if answer == "y" || "Y"
          %(find . -type f -name "*.rb" | xargs sed -i '' 's/binding.pry//g')
          %(find . -type f -name "*.rb" | xargs sed -i '' 's/byebug//g')
        end
      end
    end
  end
end
