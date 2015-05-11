require "rails_helper"

describe Poem do

  describe "#fill_with" do

    it "substitutes responses " do
      poem = Poem.new(title: "doesn't matter for this test",
                      text: "Shall I @{compare: irrelevant} thee to a summer's @{day: irrelevant}? @{dayglo} @{smurf} @{compare}",
                      prompts: %w(irrelevant for this test))
      responses = { "compare" => "unlock", "day" => "brick", "smurf" => "beyond" }
      expect(poem.fill_with responses).
        to eq "Shall I unlock thee to a summer's brick? @{dayglo} beyond unlock"
    end

  end

end
