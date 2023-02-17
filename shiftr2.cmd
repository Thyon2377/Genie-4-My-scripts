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
echo Here are the shifts that can be performed on %race:

echo Beard (2 plats): longer, shorter, none (no facial hair line in your look)

echo Hair Length (2 plats): shorter, longer

echo Hair Color (5 plats): grey, white, snow-white, silver, platinum, silver-gilt, flaxen, blonde, ash-blonde, honey, golden, amber, bright orange, red, ginger, red-gold, strawberry, auburn, russet, golden brown, mouse brown, light brown, brunette, brown, dark brown, black, blue-black, bright green, deep blue, deep purple, lavender

echo Hair Streak (5 plats): grey, white, snow-white, silver, platinum, silver-gilt, flaxen, blonde, ash-blonde, honey, golden, amber, bright orange, red, ginger, red-gold, strawberry, auburn, russet, golden brown, mouse brown, light brown, brunette, brown, dark brown, black, blue-black, bright green, deep blue, deep purple, lavender, none

echo Hair Texture (5 plats): fine, thick, curly, wavy, straight, peppered

echo Eye Color (both eyes, right eye, or left eye) (5 plats): blue, gold, crystal blue, sapphire, turquoise, blue-green, emerald, crystal green, moss-green, leaf-green, green, jade, hazel, topaz, milky blue, amber, ale-brown, brown, dark, dark brown, black, silver, milky white, steely grey, stormy grey, grey, blue-grey, violet, red, clear colored

echo Eye Shape (10 plats): almond-shaped, tilted, thick-lashed, gold-flecked, silver-flecked, wide-set, close-set, deep-set, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, tilted almond-shaped, standard

echo Skin Color (5 plats): pale, fair, tanned, rosy, copper, dark, dark brown, black, ebon, smooth, pockmarked, leathery, weathered, translucent, blue-veined, wrinkled, freckled

echo Dimples (10 plats): present, absent

echo Cleft Chin (10 plats): present, absent

echo Ear Shape (10 plats): slightly pointed ears, pointed ears, standard

echo Distinguishing Mark (10 plats): elegant arched eyebrows, heavy jowls, laugh lines, missing tooth, frown lines around her mouth, generous mouth, pouting lips, none

echo Face Shape (10 plats): heart-shaped, oval, round, square, triangular, square-jawed, angular, standard

echo Nose Shape (10 plats): upturned, button, small, classical, straight, freckled, beak-like, hooked, aquiline, bulbous, crooked, broken, pointy, wart-tipped, pinched, standard

echo Height (10 plats): shorter, taller

echo Gender (20 plats): male, female

echo Build (20 plats): rotund, portly, pot-bellied, slender, emaciated, scrawny, thin, lean, wiry, plump, stout, matronly (females only), lithe, lissome, athletic, brawny, burly, svelte, stocky, shapely, hefty, curvaceous, generous, fat, standard

echo Age (Year) (25 plats): younger, older

echo The 'standard' option sets that feature to the default value for %race (often absent or not described).

goto end

GorTog2:
echo Here are the shifts that can be performed on %race:

echo Eye Color (both eyes, right eye, or left eye) (5 plats): blue, gold, crystal blue, sapphire, turquoise, blue-green, emerald, crystal green, moss-green, leaf-green, green, jade, hazel, topaz, milky blue, amber, ale-brown, brown, dark, dark brown, black, silver, milky white, steely grey, stormy grey, grey, blue-grey, violet, red, clear colored

echo Eye Shape (10 plats): almond-shaped, tilted, crinkled, gold-flecked, silver-flecked, wide-set, close-set, deep-set, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, standard

echo Skin Color (5 plats): pale green, green, olive, emerald, jade, dusky olive, green-grey, dark green, ebon, smooth, pockmarked, leathery, weathered, bronze-green, coppery-green, wrinkled

echo Dimples (10 plats): present, absent

echo Cleft Chin (10 plats): present, absent

echo Ear Shape (10 plats): slightly pointed ears, pointed ears, standard

echo Distinguishing Mark (10 plats): elegant arched eyebrows, heavy jowls, laugh lines, missing tooth, frown lines around her mouth, generous mouth, pouting lips, none

echo Face Shape (10 plats): heart-shaped, oval, round, square, triangular, square-jawed, angular, standard

echo Nose Shape (10 plats): upturned, button, small, classical, straight, freckled, beak-like, hooked, aquiline, bulbous, crooked, broken, pointy, wart-tipped, pinched, standard

echo Height (10 plats): shorter, taller

echo Gender (20 plats): male, female

echo Build (20 plats): rotund, portly, pot-bellied, slender, emaciated, scrawny, thin, lean, wiry, plump, stout, matronly (females only), lithe, lissome, athletic, brawny, burly, svelte, stocky, shapely, hefty, curvaceous, generous, fat, standard

echo Age (Year) (25 plats): younger, older

echo The 'standard' option sets that feature to the default value for %race (often absent or not described).

goto end

Prydaen2:
echo Here are the shifts that can be performed on %race:

echo Mane Length (2 plats): shorter, longer

