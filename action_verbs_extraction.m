%% get all words from the book  -- !! select the book first !! --

book = 'US'; % better to use US for the "On cooking" book

if strcmp(book,'JP')
    filename = 'txt files\cookbook_japanese.txt';
elseif strcmp(book, 'IT')
    filename = 'txt files\cookbook_italian.txt';
else
    filename = 'txt files\on_cooking_book_2014.txt';
end

str = extractFileText(filename); % this function doesn't recognize if a word was split by paragraph, as: pre-
% paration --> these become 2 tokens "pre-" and "paration", so, some verbs may have been missed
textData = split(str,newline);
documents = tokenizedDocument(textData);
documents = addPartOfSpeechDetails(documents);
tdetails = tokenDetails(documents);


%% get only the verbs 

verbs = tdetails(tdetails.PartOfSpeech=='verb',:);
verbs_token = verbs.Token';
verbs_token_lemma = normalizeWords(verbs_token,'Style','lemma');

bag = bagOfWords(verbs_token_lemma);

[bag,idx] = removeEmptyDocuments(bag);
bag = removeShortWords(bag,2); % with 2 or less
bag = removeLongWords(bag,15); % with 15 or more
bag = removeInfrequentWords(bag,5);


%% get only movement-related verbs

exclude_unrelated_to_movement= ["accept","admit","advertise","advise","afford",...
    "approve","authorize","avoid","borrow","build","buy","calculate","call",...
    "cancel","change","charge","check","choose","complain","complete","confirm",...
    "consider","convince","count","decide","decrease","deliver","develop",...
    "dismiss","dispatch","distribute","divide","drop","employ","encourage",...
    "establish","estimate","exchange","extend","fall","fix","fund","get",...
    "worse","improve","increase","inform","install","invest","invoice","join",...
    "lend","lengthen","lower","maintain","manage","measure","mention","obtain",...
    "order","organise","owe","own","pack","participate","pay","plan","present",...
    "prevent","process","produce","promise","promote","provide","purchase",...
    "raise","reach","receive","recruit","reduce","refuse","reject","remind",...
    "remove","reply","resign","respond","return","rise","sell","send","seek",...
    "separate","shorten","split","structure","succeed","suggest","write",...
    "publish","reserve","print","select","make","vary","use","ask","meet",...
    "teach","understand","base","come","pass","enter","stay","learn","want",...
    "see","happen","watch","taste","swish","bury","know","feel","have",...
    "prove","celebrate","bear","eat","look","chew","sip","care","imitate",...
    "suck","drink","enjoy","mean","stop","polish","plain","clench","hide",...
    "surround","heap","azuhi","steep","enclose","drench","sprig","identify",...
    "invite","convert","donabe","coohing","enrich","alternate","harvest",...
    "lidded","test","insulate","elevate","half","replenish","uncover",...
    "trirnmed","devein","twirl","dominate","impress","concentrate","temper",...
    "conduct","bind","counteract","stffing","ball","wing","hing","flush",...
    "sautded","define","heavy-bottomed","tilt","take","let","tuck","wish",...
    "omit","shed","touch","expose","curl","catch","pack","emit","disturb",...
    "swim","determine","wait","dredge","save","force","destroy","control",...
    "sharpen","ensure","bevel","judge","support","scale","dampen","face",...
    "scatter","appeal","consume","mature","scoop","pat","ripen","round",...
    "handle","move","desire","attach","proceed","tie","slip","yield",...
    "moisten","pound","string","loose","settle","firm","fit","slit","name",...
    "invent","allow","flake","require","regard","involve","harmonize",...
    "draw","list","refer","seed","medium-sized","prefer","tint","act",...
    "sweeten","enhance","retain","appear","represent","recommend","dress",...
    "limit","accompany","tend","attempt","direct","stick","finish","replace",...
    "note","discuss","stock","can","substitute","tear","wring","associate",...
    "originate","soak","describe","read","think","remain","sit","pull",...
    "lose","leave","compare","try","start","arrange","savor","discover",...
    "continue","depend","float","set","devise","adjust","import","accord",...
    "remember","form","adapt","achieve","visit","cultivate","expand",...
    "apply","like","suit","include","lack","mask","contain","appreciate",...
    "grasp","stand","tell","run","lift","bring","play","put","recognize",...
    "preserve","release","design","stalk","indicate","display","hang",...
    "refine","take","let","treat","lie","give","worry","show","need",...
    "work","say","expect","keep","seem","help","find","so-called","grow",...
    "repeat","become","believe","begin","end","refresh","offer","follow",...
    "live","spend","diminish","precede","lead","accommodate","speak",...
    "fasten","protrude","connect","master","execute","constitute","strip",...
    "contribute","avored","blacken","match","nished","attened","season",...
    "collect","ripe","assort","taper","characterize","last","acquire",...
    "undergo","consist","elongate","unsmoked","protect","supply","recall",...
    "travel","embed","throw","resemble","mottle","point","satisfy",...
    "specialize","detach","dig","permit","stack","shrink","double","wilt",...
    "loosen","enamel","carve","subside","snap","overlap","cling","light",...
    "sizzle","transform","blemish","discolor","smother","unshelled","twist",...
    "retrieve","correct","dunk","gather","lay","hop","tender","pile",...
    "drive","level","puncture","cause","slap","glaze","sink","reconstitute",...
    "complement","result","label","slide","force-cool","half","sever",...
    "gash","sparkle","accomplish","account","accumulate","activate","adopt",...
    "address","aerate","affect","age","aid","air-dry","alter","analyze",...
    "aquafarmed","argue","arrive","assign","assist","balance","benefit",...
    "bond","burst","butter","calibrate","castrate","cater","certify","chafe",...
    "circulate","claim","clarify","classify","collapse","compensate",...
    "complicate","compound","compress","confuse","construct","consult",...
    "contact","contaminate","contrast","crack","crystallize","darken","deep"...
    "decline","decorate","dedicate","deflate","demand","demonstrate","dent",...
    "derive","designate","detect","deteriorate","devote","die","differ",...
    "digest","dine","disperse","distinguish","domesticate","dock","sweat",...
    "double-acting","drape","drip","dry-aged","emphasize","encase","perforate",...
    "encounter","escape","evaluate","evolve","exceed","exist","experience",...
    "experiment","explain","express","extrude","fabricate","facilitate",...
    "fail","feature","feed","figure","filter","fish","flourish","focus",...
    "formula-fed","fortify","full-flavored","fur","gain","gelatinize",...
    "generate","hard-boiled","hard-cooked","harden","heart-shaped","invert",...
    "hydrogenate","ignite","illustrate","impart","infect","infuse","lease",...
    "ingest","inhibit","inspect","intend","intensify","interfere","lump",...
    "irradiate","juiced","kill","leach","leaven","manufacture","mimic",...
    "license","lighten","link","liquefy","loaf","locate","mellow","migrate",...
    "marble","mark","market","marry","minimize","multiply","observe","occur",...
    "moderate","modify","monitor","open-faced","operate","oppose","organize",...
    "outline","overfill","overheat","overmix","overmixing","paint","pair",...
    "paper-lined","pear-shaped","pearl","perceive","perform","plant","plate",...
    "prebaked","prick","prohibit","pronounce","punch","puréed","puréeing",...
    "ranch-raised","range","react","reflect","register","pose","practice",...
    "regulate","rehydrated","relax","relish","rely","render","repair",...
    "report","reprint","reproduce","research","restrict","retard","reuse",...
    "revise","ruin","salt-cured","secure","thrive","tout","trace","suckle",...
    "share","shellfish","ship","shock","single-celled","skilled","spill",...
    "slaughter","smell","smooth","soft-cooked","solidify","stripe","study",...
    "sophisticate","specify","speed","spell","spice","strike","submerge",...
    "splash","spoil","spray","stabilize","stale","stamp","standardize","score",...
    "starch","state","stimulate","stir-fried","strain","suffer","sun-dried",...
    "train","transmit","transport","trap","undercooked","unmold","unsalted",...
    "unsweetened","waste","wear","web-based","supervise","survive","suspend"];

