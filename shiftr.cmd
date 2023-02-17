echo Select a race:
echo
echo 1. Dwarf
echo 2. Elf
echo 3. Elothean
echo 4. Gnome
echo 5. Gor'Tog
echo 6. Halfling
echo 7. Human
echo 8. Kaldar
echo 9. Prydaen
echo 10. Rakash
echo 11. S'Kra Mur
echo
matchre Dwarf ^1$
matchre Elf ^2$
matchre Elothean ^3$
matchre Gnome ^4$
matchre GorTog ^5$
matchre Halfling ^6$
matchre Human ^7$
matchre Kaldar ^8$
matchre Prydaen ^9$
matchre Rakash ^10$
matchre SKraMur ^11$
matchwait

Dwarf:
var race Dwarves
goto Humanoid
Elf:
var race Elves
goto Humanoid
Elothean:
var race Elotheans
goto Humanoid
Gnome:
var race Gnomes
goto Humanoid
GorTog:
var race Gor'Togs
goto GorTog2
Halfling:
var race Halflings
goto Humanoid
Human:
var race Humans
goto Humanoid
Kaldar:
var race Kaldar
goto Humanoid
Prydaen:
var race Prydaen
goto Prydaen2
Rakash:
var race Rakash
goto Rakash2
SKraMur:
var race S'Kra Mur
goto SKraMur2

