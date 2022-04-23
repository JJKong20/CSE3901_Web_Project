require "test_helper"

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup

    @admin = Admin.new(fname: "example", lname: "admin", email: "admin@example.com", adminStatus: true, password: "foodbar", password_confirmation: "foodbar")
  end

  test "should be valid" do
    assert @admin.valid?
  end

  test "fname should be present" do
    @admin.fname = " "
    assert_not @admin.valid?
  end

  test "fname should not be too long" do
    @admin.fname = "a" * 51
    assert_not @admin.valid?
  end

  test "lname should be present" do
    @admin.lname = " "
    assert_not @admin.valid?
  end

  test "lname should not be too long" do
    @admin.lname = "a" * 51
    assert_not @admin.valid?
  end

  test "email should be present" do
    @admin.email = " "
    assert_not @admin.valid?
  end

  test "email should not be too long" do
    @admin.email = "a" * 244 + "@example.com"
    assert_not @admin.valid?
  end

  test "email addresses should be unique" do
    duplicate_admin = @admin.dup
    @admin.save
    assert_not duplicate_admin.valid?
  end

  test "password should be present" do
    @admin.password = @admin.password_confirmation = " " * 6
    assert_not @admin.valid?
  end

  test "password should have a minimum length" do
    @admin.password = @admin.password_confirmation = "a" * 5
    assert_not @admin.valid?
  end
end