exclude_errors = ["swirl","scorch","julienne","churn","red","color","cod",...
    "ebi","short-grain","fluff","shallow","knob","whisk","dtied","ball",...
    "sauce","long-grain","sweet","pipe","jiggle","dub","yolk","sucrose",...
    "green","flour","wooden","creen","mahe","shiso","saucepan","turnip",...
    "egg","pan","spoon","mixture","bubble","oil","low","tsp","sound","sugar",...
    "rim","lemon","earthenware","ffi","serzte","char","slash","liquid",...
    "tbsp","cooh","serae","ladle","seroe","line","halve","off","decorative",...
    "ounce","till","crosswise","towel","white-fleshed","side","slope","ranch",...
    "cup","bone","medium","dust","wheat","bamboo","inch","rest","step",...
    "soy","flavor","wrrh","bottle","pink","top","slot","rye","sand","scallop",...
    "seaweed","powder","square","size","raw","carrot","sesame","salt","raisin",...
    "skewer","recipe","soup","package","homemade","stu","prize","slow",...
    "oven","tting","pasta","dough","rosemary","lling","eshed","crowd","layer",...
    "tip","amalgamate","pale","thin","teaspoon","tablespoon","tted","brie",...
    "beneath","attening","lengthwise","arge","artichoke","tomato","drizzle",...
    "atten","lled","lamb","prod","purée","box","dozen","ltered","dot","edge",...
    "ridge","spatula","broad","envelop","near","hollow","omemade","lasagne",...
    "white","potato","sac","veal","illus","all-purpose","barbecue","barde",...
    "batter","below","beurre","bleach","brine","buckwheat","butcher","ring",...
    "butterfly","cake","calf","candy","cheddar","chef","chicken","quarter",...
    "chiffonade","chocolate","class","classic","cocoa","corn","cornstarch",...
    "cream","creamy","credit","crust","cube","cost","culture","curve","damage",...
    "dessert","dill","diner","dorling","duck","farm","fat","fee","wrinkle",...
    "yeast","vitamin","weigh","whereas","stiff","price","raspberry","syrup",...
    "tap","tart","temperature","thread","sour","flame","flow","flute",...
    "fructose","fruit","goat","gluten","glucose","whole-wheat","formulate",...
    "french","frost","gel","grade","grain","grip","group","ice","infrared",...
    "overpower","overcrowd","often","paste","pastry","plump","portion",...
    "subject","herring","lactose","lard","pulse","poultry","proof","protein"]';