echo Mane Color (5 plats): grey, white, snow-white, silver, platinum, silver-gilt, flaxen, blonde, ash-blonde, honey, golden, amber, bright orange, red, ginger, red-gold, strawberry, auburn, russet, golden brown, mouse brown, light brown, brunette, brown, dark brown, black, blue-black, bright green, deep blue, deep purple, lavender

echo Mane Streak (5 plats): grey, white, snow-white, silver, platinum, silver-gilt, flaxen, blonde, ash-blonde, honey, golden, amber, bright orange, red, ginger, red-gold, strawberry, auburn, russet, golden brown, mouse brown, light brown, brunette, brown, dark brown, black, blue-black, bright green, deep blue, deep purple, lavender, none

echo Mane Texture (5 plats): fine, thick, curly, wavy, straight, peppered

echo Eye Color (both eyes, right eye, or left eye) (5 plats): blue, gold, crystal blue, sapphire, turquoise, blue-green, emerald, crystal green, moss-green, leaf-green, green, jade, hazel, topaz, milky blue, amber, ale-brown, brown, dark, dark brown, black, silver, milky white, steely grey, stormy grey, grey, blue-grey, violet, red, clear colored

echo Eye Shape (10 plats): slanted, tilted, thick-lashed, gold-flecked, silver-flecked, wide, small, bright, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, standard

echo Fur Color (5 plats): white, silver, grey, blue-grey, sandy, tawny, sepia, rust-colored, brown, black, calico, tortoiseshell, orange, creamy white, golden, dark brown

echo Primary Markings (5 plats): white belly, silver belly, grey belly, sepia belly, brown belly, black belly, white points, silver points, grey points, sepia points, brown points, black points, glittered, none

echo Secondary Color (5 plats): white, silver, grey, blonde, tan, ruddy, sable, silvered black, black, sepia, none

echo Secondary Markings (5 plats): stripes, spots, rosettes, marbling, none

echo Dimples (10 plats): present, absent

echo Cleft Chin (10 plats): present, absent

echo Tufted Tail (10 plats): present, absent

echo Ear Shape (10 plats): slightly pointed ears, pointed ears, standard

echo Tail Shape (10 plats): slender tail, crooked tail, long tail, stubby tail, thick tail, kinked tail, straight tail, curving tail

echo Distinguishing Mark (10 plats): elegant arched eyebrows, heavy jowls, laugh lines, missing tooth, frown lines around her mouth, generous mouth, pouting lips, none

echo Face Shape (10 plats): heart-shaped, oval, round, square, triangular, square-jawed, angular, standard

echo Tufted Ears (10 plats): present, absent

echo Nose Shape (10 plats): upturned, button, small, classical, straight, narrow, beak-like, hooked, aquiline, bulbous, crooked, broken, pointy, pushed-in, pinched, standard

echo Height (10 plats): shorter, taller

echo Gender (20 plats): male, female

echo Build (20 plats): rotund, portly, pot-bellied, slender, emaciated, scrawny, thin, lean, wiry, plump, stout, matronly (females only), lithe, lissome, athletic, brawny, burly, svelte, stocky, shapely, hefty, curvaceous, generous, fat, standard

echo Age (Year) (25 plats): younger, older

echo The 'standard' option sets that feature to the default value for %race (often absent or not described).

goto end

Rakash2:
echo Here are the shifts that can be performed on %race:

echo Beard (2 plats): longer, shorter, none (no facial hair line in your look)

echo Hair Length (2 plats): shorter, longer

echo Hair Color (5 plats): grey, white, snow-white, silver, platinum, silver-gilt, flaxen, blonde, ash-blonde, honey, golden, amber, bright orange, red, ginger, red-gold, strawberry, auburn, russet, golden brown, mouse brown, light brown, brunette, brown, dark brown, black, blue-black, bright green, deep blue, deep purple, lavender

echo Hair Streak (5 plats): grey, white, snow-white, silver, platinum, silver-gilt, flaxen, blonde, ash-blonde, honey, golden, amber, bright orange, red, ginger, red-gold, strawberry, auburn, russet, golden brown, mouse brown, light brown, brunette, brown, dark brown, black, blue-black, bright green, deep blue, deep purple, lavender, none

echo Hair Texture (5 plats): fine, thick, curly, wavy, straight, peppered

echo Eye Color (both eyes, right eye, or left eye) (5 plats): blue, gold, crystal blue, sapphire, turquoise, blue-green, emerald, crystal green, moss-green, leaf-green, green, jade, hazel, topaz, milky blue, amber, ale-brown, brown, dark, dark brown, black, silver, milky white, steely grey, stormy grey, grey, blue-grey, violet, red, clear colored

echo Moonskin Eye Color (5 plats): blue, gold, crystal blue, sapphire, turquoise, blue-green, emerald, green, moss-green, leaf-green, crystal green, jade, hazel, topaz, milky blue, amber, ale-brown, brown, dark, dark brown, black, silver, milky white, steely grey, stormy grey, grey, blue-grey, violet, red, clear colored

