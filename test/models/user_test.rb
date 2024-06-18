require "test_helper"

class UserTest < ActiveSupport::TestCase
    def setup
        @email = "test@outlook.com"
        @username = "test"
        @name = "test"

        user_saved = users(:ali)
        @saved_username = user_saved.username
        @saved_email = user_saved.email
    end

    test "should not save user if name is empty" do
        user = User.new(email: @email, username: @username)

        assert_not user.save
    end

    test "should not save user if email is empty" do
        user = User.new(name: @name, username: @username)

        assert_not user.save
    end

    test "should not save user if username is empty" do
        user = User.new(name: @name, email: @email)

        assert_not user.save
    end

    test "should not save user if email is not uniq" do
        user = User.new(name: @name, email: @saved_email, username: @username)

        assert_not user.save
    end
end