exclude_process = ["fry","pan-fry","grill","bake","roast","melt",...
    "freeze","thaw","coagulate","simmer","poach","boil","brown","broil",...
    "braise","chill","blanch","stew","crisp","emulsify","foam","evaporate"...
    "thicken","dry","smoke","hold","marinate","refrigerate","preheat",...
    "reheat","dissolve","toast","pan-roasted","dilute","unbleached","cool",...
    "soften","sauté","heat","absorb","warm","puree","macerate","incorporate",...
    "bruise","steam","deep-fry","pickle","parboil","vinegared","burn",...
    "brew","ferment","overcook","freeze-dry","pan-broil","saturate",...
    "sautéing","caramelize","cure","tenderize","deglaze","pasteurize",...
    "sear","degrease","curdle","breed","stir-fry","distill","microwave",...
    "condense","pan-fried","precook","uncooked","stir-frying","granulate",...
    "foil-cooked","steam-simmered","deepfrying","scramble","scald",...
    "salt-grilled","textured","bite-sized","improvise","freshen","create",...
    "deepfried","sautéed","smear"];

% perforate is not used as action in the books but in 'perforated utensil'

exclude_purpose = ["add","cook","prepare","cut","remove","serve","transfer",...
    "garnish","store","sanitize","open","close","compose","spread","discard",...
    "combine","clean","shape","split","extract","eliminate","assemble",...
    "cover","baste","empty","wash","flatten","coat","introduce","mix","saute",...
    "crisp-fried","fill","drain","penetrate"];

% NOTE: baste = pour juices or melted fat over (meat) during cooking in
% order to keep it moist --> the action is to pour, already catched.

% Scrambled eggs are eggs whisked with seasonings and then sautéed. They are 
% stirred nearly constantly during cooking. --> it is a cooking process

exclude_others = ["push","pull","press","hone","shred-cut","brush","thin-sliced",...
    "knead","hand-rolled"];

% note: hone is excluded because it is done to a tool as it degrades - it
% is a deffect of the tool itself, not related to handling food or its
% containers, etc.

% brush is generic, it can be intended for greasing or for scrubbing (cleaning)



% SYNONYMS:
% crack = mill, grind
% plunge/dip
% drain/strain

% NEED TO INDICATE THE VERBS EXCLUDED FOR BEING TASKS OR PRIMITIVES


% NEED TO SEPARATE THIS:


bag2=removeWords(bag,exclude_unrelated_to_movement);
bag2=removeWords(bag2,exclude_process);
bag2=removeWords(bag2,exclude_purpose);
bag2=removeWords(bag2,exclude_others);
bag2=removeWords(bag2,exclude_errors);

tmp = table(bag2.Vocabulary','VariableNames',{book});
eval(['selected_verbs_' book '= sortrows(tmp,book,''ascend'');']);












