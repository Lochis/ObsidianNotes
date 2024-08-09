---
id: AspenExport
aliases:
  - AspenExport
tags: []
---

# Aspen Export

## Will need a few more fields that exist on Emergency Contact Form:

1. Guardian?
2. Access to Records?
3. Lives with? - _Can be used for calculation of **LIVING_WITH** field_ -- Is included, not needed additionally.

> [!TODO]
> Figure out if it is feasible, time wise to make modifications to db
> Specifically, changing MOTHER and FATHER columns to just be
> contact 1 and contact 2 columns as that is what the respective succeeding tables are for.

## Questions to Ask DCDSB:

1. How would you handle Mother, parent rel when there is no mother on contact
2. Hashing, how is the parent table populated with hash?
3. Maybe change schoolid's to BSID or Shortcode
4. Very confused by column naming. MOTHER, PARENT1, back to MOTHER, back to PARENT 1

   - Need to get clarification on the specifics of which column goes where.

5. Fields:

   - PARENT1_EDSBYACC
   - PARENT_1_CONTACT
   - PARENT_1_WILLING
   - PARENT_1_COPY
   - PARENT1_EXCLUDEVF

   ***
