require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "ask", with: "Hello"
    click_on "Ask"

    take_screenshot

    assert_text "I don't care, get dressed and go to work!"

    click_on "Want to ask a new question? Click here!"


  end
end
