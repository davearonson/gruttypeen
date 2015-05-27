require "rails_helper"

describe Poem do

  # note especially a prompt at the very beginning, a back-ref at the end,
  # some back-refs inside prompts, and an *unsatisfied* backref in the middle
  let(:poem) { Poem.new(
    title: "Trees",
    text: "@{Trees: noun, plural, one syllable}\n"\
    "@{I: pronoun} think that I shall never"\
    " @{see: verb, one syllable, rhyming with the singular of @Trees@}\n"\
    "A @{poem: noun, two syllables, accent on the first} @{surprise}"\
    " @{lovely: adjective, two syllables, accent on the first} as a"\
    " @{tree: singular of @Trees@} @{boo: blah blah blah} @{i}") }

  it "#fill_with substitutes responses, with proper case" do
    responses = { "Trees" => "boats",
                  "I" => "they",
                  "see" => "float",
                  "poem" => "boar's head",
                  "lovely" => "tired",
                  "tree" => "boat" }
    expect(poem.fill_with responses).
      to eq("Boats\nThey think that I shall never float\n"\
            "A boar's head @{ERROR - surprise} tired as a boat @{ERROR - boo: blah blah blah} they")
  end

  it "#prompts finds the prompts and translates number back-refs" do
    expect(poem.prompts).to eq({ 
      "Trees" => "noun, plural, one syllable",
      "I" => "pronoun",
      "see" => "verb, one syllable, rhyming with the singular of #1",
      "poem" => "noun, two syllables, accent on the first",
      "lovely" => "adjective, two syllables, accent on the first",
      "tree" => "singular of #1",
      "boo"=>"blah blah blah"
    })
  end

end
