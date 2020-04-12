class Rooms
    
    attr_reader :room_number, :cost_of_entry, :capacity
    
    def initialize (room_number, cost_of_entry, capacity)
        @room_number = room_number
        @cost_of_entry = cost_of_entry
        @capacity = capacity
        @karaoke_machine_playlist = []
        @room = []
    end

    def karaoke_room_occupied()
        return @room.size()
    end

    def check_in(group)
        @room << group
    end

    def check_out()
        @room.clear
    end

    def room_playlist
        return @karaoke_machine_playlist.size()
    end

    def add_playlist(playlist)
        @karaoke_machine_playlist << playlist
    end

    def clear_playlist()
        @karaoke_machine_playlist.clear
    end

    #Doesn't work (Don't think test has been written correctly)
    def room_big_enough(group_size, room_capcity)
        if group_size <= room_capcity
        return true
        else
        return false
        end
    end


end