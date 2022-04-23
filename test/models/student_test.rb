require "test_helper"

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @student = Student.new(fname: "Example", lname: "Student", email: "Student@example.com", adminStatus: false, password: "foodbar", password_confirmation: "foodbar")
  end

  test "should be valid" do
    assert @student.valid?
  end

  test "fname should be present" do
    @student.fname = " "
    assert_not @student.valid?
  end

  test "fname should not be too long" do
    @student.fname = "a" * 51
    assert_not @student.valid?
  end

  test "lname should be present" do
    @student.lname = " "
    assert_not @student.valid?
  end

  test "lname should not be too long" do
    @student.lname = "a" * 51
    assert_not @student.valid?
  end

  test "email should be present" do
    @student.email = " "
    assert_not @student.valid?
  end

  test "email should not be too long" do
    @student.email = "a" * 244 + "@example.com"
    assert_not @student.valid?
  end

  test "email addresses should be unique" do
    duplicate_student = @student.dup
    @student.save
    assert_not duplicate_student.valid?
  end

  test "password should be present" do
    @student.password = @student.password_confirmation = " " * 6
    assert_not @student.valid?
  end

  test "password should have a minimum length" do
    @student.password = @student.password_confirmation = "a" * 5
    assert_not @student.valid?
  end
end
