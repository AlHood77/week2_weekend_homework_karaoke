class Rooms
    
    attr_reader :room_number, :cost_of_entry
    
    def initialize (room_number, cost_of_entry)
        @room_number = room_number
        @cost_of_entry = cost_of_entry
        @karaoke_playlist = []
        @room = []
    end

    def karaoke_room_occupied()
        return @room.size()
    end

    def room_playlist
        return @karaoke_playlist.length()
    end

    def check_in(group)
        @room << group
    end

    def check_out(group)
        @room.pop(group)
    end


end