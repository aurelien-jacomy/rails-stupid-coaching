require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "checking answer great!" do
  	visit ask_url
  	fill_in "question", with: "I am going to work"
  	click_on "Ask!"

  	assert_text "Great!"
  end
end
