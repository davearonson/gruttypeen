require "rails_helper"

describe Poem do

  let(:poem) { Poem.new(title: "doesn't matter for this test",
                        text: "Shall I @{compare: irrelevant} thee to a summer's @{day: doesn't matter}? @{dayglo} @{smurf} @{compare}") }

  it "#fill_with substitutes responses " do
    responses = { "compare" => "unlock", "day" => "brick", "smurf" => "beyond" }
    expect(poem.fill_with responses).
      to eq "Shall I unlock thee to a summer's brick? @{dayglo} beyond unlock"
  end

  it "#prompts finds the prompts" do
    expect(poem.prompts).to eq({ "compare" => "irrelevant",
                                 "day" => "doesn't matter" })
  end

end
