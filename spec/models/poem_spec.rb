require "rails_helper"

describe Poem do

  describe "#fill_with" do

    it "substitutes responses " do
      poem = Poem.new(title: "doesn't matter for this test",
                      text: "Shall I @0 thee to a summer's @1? @42 @10 @0",
                      prompts: %w(doesn't matter for this test))
      responses = %w(compare day)
      responses[10] = "beyond"
      expect(poem.fill_with responses).
        to eq "Shall I compare thee to a summer's day? @42 beyond compare"
    end

  end

end