Humanoid:
put OOC %1 Here are the shifts that can be performed on %race:
waitforre ^You whisper to
put OOC %1 Beard (2 plats): longer, shorter, none (no facial hair line in your look)
waitforre ^You whisper to
put OOC %1 Hair Length (2 plats): shorter, longer
waitforre ^You whisper to
put OOC %1 Hair Color (5 plats): grey, white, snow-white, silver, platinum, silver-gilt, flaxen, blonde, ash-blonde, honey, golden, amber, bright orange, red, ginger, red-gold, strawberry, auburn, russet, golden brown, mouse brown, light brown, brunette, brown, dark brown, black, blue-black, bright green, deep blue, deep purple, lavender
waitforre ^You whisper to
put OOC %1 Hair Streak (5 plats): grey, white, snow-white, silver, platinum, silver-gilt, flaxen, blonde, ash-blonde, honey, golden, amber, bright orange, red, ginger, red-gold, strawberry, auburn, russet, golden brown, mouse brown, light brown, brunette, brown, dark brown, black, blue-black, bright green, deep blue, deep purple, lavender, none
waitforre ^You whisper to
put OOC %1 Hair Texture (5 plats): fine, thick, curly, wavy, straight, peppered
waitforre ^You whisper to
put OOC %1 Eye Color (both eyes, right eye, or left eye) (5 plats): blue, gold, crystal blue, sapphire, turquoise, blue-green, emerald, crystal green, moss-green, leaf-green, green, jade, hazel, topaz, milky blue, amber, ale-brown, brown, dark, dark brown, black, silver, milky white, steely grey, stormy grey, grey, blue-grey, violet, red, clear colored
waitforre ^You whisper to
put OOC %1 Eye Shape (10 plats): almond-shaped, tilted, thick-lashed, gold-flecked, silver-flecked, wide-set, close-set, deep-set, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, tilted almond-shaped, standard
waitforre ^You whisper to
put OOC %1 Skin Color (5 plats): pale, fair, tanned, rosy, copper, dark, dark brown, black, ebon, smooth, pockmarked, leathery, weathered, translucent, blue-veined, wrinkled, freckled
waitforre ^You whisper to
put OOC %1 Dimples (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Cleft Chin (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Ear Shape (10 plats): slightly pointed ears, pointed ears, standard
waitforre ^You whisper to
put OOC %1 Distinguishing Mark (10 plats): elegant arched eyebrows, heavy jowls, laugh lines, missing tooth, frown lines around her mouth, generous mouth, pouting lips, none
waitforre ^You whisper to
put OOC %1 Face Shape (10 plats): heart-shaped, oval, round, square, triangular, square-jawed, angular, standard
waitforre ^You whisper to
put OOC %1 Nose Shape (10 plats): upturned, button, small, classical, straight, freckled, beak-like, hooked, aquiline, bulbous, crooked, broken, pointy, wart-tipped, pinched, standard
waitforre ^You whisper to
put OOC %1 Height (10 plats): shorter, taller
waitforre ^You whisper to
put OOC %1 Gender (20 plats): male, female
waitforre ^You whisper to
put OOC %1 Build (20 plats): rotund, portly, pot-bellied, slender, emaciated, scrawny, thin, lean, wiry, plump, stout, matronly (females only), lithe, lissome, athletic, brawny, burly, svelte, stocky, shapely, hefty, curvaceous, generous, fat, standard
waitforre ^You whisper to
put OOC %1 Age (Year) (25 plats): younger, older
waitforre ^You whisper to
put OOC %1 The 'standard' option sets that feature to the default value for %race (often absent or not described).
waitforre ^You whisper to
goto end

GorTog2:
put OOC %1 Here are the shifts that can be performed on %race:
waitforre ^You whisper to
put OOC %1 Eye Color (both eyes, right eye, or left eye) (5 plats): blue, gold, crystal blue, sapphire, turquoise, blue-green, emerald, crystal green, moss-green, leaf-green, green, jade, hazel, topaz, milky blue, amber, ale-brown, brown, dark, dark brown, black, silver, milky white, steely grey, stormy grey, grey, blue-grey, violet, red, clear colored
waitforre ^You whisper to
put OOC %1 Eye Shape (10 plats): almond-shaped, tilted, crinkled, gold-flecked, silver-flecked, wide-set, close-set, deep-set, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, standard
waitforre ^You whisper to
put OOC %1 Skin Color (5 plats): pale green, green, olive, emerald, jade, dusky olive, green-grey, dark green, ebon, smooth, pockmarked, leathery, weathered, bronze-green, coppery-green, wrinkled
waitforre ^You whisper to
put OOC %1 Dimples (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Cleft Chin (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Ear Shape (10 plats): slightly pointed ears, pointed ears, standard
waitforre ^You whisper to
put OOC %1 Distinguishing Mark (10 plats): elegant arched eyebrows, heavy jowls, laugh lines, missing tooth, frown lines around her mouth, generous mouth, pouting lips, none
waitforre ^You whisper to
put OOC %1 Face Shape (10 plats): heart-shaped, oval, round, square, triangular, square-jawed, angular, standard
waitforre ^You whisper to
put OOC %1 Nose Shape (10 plats): upturned, button, small, classical, straight, freckled, beak-like, hooked, aquiline, bulbous, crooked, broken, pointy, wart-tipped, pinched, standard
waitforre ^You whisper to
put OOC %1 Height (10 plats): shorter, taller
waitforre ^You whisper to
put OOC %1 Gender (20 plats): male, female
waitforre ^You whisper to
put OOC %1 Build (20 plats): rotund, portly, pot-bellied, slender, emaciated, scrawny, thin, lean, wiry, plump, stout, matronly (females only), lithe, lissome, athletic, brawny, burly, svelte, stocky, shapely, hefty, curvaceous, generous, fat, standard
waitforre ^You whisper to
put OOC %1 Age (Year) (25 plats): younger, older
waitforre ^You whisper to
put OOC %1 The 'standard' option sets that feature to the default value for %race (often absent or not described).
waitforre ^You whisper to
goto end

Prydaen2:
put OOC %1 Here are the shifts that can be performed on %race:
waitforre ^You whisper to
put OOC %1 Mane Length (2 plats): shorter, longer
waitforre ^You whisper to
put OOC %1 Mane Color (5 plats): grey, white, snow-white, silver, platinum, silver-gilt, flaxen, blonde, ash-blonde, honey, golden, amber, bright orange, red, ginger, red-gold, strawberry, auburn, russet, golden brown, mouse brown, light brown, brunette, brown, dark brown, black, blue-black, bright green, deep blue, deep purple, lavender
waitforre ^You whisper to
put OOC %1 Mane Streak (5 plats): grey, white, snow-white, silver, platinum, silver-gilt, flaxen, blonde, ash-blonde, honey, golden, amber, bright orange, red, ginger, red-gold, strawberry, auburn, russet, golden brown, mouse brown, light brown, brunette, brown, dark brown, black, blue-black, bright green, deep blue, deep purple, lavender, none
waitforre ^You whisper to
put OOC %1 Mane Texture (5 plats): fine, thick, curly, wavy, straight, peppered
waitforre ^You whisper to
put OOC %1 Eye Color (both eyes, right eye, or left eye) (5 plats): blue, gold, crystal blue, sapphire, turquoise, blue-green, emerald, crystal green, moss-green, leaf-green, green, jade, hazel, topaz, milky blue, amber, ale-brown, brown, dark, dark brown, black, silver, milky white, steely grey, stormy grey, grey, blue-grey, violet, red, clear colored
waitforre ^You whisper to
put OOC %1 Eye Shape (10 plats): slanted, tilted, thick-lashed, gold-flecked, silver-flecked, wide, small, bright, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, standard
waitforre ^You whisper to
put OOC %1 Fur Color (5 plats): white, silver, grey, blue-grey, sandy, tawny, sepia, rust-colored, brown, black, calico, tortoiseshell, orange, creamy white, golden, dark brown
waitforre ^You whisper to
put OOC %1 Primary Markings (5 plats): white belly, silver belly, grey belly, sepia belly, brown belly, black belly, white points, silver points, grey points, sepia points, brown points, black points, glittered, none
waitforre ^You whisper to
put OOC %1 Secondary Color (5 plats): white, silver, grey, blonde, tan, ruddy, sable, silvered black, black, sepia, none
waitforre ^You whisper to
put OOC %1 Secondary Markings (5 plats): stripes, spots, rosettes, marbling, none
waitforre ^You whisper to
put OOC %1 Dimples (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Cleft Chin (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Tufted Tail (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Ear Shape (10 plats): slightly pointed ears, pointed ears, standard
waitforre ^You whisper to
put OOC %1 Tail Shape (10 plats): slender tail, crooked tail, long tail, stubby tail, thick tail, kinked tail, straight tail, curving tail
waitforre ^You whisper to
put OOC %1 Distinguishing Mark (10 plats): elegant arched eyebrows, heavy jowls, laugh lines, missing tooth, frown lines around her mouth, generous mouth, pouting lips, none
waitforre ^You whisper to
put OOC %1 Face Shape (10 plats): heart-shaped, oval, round, square, triangular, square-jawed, angular, standard
waitforre ^You whisper to
put OOC %1 Tufted Ears (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Nose Shape (10 plats): upturned, button, small, classical, straight, narrow, beak-like, hooked, aquiline, bulbous, crooked, broken, pointy, pushed-in, pinched, standard
waitforre ^You whisper to
put OOC %1 Height (10 plats): shorter, taller
waitforre ^You whisper to
put OOC %1 Gender (20 plats): male, female
waitforre ^You whisper to
put OOC %1 Build (20 plats): rotund, portly, pot-bellied, slender, emaciated, scrawny, thin, lean, wiry, plump, stout, matronly (females only), lithe, lissome, athletic, brawny, burly, svelte, stocky, shapely, hefty, curvaceous, generous, fat, standard
waitforre ^You whisper to
put OOC %1 Age (Year) (25 plats): younger, older
waitforre ^You whisper to
put OOC %1 The 'standard' option sets that feature to the default value for %race (often absent or not described).
waitforre ^You whisper to
goto end

Rakash2:
put OOC %1 Here are the shifts that can be performed on %race:
waitforre ^You whisper to
put OOC %1 Beard (2 plats): longer, shorter, none (no facial hair line in your look)
waitforre ^You whisper to
put OOC %1 Hair Length (2 plats): shorter, longer
waitforre ^You whisper to
put OOC %1 Hair Color (5 plats): grey, white, snow-white, silver, platinum, silver-gilt, flaxen, blonde, ash-blonde, honey, golden, amber, bright orange, red, ginger, red-gold, strawberry, auburn, russet, golden brown, mouse brown, light brown, brunette, brown, dark brown, black, blue-black, bright green, deep blue, deep purple, lavender
waitforre ^You whisper to
put OOC %1 Hair Streak (5 plats): grey, white, snow-white, silver, platinum, silver-gilt, flaxen, blonde, ash-blonde, honey, golden, amber, bright orange, red, ginger, red-gold, strawberry, auburn, russet, golden brown, mouse brown, light brown, brunette, brown, dark brown, black, blue-black, bright green, deep blue, deep purple, lavender, none
waitforre ^You whisper to
put OOC %1 Hair Texture (5 plats): fine, thick, curly, wavy, straight, peppered
waitforre ^You whisper to
put OOC %1 Eye Color (both eyes, right eye, or left eye) (5 plats): blue, gold, crystal blue, sapphire, turquoise, blue-green, emerald, crystal green, moss-green, leaf-green, green, jade, hazel, topaz, milky blue, amber, ale-brown, brown, dark, dark brown, black, silver, milky white, steely grey, stormy grey, grey, blue-grey, violet, red, clear colored
waitforre ^You whisper to
put OOC %1 Moonskin Eye Color (5 plats): blue, gold, crystal blue, sapphire, turquoise, blue-green, emerald, green, moss-green, leaf-green, crystal green, jade, hazel, topaz, milky blue, amber, ale-brown, brown, dark, dark brown, black, silver, milky white, steely grey, stormy grey, grey, blue-grey, violet, red, clear colored
waitforre ^You whisper to
put OOC %1 Eye Shape (10 plats): almond-shaped, tilted, thick-lashed, gold-flecked, silver-flecked, wide-set, close-set, deep-set, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, standard
waitforre ^You whisper to
put OOC %1 Moonskin Eye Shape (10 plats): slanted, tilted, thick-lashed, gold-flecked, silver-flecked, wide, small, bright, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, standard, absentslanted, tilted, thick-lashed, gold-flecked, silver-flecked, wide, small, bright, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, standard
waitforre ^You whisper to
put OOC %1 Skin Color (5 plats): pale, fair, tanned, rosy, copper, dark, dark brown, black, ebon, smooth, pockmarked, leathery, weathered, translucent, blue-veined, wrinkled, freckled
waitforre ^You whisper to
put OOC %1 Moonskin Fur Color (5 plats): white, silver, grey, blonde, agouti, tan, ruddy, piebald, sable, silvered black, black, tri-color, brown, brindled, fawn, russet
waitforre ^You whisper to
put OOC %1 Primary Markings (5 plats): white, silver, grey, blonde, tan, ruddy, sable, silvered black, none
waitforre ^You whisper to
put OOC %1 Secondary Color (5 plats): white, silver, grey, blonde, tan, ruddy, sable, silvered black, black, sepia, none
waitforre ^You whisper to
put OOC %1 Dimples (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Cleft Chin (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Ear Shape (10 plats): slightly pointed ears, pointed ears, standard
waitforre ^You whisper to
put OOC %1 Tail Shape (10 plats): slender tail, crooked tail, long tail, stubby tail, thick tail, kinked tail, straight tail, curving tail
waitforre ^You whisper to
put OOC %1 Distinguishing Mark (10 plats): elegant arched eyebrows, heavy jowls, laugh lines, missing tooth, frown lines around her mouth, generous mouth, pouting lips, none
waitforre ^You whisper to
put OOC %1 Face Shape (10 plats): heart-shaped, oval, round, square, triangular, square-jawed, angular, standard
waitforre ^You whisper to
put OOC %1 Moonskin Face Shape (10 plats): pointy-eared, wolfish, pudgy, square, triangular, classic lupine, angular, standard
waitforre ^You whisper to
put OOC %1 Nose Shape (10 plats): upturned, button, small, classical, straight, freckled, beak-like, hooked, aquiline, bulbous, crooked, broken, pointy, wart-tipped, pinched, standard
waitforre ^You whisper to
put OOC %1 Moonskin Muzzle Shape (10 plats): slender, pug, narrow, elegant, straight, squared, long, dewlapped, blunted, stubby, patchy, crooked, pointed, rounded, pushed-in, standard
waitforre ^You whisper to
put OOC %1 Height (10 plats): shorter, taller
waitforre ^You whisper to
put OOC %1 Gender (20 plats): male, female
waitforre ^You whisper to
put OOC %1 Build (20 plats): rotund, portly, pot-bellied, slender, emaciated, scrawny, thin, lean, wiry, plump, stout, matronly (females only), lithe, lissome, athletic, brawny, burly, svelte, stocky, shapely, hefty, curvaceous, generous, fat, standard
waitforre ^You whisper to
put OOC %1 Age (Year) (25 plats): younger, older
waitforre ^You whisper to
put OOC %1 Moonskin-related features can only be shifted while you are in moonskin.
waitforre ^You whisper to
put OOC %1 Some features, such as 'human' skin color and moonskin fur color, can be altered independently via shift. (In other words, having your fur shifted to another color won't affect your skin color, and vice versa.)
waitforre ^You whisper to
put OOC %1 The 'standard' option sets that feature to the default value for %race (often absent or not described).
waitforre ^You whisper to
goto end

SKraMur2:
put OOC %1 Here are the shifts that can be performed on %race:
waitforre ^You whisper to
put OOC %1 Eye Color (both eyes, right eye, or left eye) (5 plats): blue, gold, crystal blue, sapphire, turquoise, blue-green, emerald, crystal green, moss-green, leaf-green, green, jade, hazel, topaz, milky blue, amber, ale-brown, brown, dark, dark brown, black, silver, milky white, steely grey, stormy grey, grey, blue-grey, violet, red, clear colored
waitforre ^You whisper to
put OOC %1 Eye Shape (10 plats): almond-shaped, tilted, crinkled, gold-flecked, silver-flecked, wide-set, close-set, deep-set, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, standard
waitforre ^You whisper to
put OOC %1 Scale Color (5 plats): grey, sorrel, brown, green, green-grey, olive, black, green-brown, golden, silver, white, mottled, speckled, camouflage, dark gold-edged, red-gold
waitforre ^You whisper to
put OOC %1 Dimples (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Cleft Chin (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Pale Silver Underbelly (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Tail Shape (10 plats): slender tail, crooked tail, long tail, stubby tail, thick tail, kinked tail, straight tail, curving tail
waitforre ^You whisper to
put OOC %1 Distinguishing Mark (10 plats): elegant arched eyebrows, heavy jowls, laugh lines, missing tooth, frown lines around her mouth, generous mouth, pouting lips, none
waitforre ^You whisper to
put OOC %1 Face Shape (10 plats): elongated, flat-featured, round, shallow-featured, triangular, sharp-featured, angular, standard
waitforre ^You whisper to
put OOC %1 Flexible Ridged Crest (think mohawk) (10 plats): present, absent
waitforre ^You whisper to
put OOC %1 Snout Shape (10 plats): slender, narrow, elegant, straight, squared, long, upturned, blunt, rounded, flat, crooked, pointed, striped, speckled, dappled, standard
waitforre ^You whisper to
put OOC %1 Height (10 plats): shorter, taller
waitforre ^You whisper to
put OOC %1 Gender (20 plats): male, female
waitforre ^You whisper to
put OOC %1 Build (20 plats): rotund, portly, pot-bellied, slender, emaciated, scrawny, thin, lean, wiry, plump, stout, matronly (females only), lithe, lissome, athletic, brawny, burly, svelte, stocky, shapely, hefty, curvaceous, generous, fat, standard
waitforre ^You whisper to
put OOC %1 Age (Year) (25 plats): younger, older
waitforre ^You whisper to
put OOC %1 The 'standard' option sets that feature to the default value for %race (often absent or not described).
waitforre ^You whisper to
goto end

End:
exit