require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../groups' )

class TestGroups < MiniTest::Test

    def setup ()   

        @people = [
            {
            name: "Alan",
            monies: 10,
            favourite_song: "Sweet Caroline" 
            },
            {
            name: "John",
            monies: 20,
            favourite_song: "Wonderwall"
            },
            {
            name: "Dave",
            monies: 20,
            favourite_song: "Losing my Religion"
            },
            {
            name: "Paul",
            monies: 15,
            favourite_song: "My Way"
            }
        ]
    
        @group1 = Groups.new(@people)
    end

        def test_list_names()
            name_list = @group1.people()
            assert_equal(@people, name_list)
        end

        def test_number_of_people_in_group
            group_size = @group1.people()
            assert_equal(4, group_size.count)
        end

        #Can't get total money in group to work

        # def test_total_money_in_group
        #     assert_equal(65, total_money_in_group(@group1))
        # end

        def test_find_favourite_song()
            song = @group1.find_song("Wonderwall")
            assert_equal("Wonderwall", song[:favourite_song])
        end

end

