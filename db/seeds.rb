# This file should contain all the record creation needed to seed the database with its default values."
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup)."
#"
# Examples:"
#"
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])"
#   Mayor.create(name: 'Emanuel', city: cities.first)"

Poem.create(title: "Trees",
            author: "Joyce Kilmer",
            year: 1913,
            text: [
              "@0, not by Joyce Kilmer",
              ""
              "I think that I shall never @1",
              "A @2 @3 as a @0.",
              "",
              "A @0 whose @5 @6 is @7",
              "@8 the @9’s @10 @11 @12;",
              "",
              "A @0 that @13 at @14 all @15,",
              "And @16 her @17 @18 to @19;",
              "",
              "A @0 that may in Summer @20",
              "A @21 of @22 in her @23;",
              "",
              "Upon whose @24 @25 has @26;",
              "Who @27 @28 with @29.",
              "",
              "@30 are @31 by @32 like @33,",
              "But only @14 can make a @0."
            ].join,
            prompts: [
              "noun, plural, one syllable",
              "verb, one syllable",
              "noun, two syllables, accent on the first",
              "adjective, two syllables, accent on the first",
              "singular of @0",  
              "adjective, two syllables, accent on the first",
              "noun, one syllable",
              "verb, past tense, one syllable",
              "preposition, two syllables, accent on the second",
              "noun there is only one of, one syllable",
              "adjective, one syllable",
              "gerund (-ing form of a verb), two syllables",
              "body part, one syllable, rhyming with @7",
              "verb, third person singular, one syllable",
              "noun there is only one of, one syllable",
              "length of time, one syllable",
              "verb, third person singular, one syllable",
              "adjective, two syllables, accent on the first",
              "body part, one syllable, plural",
              "verb, one syllable, rhyming with @15",
              "verb, one syllable",
              "noun, container, one syllable",
              "animal, plural, two syllables, accent on the first",
              "body part, one syllable, rhyming with @19",
              "body part, two syllables, accent on the first",
              "substance, one syllable",
              "verb, past perfect ('has' form), one syllable",
              "adverb, four syllables, accent on the first",
              "verb, third person singular, one syllable",
              "substance, one syllable, rhyming with @25",
              "noun, plural, two syllables, accent on the first",
              "verb, past perfect ('has' form), one syllable",
              "type of person, plural, one syllable",
              "noun, one syllable, rhyming with @0"
            ]
