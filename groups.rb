class Groups
    
    attr_reader :people

    def initialize (people)
        @people = people || []
    end

 


    def find_song(song_name)
        find_song = nil
        for song in @people
          if song[:favourite_song] == song_name
            find_song = song
          end
        end
        return find_song
    end




end