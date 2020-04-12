class Groups
    
    attr_reader :people

    def initialize (people)
        @people = people || []
    end

    # def total_money_in_group(group)
    #     total_money = 0
    #     for money in group
    #       total_money += money[:monies]
    #     end
    #     return total_money
    # end

    # def total_money_in_group(group)
    #     p group.reduce(0) {|total, money| total + money[:monies]}
    # end



    def find_song(song_name)
        find_song = nil
        for song in @people
          if song[:favourite_song] == song_name
            find_song = song
          end
        end
        p find_song
    end




end