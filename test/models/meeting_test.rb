require 'test_helper'

class MeetingTest < ActiveSupport::TestCase
  def setup
    @meeting = Meeting.new(
                           name: "I am a Cat", 
                           start_time: "2019-11-13 07:31:00",
                           end_time: "2019-11-13 07:32:00",
                           start_page: 10,
                           end_page: 20,
                           content: "I AM A CAT. As yet I have no name. I've no idea where I was born."
                           )
  end
  
  test "should be valid" do
    assert @meeting.valid?
  end

  test "name should be present" do
    @meeting.name = "     "
    assert_not @meeting.valid?
  end
  
  test "start_page should be present" do
    @meeting.start_page  = "     "
    assert_not @meeting.valid?
  end
  
  test "end_page should be present" do
    @meeting.end_page  = "     "
    assert_not @meeting.valid?
  end
  
  test "content should be present" do
    @meeting.end_page  = "     "
    assert_not @meeting.valid?
  end

  test "start_page should be integer" do
    assert @meeting.valid?
  end

  test "start_page should not be string" do
    @meeting.start_page  = "ten"
    assert_not @meeting.valid?
  end

  test "end_page should be integer" do
    assert @meeting.valid?
  end

  test "end_page should not be string" do
    @meeting.start_page  = "ten"
    assert_not @meeting.valid?
  end

  test "name should not be too long" do
    @meeting.name = "a" * 51
    assert_not @meeting.valid?
  end
  
  test "content should not be too long" do
    @meeting.content = "a" * 255
    assert_not @meeting.valid?
  end

end
