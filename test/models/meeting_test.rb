require 'test_helper'

class MeetingTest < ActiveSupport::TestCase
  def setup
    @meeting = Meeting.new(
                           name: "I am a Cat", 
                           start_time: "2019-11-13 07:31:00",
                           end_time: "user@example.com",
                           start_page: 10,
                           end_page: 20,
                           content: "I AM A CAT. As yet I have no name. I've no idea where I was born."
                           )
  end
  
  test "should be valid" do
    assert @meeting.valid?
  end
  
end
