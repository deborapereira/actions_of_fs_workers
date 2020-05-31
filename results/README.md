# Extracting actions from verbs used in culinary teaching books

Sources:

[1] S. R. Labensky et al., "On Cooking: A Textbook of Culinary Fundamentals", Pearson Education Limited, 2014

[2] Tsuji, Shizuo, "Japanese Cooking: a simple art", Kodansha International, 1980.

[3] M. Hazan, "Essentials of classic Italian cooking", Alfred A. Knopf, 2010.


All verbs were extracted from each book, using the code in action_verbs_extraction.m

Verbs unrelated to movement (actions or tasks) were discarded. The retained verbs were classified as action or task according to the specificity/complexity of the movement expressed by the verb.


## Movement-related verbs (retained) 

| VERB | DEFINITION                |   
| beat |                           |   
| blend |                          |   
| bread |                          |   
| break |                          |   
| carry |                          |      
| chop |                           |     
| dice |                           |      
| dip/plunge/immerse |             |     
| fillet |                         |      
| flip/turn |                      |     
| fold |                           |      
| grate |                          |      
| grease |                         |
| grind/mill/crush/crack |         |
| gut  |                           | 
| insert |                          |
| mash   |                          |
| mince  |                          | 
| mold   |                          |
| peel   |                          | 
| pick up |                         |
|  pierce  |                        |
| pit/core |                        | 
| place    |                        |
| pour     |                        |
| press    |                        |
| rinse    |                        |
| roll     |                        |
| rotate   |                        |
| rub/scrub |                          |    
|  score  |                        |
|  scrape|                         |
|  seal |                           | 
| sew |                          |
|  shake  |                          |
| shave  |                          | 
|shell/shuck|                          |
|   shred |                          | 
|  sift |                         |
| skim |                        | 
|   skin  |                        |
| slice     |                        |
|   sprinkle  |                        |
|  squeeze   |                        |
|  stem    |                        |
|   stir |                        |
|  strain    |                        |
|  stuff  |                        |
|  toss  |                        |
|  trim  |                        |
| whip   |                        |
|  wipe  |                        |



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




