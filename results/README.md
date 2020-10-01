# Extracting actions from verbs used in culinary teaching books

Sources:

[1] S. R. Labensky et al., "On Cooking: A Textbook of Culinary Fundamentals", Pearson Education Limited, 2014

[2] Tsuji, Shizuo, "Japanese Cooking: a simple art", Kodansha International, 1980.

[3] M. Hazan, "Essentials of classic Italian cooking", Alfred A. Knopf, 2010.


All verbs were extracted from each book, using the code in action_verbs_extraction.m

Verbs unrelated to movement (actions or tasks) were discarded. The retained verbs were classified as action or task according to the specificity/complexity of the movement expressed by the verb. This specificity/complexity is expressed in the verb definition, btained complementarily from the culinary glossary in [1], the Oxford American Dictionary [4] and an online glossary [5].

[4] Oxford Dictionaries and Oxford University Press, Concise Oxford American Dictionary, Oxford University Press, USA, 2006
[5] "RecipeTips," [Online]. Available: https://www.recipetips.com/glossary.asp. [Accessed 03 2020].


## Movement-related verbs (retained) 

| VERB | DEFINITION                |
| --- | --- |
|   beat  | mixing method in which foods are vigorously agitated to incorporate air or develop gluten [1] |   
|   blend | mixing method in which two or more ingredients are combined just until they are evenly distributed [1] |   
|   bread | applying a coating of bread or cracker crumbs, cornmeal or other dry meal to foods that will typically be deep-fried or pan-fried [1] |   
|   break | separate into pieces as a result of a blow, shock, or strain [4] |   
|   carry | support and move (someone or something) from one place to another [4] |      
|   chop  | cut into pieces when uniformity of size and shape is not important [1] |     
|   dice  | cut into cubes with six equal-sized sides [1] |      
| dip/plunge/immerse | put or let something down quickly or briefly in or into (liquid) [4] |     
| fillet  | cut a boneless tenderloin of meat or the side of a fish, intact, boneless or semiboneless, with or without skin [1] |
|flip/turn| turn over or cause to turn over with a sudden sharp movement [1] |
|fold/wrap| bend (something flexible and relatively flat) over on itself so that one part of it covers another [4] |      
|  grate/crumble  | cut a food into small, thin shreds by rubbing it against a serrated metal plate [1] |      
|  grease |                         |
| grind/mill/crush/crack |         |
|   gut   |                           | 
|  insert | place, or fit (something) into another thing [4] |
|  mash   |                          |
|  mince  |                          | 
|  mold   |                          |
|  peel   |                          | 
| pick up |                         |
|  pierce |                        |
| pit/core|                        | 
| place   |                        |
| pour    |                        |
| press   |                        |
| rinse   |                        |
| roll    |                        |
| rotate  |                        |
| rub/scrub |                          |    
|  score  |                        |
|  scrape |                         |
|   seal  |                           | 
|   sew   |                          |
|  shake  |                          |
| shave/chip| shave: cut (a thin slice or slices) from the surface of something (e.g. chocolate, meat, cheese, ice) [4]; chip: thinly slice [5, "chipped beef"] | 
|shell/shuck|                          |
|  shred  |                          | 
|   sift  |                         |
|   skim  |                        | 
|   skin  |                        |
| slice   |                        |
| sprinkle|                        |
| squeeze |                        |
|  stem   |                        |
|   stir  |                        |
|  strain | pour foods through a sieve,  mesh strainer or cheesecloth to separate or remove the liquid component [1] |
|  stuff  | fill (the cavity of an item of food) with a savory or sweet mixture, esp. before cooking [4], whith "fill": put something into (a space or container) so that it is completely or almost completely full [4] |
|  toss   |                        |
|  trim   |                        |
|  whip   |                        |
|  wipe   |                        |



## Verbs not expressing an action/task (discarded)

### Verbs related to cooking processes or food transformations:

| EXAMPLES   |     |     |               |        |
| --- | --- | --- | --- | --- |
| fry             | evaporate         | dissolve          | braise   | freeze          |
| pan-fry         | thicken           | toast             | chill    | refrigerate     |
| grill           | dry               | pan-roasted       | blanch   | boil            |
| bake            | smoke             | dilute            | blanch   | thaw            |
| roast           | hold              | simmer            | stew     | preheat         | 
| melt            | marinate          | poach             | crisp    | ...             |


(Complete list inside the code file.)


### Verbs related to a purpose/goal or to a very general meaning:

| EXAMPLES   |     |     |          |
| --- | --- | --- | --- |
| add | cook | prepare | remove |
| serve | transfer | garnish | store |
| sanitize | open | close | compose |
| spread | discard | combine | clean |
| shape | split | extract | eliminate |
| assemble | cover | empty | wash |
| flatten | mix | separate | ... |



### Verbs unrelated to culinary:

| EXAMPLES   |     |     |     |     |
| --- | --- | --- | --- | --- |
| accept | admit | advertise | advise | afford |
| approve | authorize | avoid | borrow | build |
| buy | calculate | call | cancel | change |
| charge | check | choose | complain | complete |
| confirm | consider | convince | count | decide |
| decrease | deliver | develop | dismiss | ... |



### Words (or tokens) misrecognized as verbs:

| EXAMPLES   |     |     |     |     |
| --- | --- | --- | --- | --- |
| swirl |scorch |glaze | julienne |churn |
|red| color| ebi |short-grain| fluff|
|shallow | knob|whisk |dtied| ball|
|cod |sauce| long-grain| sweet |pipe|
|jiggle| dub| force-cool| yolk| green|
|flour| wooden| sink |creen |...|




