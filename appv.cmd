echo
echo Scale:
echo
echo 1. Weapon Damage
echo
echo 2. Weapon Balance/Power
echo
echo 3. Shield Protection
echo
echo 4. Maneuvering/Stealth Hindrance
echo
echo 5. Armor Protection/Absorption
echo
echo 6. Construction
echo
echo 7. Condition
echo
echo Enter number:
echo

matchre Damage ^1
matchre Balance ^2
matchre SProtection ^3
matchre Hindrance ^4
matchre AProtection ^5
matchre Construction ^6
matchre Condition ^7
matchwait

Damage:
echo Damage:
echo
echo 0. no
echo 1. dismal
echo 2. poor
echo 3. low
echo 4. somewhat fair
echo 5. fair
echo 6. somewhat moderate
echo 7. moderate
echo 8. somewhat heavy
echo 9. heavy
echo 10. very heavy
echo 11. great
echo 12. very great
echo 13. severe
echo 14. very severe
echo 15. extreme
echo 16. very extreme
echo 17. mighty
echo 18. very mighty
echo 19. bone-crushing
echo 20. very bone-crushing
echo 21. devastating
echo 22. very devastating
echo 23. overwhelming
echo 24. annihilating
echo 25. obliterating
echo
goto end

Balance:
echo Balance/Power:
echo
echo 0. not
echo 1. terribly
echo 2. dismally
echo 3. poorly
echo 4. inadequately
echo 5. fairly
echo 6. decently
echo 7. reasonably
echo 8. soundly
echo 9. well
echo 10. excellently
echo 11. superbly
echo 12. incredibly
echo 13. unbelievably
echo
goto end

SProtection:
echo Shield Protection:
echo
echo 0. no
echo 1. extremely terrible
echo 2. terrible
echo 3. dismal
echo 4. very poor
echo 5. poor
echo 6. rather low
echo 7. low
echo 8. fair
echo 9. better than fair
echo 10. moderate
echo 11. moderately good
echo 12. good
echo 13. very good
echo 14. high
echo 15. very high
echo 16. great
echo 17. very great
echo 18. exceptional
echo 19. very exceptional
echo 20. impressive
echo 21. very impressive
echo 22. amazing
echo 23. incredible
echo 24. tremendous
echo 25. unbelievable
echo 26. god-like
echo
goto end

Hindrance:
echo Maneuvering/Stealth Hindrance:
echo
echo 0. no
echo 1. insignificant
echo 2. low
echo 3. light
echo 4. fair
echo 5. somewhat
echo 6. moderate
echo 7. very
echo 8. high
echo 9. great
echo 10. extreme
echo 11. overwhelming
echo
goto end

AProtection:
echo Armor Protection/Absorption:
echo
echo 0. none
echo 1. poor
echo 2. low
echo 3. fair
echo 4. moderate
echo 5. good
echo 6. high
echo 7. great
echo 8. extreme
echo 9. incredible
echo 10. impressive
echo 11. god-like
echo
goto end

Construction:
echo Construction:
echo
echo 1. extremely weak
echo 2. very delicate
echo 3. quite fragile
echo 4. rather flimsy
echo 5. particularly weak
echo 6. somewhat unsound
echo 7. appreciably susceptible to damage
echo 8. marginally vulnerable to damage
echo 9. of average construction
echo 10. a bit safeguarded against damage
echo 11. rather reinforced against damage
echo 12. quite guarded against damage
echo 13. highly protected against damage
echo 14. very strong
echo 15. extremely resistant to damage
echo 16. unusually resilient to damage
echo 17. nearly impervious to damage
echo 18. practically invulnerable to damage
echo
goto end

Condition:
echo Condition:
echo
echo in pristine condition (98-100%)
echo practically in mint condition (90-97%)
echo in good condition (80-89%)
echo rather scuffed up (70-79%)
echo some minor scratches (60-69%)
echo few dents and dings (50-59%)
echo several unsightly notches (40-49%)
echo heavily scratched and notched (30-39%)
echo badly damaged (20-29%)
echo battered and practically destroyed (0-19%)
echo
goto end

end: