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
            text: <<-EOT.gsub(/^ */, "").gsub(/\n\Z/, ""))
            @{Trees: noun, plural, one syllable} not by Joyce Kilmer

            I think that I shall never @{see: verb, one syllable}
            A poem @{lovely: adjective, two syllables, accent on the first} as a @{tree: singular of @Trees@}.

            A @{tree} whose @{hungry: adjective, two syllables, accent on the first} @{mouth: noun, one syllable} is @{prest: verb, past tense, one syllable}
            Upon the @{earth: noun there is only one of, one syllable}’s @{sweet: adjective, one syllable} flowing @{breast: body part, one syllable, rhyming with @prest@};

            A @{tree} that @{looks: verb, third person singular, one syllable} at God all @{day: length of time, one syllable},
            And lifts her leafy @{arms: body part, one syllable, plural} to @{pray: verb, one syllable, rhyming with @day@};

            A @{tree} that may in Summer @{wear: verb, one syllable}
            A nest of @{robins: animal, plural, two syllables, accent on the first} in her @{hair: body part, one syllable, rhyming with @wear@};

            Upon whose bosom @{snow: substance, one syllable} has @{lain: verb, past perfect ('has' form), one syllable};
            Who intimately lives with @{rain: substance, one syllable, rhyming with @lain@}.

            Poems are made by @{fools: type of person, plural, one syllable} like @{me: noun, one syllable, rhyming with @tree@},
            But only God can make a @{tree}.
EOT

Poem.create(title: "Roses are Red",
            author: "unknown",
            text: <<-EOT.gsub(/^ */, "").gsub(/\n\Z/, ""))
            @{Roses: noun, plural, two syllables, accent on the first} are @{red: adjective, one syllable}
            @{Violets: noun, plural, two syllables, accent on the first} are @{blue: adjective, one syllable}
            @{Sugar: noun, two syllables, accent on the first} is @{sweet: adjective, one syllable}
            And so are @{you: noun, plural, one syllable, rhyming with @blue@}.
EOT

Poem.create(title: "How Do I Love Thee? Let Me Count the Ways",
            author: "Elizabeth Barrett Browning",
            text: <<-EOT.gsub(/^ */, "").gsub(/\n\Z/, ""))
            How do I @{love: verb, transitive, one syllable} thee? Let me count the @{ways: noun, plural, one syllable}.
            I @{love} thee to the depth and breadth and height
            My @{soul: noun, one syllable} can @{reach: verb, one syllable}, when feeling out of sight
            For the ends of Being and ideal Grace.
            I @{love} thee to the level of every day's
            Most @{quiet: adjective, two syllables, accent on the first} need, by @{sun: noun, one syllable} and candle-light.
            I @{love} thee @{freely: adverb, two syllables}, as men strive for right;
            I @{love} thee @{purely: adverb, two syllables}, as they turn from praise,
            I @{love} thee with the @{passion: noun, two syllables, accent on the first} put to @{use: verb, transitive, one syllable}
            In my old @{griefs: noun, plural, one syllable}, and with my childhood's faith.
            I @{love} thee with a @{love} I seemed to @{lose: verb, transitive, one syllable, rhyming with @use@}
            With my lost saints -I @{love} thee with the @{breath: noun, one syllable},
            Smiles, tears, of all my @{life: noun, one syllable}! -and, if God choose,
            I shall but @{love} thee better after @{death: noun, one syllable, rhyming with @breath@}.
EOT

Poem.create(title: "If I Can Stop One Heart",
            author: "Emily Dickinson",
            text: <<-EOT.gsub(/^ */, "").gsub(/\n\Z/, ""))
            If I can stop one @{heart: noun, one syllable} from @{breaking: gerund ("ing" verb), two syllables},
            I shall not @{live: verb, intransitive, one syllable} in vain;
            If I can ease one @{life: noun, one syllable} the @{aching: gerund, two syllables, rhyming with @breaking@},
            Or @{cool: verb, transitive, one syllable} one pain,
            Or help one @{fainting: gerund, two syllables} @{robin: animal}
            Unto his @{nest: noun, one syllable} again,
            I shall not @{live} in vain.
EOT

Poem.create(title: "All That Is Gold Does Not Glitter",
            author: "J.R.R. Tolkien",
            text: <<-EOT.gsub(/^ */, "").gsub(/\n\Z/, ""))
            All that is @{gold: substance, one syllable} does not glitter,
            Not all those who @{wander: verb, intransitive, two syllables, accent on the first} are @{lost: adjective, one syllable};
            The old that is @{strong: adjective, one syllable} does not wither,
            @{Deep: adjective, one syllable} roots are not reached by the @{frost: noun, one syllable, rhyming with @lost@}.

            From the ashes a @{fire: noun, one syllable} shall be woken,
            A light from the shadows shall @{spring: verb, one syllable};
            Renewed shall be @{blade: noun, one syllable} that was broken,
            The @{crown: noun, one syllable}less again shall be @{king: noun, one syllable, rhyming with @spring@}.
EOT

Poem.create(title: "The Eagle",
            author: "Alfred Lord Tennyson",
            text: <<-EOT.gsub(/^ */, "").gsub(/\n\Z/, ""))
            He clasps the @{crag: noun, one syllable} with @{crooked: adjective, two syllables, accent on the first} hands;
            Close to the @{sun: noun, one syllable} in @{lonely: adjective, two syllables, accent on the first} lands,
            Ringed with the @{azure: adjective, two syllables, accent on the first} world, he stands.

            The @{wrinkled: adjective, two syllables, accent on the first} sea beneath him crawls;
            He @{watches: verb, two syllables, accent on the first}s from his mountain walls,
            And like a @{thunderbolt: noun, three syllables, accent on the first} he falls.
EOT

# note: had to s/\ban\b/a/ -- code changes coming soon to handle that automagically
Poem.create(title: "The Arrow and The Song",
            author: "Henry Wadsworth Longfellow",
            text: <<-EOT.gsub(/^ */, "").gsub(/\n\Z/, ""))
            I shot a @{arrow: noun, two syllables, accent on the first} into the air,
            It fell to earth, I knew not where;
            For, so @{swiftly: adverb, two syllables} it @{flew: verb, past tense, one syllable}, the sight
            Could not @{follow: verb, two syllables, accent on the first} it in its flight.

            I breathed a @{song: noun, one syllable} into the air,
            It fell to earth, I knew not where;
            For who has sight so @{keen: adjective, one syllable} and @{strong: adjective, one syllable, rhyming with @song@},
            That it can @{follow} the flight of @{song}?

            Long, long afterward, in a @{oak: noun, one syllable}
            I found the @{arrow}, still @{unbroke: adjective, two syllables, accent on the second};
            And the @{song}, from beginning to end,
            I found again in the @{heart: noun, one syllable} of a friend.
EOT
