require 'test_helper'

class MicropostTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
     @micropost = @user.microposts.build(content: "Lorem ipsum")
<<<<<<< HEAD

=======
>>>>>>> 250a0a5431064f8a84c90dbc077dd456a4582a14
  end

  test "should be valid" do
    assert @micropost.valid?
  end

  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end

  test "content should be present" do
    @micropost.content = "   "
    assert_not @micropost.valid?
  end

  test "content should be at most 140 characters" do
    @micropost.content = "a" * 141
    assert_not @micropost.valid?
  end

  test "order should be most recent first" do
    assert_equal microposts(:most_recent), Micropost.first
  end
<<<<<<< HEAD
end

=======

end
>>>>>>> 250a0a5431064f8a84c90dbc077dd456a4582a14
