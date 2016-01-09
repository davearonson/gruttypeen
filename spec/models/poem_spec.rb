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
    " @{tree: singular of @Trees@}\n"\
    "@{boo: blah blah blah} @{i} a @{see}") }

  it "#fill_with substitutes responses, with proper case and articles" do
    responses = { "Trees" => "ants",
                  "I" => "they",
                  "see" => "pant",
                  "poem" => "aardvark",
                  "lovely" => "tired",
                  "tree" => "ant" }
    expect(poem.fill_with responses).
      to eq("Ants\nThey think that I shall never pant\n"\
            "An aardvark @{ERROR - surprise} tired as an ant\n"\
            "@{ERROR - boo: blah blah blah} they a pant")
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
