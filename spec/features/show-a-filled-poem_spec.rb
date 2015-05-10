require "rails_helper"

describe "with a filled poem" do

  it "show it" do
    Given I have_a_filled_poem
    When I get_the_filled_poem
    Then I see_the_filled_poem
  end

end