echo Eye Shape (10 plats): almond-shaped, tilted, thick-lashed, gold-flecked, silver-flecked, wide-set, close-set, deep-set, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, standard

echo Moonskin Eye Shape (10 plats): slanted, tilted, thick-lashed, gold-flecked, silver-flecked, wide, small, bright, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, standard, absentslanted, tilted, thick-lashed, gold-flecked, silver-flecked, wide, small, bright, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, standard

echo Skin Color (5 plats): pale, fair, tanned, rosy, copper, dark, dark brown, black, ebon, smooth, pockmarked, leathery, weathered, translucent, blue-veined, wrinkled, freckled

echo Moonskin Fur Color (5 plats): white, silver, grey, blonde, agouti, tan, ruddy, piebald, sable, silvered black, black, tri-color, brown, brindled, fawn, russet

echo Primary Markings (5 plats): white, silver, grey, blonde, tan, ruddy, sable, silvered black, none

echo Secondary Color (5 plats): white, silver, grey, blonde, tan, ruddy, sable, silvered black, black, sepia, none

echo Dimples (10 plats): present, absent

echo Cleft Chin (10 plats): present, absent

echo Ear Shape (10 plats): slightly pointed ears, pointed ears, standard

echo Tail Shape (10 plats): slender tail, crooked tail, long tail, stubby tail, thick tail, kinked tail, straight tail, curving tail

echo Distinguishing Mark (10 plats): elegant arched eyebrows, heavy jowls, laugh lines, missing tooth, frown lines around her mouth, generous mouth, pouting lips, none

echo Face Shape (10 plats): heart-shaped, oval, round, square, triangular, square-jawed, angular, standard

echo Moonskin Face Shape (10 plats): pointy-eared, wolfish, pudgy, square, triangular, classic lupine, angular, standard

echo Nose Shape (10 plats): upturned, button, small, classical, straight, freckled, beak-like, hooked, aquiline, bulbous, crooked, broken, pointy, wart-tipped, pinched, standard

echo Moonskin Muzzle Shape (10 plats): slender, pug, narrow, elegant, straight, squared, long, dewlapped, blunted, stubby, patchy, crooked, pointed, rounded, pushed-in, standard

echo Height (10 plats): shorter, taller

echo Gender (20 plats): male, female

echo Build (20 plats): rotund, portly, pot-bellied, slender, emaciated, scrawny, thin, lean, wiry, plump, stout, matronly (females only), lithe, lissome, athletic, brawny, burly, svelte, stocky, shapely, hefty, curvaceous, generous, fat, standard

echo Age (Year) (25 plats): younger, older

echo Moonskin-related features can only be shifted while you are in moonskin.

echo Some features, such as 'human' skin color and moonskin fur color, can be altered independently via shift. (In other words, having your fur shifted to another color won't affect your skin color, and vice versa.)

echo The 'standard' option sets that feature to the default value for %race (often absent or not described).

goto end

SKraMur2:
echo Here are the shifts that can be performed on %race:

echo Eye Color (both eyes, right eye, or left eye) (5 plats): blue, gold, crystal blue, sapphire, turquoise, blue-green, emerald, crystal green, moss-green, leaf-green, green, jade, hazel, topaz, milky blue, amber, ale-brown, brown, dark, dark brown, black, silver, milky white, steely grey, stormy grey, grey, blue-grey, violet, red, clear colored

echo Eye Shape (10 plats): almond-shaped, tilted, crinkled, gold-flecked, silver-flecked, wide-set, close-set, deep-set, limpid, sparkling, crossed, twitching, red-veined, beady, bulging, standard

echo Scale Color (5 plats): grey, sorrel, brown, green, green-grey, olive, black, green-brown, golden, silver, white, mottled, speckled, camouflage, dark gold-edged, red-gold

echo Dimples (10 plats): present, absent

echo Cleft Chin (10 plats): present, absent

echo Pale Silver Underbelly (10 plats): present, absent

echo Tail Shape (10 plats): slender tail, crooked tail, long tail, stubby tail, thick tail, kinked tail, straight tail, curving tail

echo Distinguishing Mark (10 plats): elegant arched eyebrows, heavy jowls, laugh lines, missing tooth, frown lines around her mouth, generous mouth, pouting lips, none

echo Face Shape (10 plats): elongated, flat-featured, round, shallow-featured, triangular, sharp-featured, angular, standard

echo Flexible Ridged Crest (think mohawk) (10 plats): present, absent

echo Snout Shape (10 plats): slender, narrow, elegant, straight, squared, long, upturned, blunt, rounded, flat, crooked, pointed, striped, speckled, dappled, standard

echo Height (10 plats): shorter, taller

echo Gender (20 plats): male, female

echo Build (20 plats): rotund, portly, pot-bellied, slender, emaciated, scrawny, thin, lean, wiry, plump, stout, matronly (females only), lithe, lissome, athletic, brawny, burly, svelte, stocky, shapely, hefty, curvaceous, generous, fat, standard

echo Age (Year) (25 plats): younger, older

echo The 'standard' option sets that feature to the default value for %race (often absent or not described).

goto end

End:
exit