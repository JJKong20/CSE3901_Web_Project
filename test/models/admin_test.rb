require "test_helper"

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup

    @admin = Admin.new(fname: "Example", lname: "Admin", email: "admin@example.com", adminStatus: true)
  end

  test "should be valid" do
    assert @admin.valid?
  end

  test "fname should be present" do
    @admin.fname = " "
    assert_not @admin.valid?
  end

  test "lname should be present" do
    @admin.lname = " "
    assert_not @admin.valid?
  end

  test "email should be present" do
    @admin.email = " "
    assert_not @admin.valid?
  end
  
  test "email addresses should be unique" do
    duplicate_admin = @admin.dup
    @admin.save
    assert_not duplicate_admin.valid?
  end
end
