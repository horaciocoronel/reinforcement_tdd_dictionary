class Dictionary

    def initialize
      @words = {}
    end

    def entries
      @words
    end

    def add(entry)
      if entry.class == Hash
        entry.each do |key, value|
          @words[key] = value
        end
      elsif entry.class == String
        @words[entry] = nil
      end
    end

    def include?(entry)
      @words.include?(entry)
    end

   def find(entry)
     @words.select do |key, value|
       key.start_with?(entry)
     end
   end

    def keywords
      @words.keys.sort
    end

end
