

Feb 26

flow 1
Instructions
- open ood: https://whatsthealgorithm.com/resources.html
- interactive apps > code server
- set time of instance
- clone git repository
- i also open jupyter notebook with gpu power to run this
	- intreactive apps > jupyter lab > i always choose 4 cores and 1 gpu 
-

should probably also do a brand new conda environment 



code formatting will follow the pep8 convention: https://peps.python.org/pep-0008/





January 28 


In nellie ohr, we have a sliding window by week but we dont have the same for hospital gaza blast right? 



propagate labels
ask miro where did he get the data for his jupyter notebook




January 27

propragate labels to all gz files





further parallelized so that one experiment runs in one machine ste

mitigator startegies = greedy, mo_greedy , random
disinformer strategies = greedy, mo_greedy , random

Tuple 1
Fact 1 
Fact 2 




Tuple 2
Fact 1
Fact 2


Tuple 3
Fact 1
Fact 2




Jaunary 26


Ask reem a bunhc of questions
- get_good_fact_bad_fact_budget is working!

results/results/yago310/... que no se te olvide jr

7 hours to run random vs greedy


('Ben Affleck', 'film/actor/film./film/performance/film', 'Shakespeare in Love') ,3,4
('Ben Affleck', 'film/actor/film./film/performance/film', 'Gigli') ,4 ,90
this one is a bit weird

Understand what Azza wants with the plots: 


She wants a simple table 

Tuple, Initial ranking, Ranks after removing D and M
FB15K-237 (found them in remove overlapping budget)

('Ben Affleck', 'film/director/film', 'The Town'),1,10
('Ben Affleck', 'film/director/film', 'Argo'),2,12

('Steven Spielberg', 'film/director/film', 'Amistad'),1,16
('Steven Spielberg', 'film/director/film', 'Saving Private Ryan') ,2,7

('Steven Spielberg', 'film/director/film', 'The Adventures of Tintin') ,5,15
('Steven Spielberg', 'film/director/film', 'Saving Private Ryan') ,1,8

('Ben Affleck', 'film/actor/film./film/performance/film', 'Shakespeare in Love'),4,6
('Ben Affleck', 'film/actor/film./film/performance/film', 'Jersey Girl'),3,9

('Ben Affleck', 'film/actor/film./film/performance/film', 'Shakespeare in Love') ,4, 6
('Ben Affleck', 'film/actor/film./film/performance/film', 'Pearl Harbor') ,5, 65

('Ben Affleck', 'film/actor/film./film/performance/film', 'Shakespeare in Love') ,3,4
('Ben Affleck', 'film/actor/film./film/performance/film', 'Gigli') ,4 ,90

('George Clooney', 'film/actor/film./film/performance/film', 'Ocean's Twelve') ,4,21
('George Clooney', 'film/actor/film./film/performance/film', 'Good Night, and Good Luck.'),1,5


Yago310
('friedrich_hayek', 'iscitizenof', 'united_kingdom'), 6, 5
('friedrich_hayek', 'iscitizenof', 'austria'), 2, 23

('john_burridge', 'isaffiliatedto', 'manchester_city_f.c.'), 10, 116
('john_burridge', 'isaffiliatedto', 'sheffield_united_f.c.'),1, 6

('franz_kafka', 'iscitizenof', 'austria-hungary'), 26, 33
('franz_kafka', 'iscitizenof', 'czechoslovakia'), 76, 40




January 24

Our data extraction pipeline operates as follows: for a specific query of interest, we employ Selenium \cite{selenium2023} web automation scripts to retrieve the URLs of the top 50 results from Google.com \cite{google}. We emulate the clicks needed on the web page to specify the date range of our results and use URL geo-location parameters to show localized results of a specific region of interest. For the date ranges, we focus on an expanding weekly window to observe changes in the top 50 results over time and a sliding window to assess the rate of misinformation creation over time. After obtaining the search results, we utilize the requests-html \cite{requests-html2019} library to get the raw HTML of the webpage and use the trafilatura \cite{trafilatura} library to extract the clean text from the HTML. When applicable, we manually collected this information for specific URLs where full automation failed to ensure completion. Once the clean text for each webpage is obtained, we used OpenAI's ChatGPT API \cite{chatgpt} to filter out the search results that are not applicable to the search query and misinformation narrative we are investigating. We then manually label those related to the misinformation narrative into one of two categories: misinformation and counter-misinformation.


January 23 
I suspect get_good_fact_bad_fact_budgets doesnt work  entirely
i should have parallelized the yago310 experiments thing 

January 22



Focused on fixing bugs in execution of code in HPC

Tomorrow, actually start running some simulations with the things the professors said they liked

Wrote the following update to Professor Azza: 

I personally feel more inclined to present this work either at CSCW or CHI again this year. UIST seems to prefer more "technically complicated/rigorous" work, and much of what we do in CREST is more an application/analysis of our design ideas regarding group property bookings through user studies. I would rather develop the theoretical grounding within the scope of this paper and present it at CSCW. I have always felt that CREST screams "CSCW," but it is more of a hunch feeling.

I also like the idea of using LLMs and mediation personas to mediate group conflicts. After a quick search, I couldn't find any papers on this topic and agree that this could stand as its own paper. I am willing to do the work for this submission too, and also aim for CSCW.

If you are open to it, we could also find another conference to blanket-submit CREST to, since the CSCW submission is so far away. In terms of research progression and narrative, it would have been nice if CREST preceded the LLM-mediation paper, and we could expand on our CREST ideas in the new work. However, I don't mind if both are submitted to CSCW at the same time.

I emailed Tesh early this January about collaborating and haven't heard back from him. Should I follow up and just straight up ask him if he wants to advise me on developing CREST for a CSCW submission? He could also advise on the LLM-mediation personas paper. I am new to this whole "research collaborations" business and would appreciate your help.

January 21

Tomorrow, run some experiments using some of these tuples. 



what happens after we get candidates we are interested in?? we can go ahead and run run_experiments.py file, assuming we have the touples of good,bad facts we are interested in

Gave the following update to the team

Hello all,

I've discovered some intriguing good-fact/bad-fact tuples in Yago-310, each followed by its original ranking, that might be interesting to explore further:

```plaintext
("trevor_benjamin", "isaffiliatedto", "england_national_under-21_football_team"), 12
("trevor_benjamin", "isaffiliatedto", "coventry_city_f.c."), 3

("jefferson_louis", "isaffiliatedto", "lincoln_city_f.c."), 1
("jefferson_louis", "isaffiliatedto", "mansfield_town_f.c."), 13

("john_burridge", "isaffiliatedto", "manchester_city_f.c."), 9
("john_burridge", "isaffiliatedto", "sheffield_united_f.c."), 1

("franz_kafka", "iscitizenof", "austria-hungary"), 26
("franz_kafka", "iscitizenof", "czechoslovakia"), 76

("friedrich_hayek", "iscitizenof", "united_kingdom"), 5
("friedrich_hayek", "iscitizenof", "austria"), 2

("arnold_schwarzenegger", "ispoliticianof", "united_states"), 1
("arnold_schwarzenegger", "ispoliticianof", "california"), 2

("václav_havel", "ispoliticianof", "czech_republic"), 1
("václav_havel", "ispoliticianof", "czechoslovakia"), 2

("ronald_reagan", "ispoliticianof", "united_states"), 1
("ronald_reagan", "ispoliticianof", "california"), 3

("friedrich_hayek", "playsfor", "leyton_orient_f.c."), 32
("friedrich_hayek", "playsfor", "grays_athletic_f.c."), 15

("trevor_benjamin", "playsfor", "england_national_under-21_football_team"), 21
("trevor_benjamin", "playsfor", "coventry_city_f.c."), 2

("danny_elfman", "wrotemusicfor", "mars_attacks!"), 3
("danny_elfman", "wrotemusicfor", "spy_kids"), 40

```

I am rerunning the scripts with enhanced logging at every step of the execution process because I am encountering unexpected numbers for the budget overlap from the kelpie explanations. I should have more detailed statistics on the tuples by tomorrow. In the meantime, I wanted to share these findings here in case anything catches your attention.



```




## January 20 update

New relations to test

isapoliticianof
haswebsite
iscitizenof

tried them already, but tomorrow i need to save the generated datasets for debugging purposes





Reuslts from first succesful run of yago310_get_candidates

- we should save the generated datasets so we can debug later


Some interesting results

haswonprize
ranking difference very significant, none of them are exciting enough


wrotemusicfor

```
[

[

[

"jerry_goldsmith",

"wrotemusicfor",

"the_swarm_(film)"

],

[

"jerry_goldsmith",

"wrotemusicfor",

"malice_(film)"

],

[

4,

136

],

33

],

[

[

"john_williams",

"wrotemusicfor",

"harry_potter_(film_series)"

],

[

"john_williams",

"wrotemusicfor",

"jfk_(film)"

],

[

612,

19

],

30

],

[

[

"danny_elfman",

"wrotemusicfor",

"mars_attacks!"

],

[

"danny_elfman",

"wrotemusicfor",

"spy_kids"

],

[

3,

40

],

24

]

]
```


isaffiliatedto
```
[

[

[

"trevor_benjamin",

"isaffiliatedto",

"england_national_under-21_football_team"

],

[

"trevor_benjamin",

"isaffiliatedto",

"coventry_city_f.c."

],

[

12,

3

],

31

],

[

[

"jefferson_louis",

"isaffiliatedto",

"lincoln_city_f.c."

],

[

"jefferson_louis",

"isaffiliatedto",

"mansfield_town_f.c."

],

[

1,

13

],

31

],

[

[

"john_burridge",

"isaffiliatedto",

"manchester_city_f.c."

],

[

"john_burridge",

"isaffiliatedto",

"sheffield_united_f.c."

],

[

9,

1

],

20

]

]


```


isknownfor

```
[

[

[

"karl_marx",

"isknownfor",

"friedrich_engels"

],

[

"karl_marx",

"isknownfor",

"marxism"

],

[

3,

2

],

16

],

[

[

"friedrich_engels",

"isknownfor",

"karl_marx"

],

[

"friedrich_engels",

"isknownfor",

"marxism"

],

[

2,

3

],

22

],

[

[

"michel_aflaq",

"isknownfor",

"zaki_al-arsuzi"

],

[

"michel_aflaq",

"isknownfor",

"salah_al-din_al-bitar"

],

[

3,

2

],

18

]

]
```
## January 17 Update

Hello Professor,

Since I didn't receive a calendar invite for a meeting this week, I wanted to go ahead and give you a quick update on how things stand from my end so I can get quick feedback in case it is needed.

In terms of paper writing, I started populating the paper based on previous writing work we did (what we all wrote for our previous tentative submission for the WWW conference and what Reem wrote for her capstone papers) in addition to ad-hoc writing/editorial work I am doing to start writing a cohesive story. I believe I have enough to write about the knowledge graph simulation work and the case studies, but I might need some help in illustrating the work done on the Wikipedia/search rank case.

In terms of the knowledge-graph work, I had a meeting with Reem after our last week's group meeting where she gave me a quick rundown of everything she did as part of her Capstone. That meeting was necessary as it showed me how the good_fact, bad_fact tuples were chosen to do the simulation work. I realized that the process to do this in the FB15K-237 case was non-trivial, and involved things like: 
- Finding 1-N and N-N relations you want to test.
- For each relation, get the highest degree heads. For each head, get the corresponding highest degree tails. For each tuple (a candidate), create a subgraph of the kg using BFS to determine if the tuple, within that corresponding subgraph, satisfied the following criteria:
    - Does the kelpie budget for both facts overlap too much? If it does, we skip because we want little overlap. We define the overlap threshold before running the scripts.
    - Are the ranks of both candidates too far apart? Again, we can define this threshold before running the scripts.

To find relations of interest, I basically just followed your advice on finding things that look thematically different than film-related stuff, since that's what we focus on in FB15K-237. In addition, I also sorted the relations in terms of triples associated with them and tried to choose ones that contain a lot of triples to decrease the chance of explanation overlap. Below are the relations contained within YAGO-310 in case you guys spot something it might be interesting to explore further:



```
isaffiliatedto N-N num samples 373682
playsfor N-N num samples 321023
islocatedin N-N num samples 88660
hasgender N-1 num samples 66163
wasbornin N-1 num samples 44970
actedin N-N num samples 32155
isconnectedto N-N num samples 32055
haswonprize N-N num samples 24042
influences N-N num samples 10710
diedin N-1 num samples 9248
hasmusicalrole N-N num samples 7754
graduatedfrom N-N num samples 7327
created N-N num samples 6933
wrotemusicfor 1-N num samples 6047
directed 1-N num samples 5481
participatedin N-N num samples 5150
haschild N-N num samples 5064
happenedin N-N num samples 5056
ismarriedto 1-1 num samples 3757
iscitizenof N-1 num samples 3455
worksat N-N num samples 3387
edited 1-N num samples 3083
livesin N-N num samples 2980
hascapital N-1 num samples 2565
ispoliticianof N-1 num samples 2163
dealswith N-N num samples 1302
isleaderof N-N num samples 957
hasacademicadvisor N-1 num samples 914
owns N-N num samples 726
hasneighbor N-N num samples 555
imports N-N num samples 393
exports N-N num samples 378
hasofficiallanguage N-N num samples 298
isinterestedin N-N num samples 239
hascurrency N-1 num samples 109
haswebsite N-1 num samples 68
isknownfor 1-N num samples 19
```


I chose the following relations: 

```
rels_to_test = [

'isknownfor', # 1-n

'wrotemusicfor', # 1-n

'edited', # 1-n

'isaffiliatedto', #n-n

'playsfor', # n-n

'haswonprize' # n-n

]
```



In an effort to maintain things as close as the FB15-237 case, I ran get_candidates_script with the same configurations:

- number_of_heads_to_test = 3
- number_of_tails_per_head = 6
- overlapping_budget_threshold = 10

I realized that with these configurations, and the chosen relations in Yago-310, some relations were taking way too long as each candidate good_fact, bad_fact tuple can take approximately 6 hours to test due to how long it takes to create a subgraph of the kg to get the rankings. For a head, I was testing 15 combinations of good_fact, bad_fact tuples, which meant I had to do 45 subgraphs each taking 6 hours, meaning that for a relation it would take approximately 270 hours! As such, I am now just testing 2 tails per head. Now, I should get results within the day (approximately 18 hours ).








- updates on paper writing
- updates on YAGO-310 progress

haswonprize, which ended, took 27:38 hours and found no candidates 

Elapsed times of extract subgraph function
9666
17181
17293
21532
Avg per = 16418 seconds
273.6 minutes
4.56 hours per extract subgraph

total number of viable candidates tested = 5
5 * 4.56 = 22.8 

calculate how much does the miscellaneous stuff (train model, get explabnations, etc) take per candidate, approximately
(27.63 - 22.8)/5 =  0.96 hours, approximately an hour

so testing the viability of a candidate takes around 6 hours. 


haswonprize, completed, took 27.63 hours

isknownfor,  should be completed, 18 hours cause we test 3 candidates

wrotemusicfor, running,  270 hours cause we test 45 candidates

why is it 45 candidates? 
3 heads

for each head, test 6 tails 

6 choose 2 = 15 possible combinations of tails for each head. 15 * 3 heads = 45




edited, running, 186 hours cause we test 31 candidates

isaffiliatedto, running, 270 hours cause we test 45 candidates

playsfor, running, 240 hours cause we test 40 candidates



















took 27 hours to  complete


couldnt find a set of two facts tha


How long does extract subgraph take?








```python
def print_fact(fact, label_map):

	head, relation, tail = fact[0], fact[1], fact[2]

	if label_map:

		print(label_map[head]['label'], relation, label_map[tail]['label'])

	else:

		print(head, relation, tail)

def find_train_samples(self, entity_id_search_key, match_head=True, match_tail=True, match_relation=True):

result_samples = []

for sample in self.train_samples:

head, relation, tail = sample

if match_head and head == entity_id_search_key:

result_samples.append(sample)

elif match_tail and tail == entity_id_search_key:

result_samples.append(sample)

elif match_relation and relation == entity_id_search_key:

result_samples.append(sample)

  

return numpy.array(result_samples)
```



**Reem Meting Jan 10/2024**


Questions to Reem


- tips on making the reduced dataset and running simulations in smaller subsets of the data 

- do you also do several simulations and take the average like miro does?

- tips on selecting facts to run experiments on

- overlap in explanations, should there be some overlap?>
- similarity in ranking in the beginning
- do you start by choosing a head and a tail, get some predictions, and choose from there

- how do you get the 25 explanations from kelpie? does it always guarantee 25??
- share overleaf

  

  

Reem 

To select candidates: 

- candidate selection helpers
- look at get candidates.py
- look at get candidates.sh
- also experiment_selecting_examples.ipynb
  

Try hpc

- hpc code server
- Get the following extensions: 
  ![[Jupyter Cell Tags.png]]
  

find_suitable_candidates

Everything is done with necessary explanations 

  overlapping budget

- I believe the overlapping budget is removed from the simulations based on what reem told me. **Re-confirm this.** 


kelpie code can give you more than 25 explanations
- Reem found a way to extend the number of explanations provided by Kelpie. I believe she gets one explanation, runs again, and gets another explanation.**Reconfirm this in code.**

- high degree heads and tails chosen in suitable candidates to increase likelihood of less overlap


get_good_bad_fact_budgets : this is important to get good fact and bad fact budgets

  

experiment_candiates =**look at this too**

  

  

Strategiess

random seed = you change tandom seed so that the simulations are different in random
epochs = runs
Multiobjective greedy =  it didnt work
Greedy , post training occurs in Kelpie
Look at neighbor strategy and see how it works
calculate_fact_explanation_stats =. this gets the metadata on the facts
sef.resume_experiment = this arguments helps continue 
epochs = 5

plotting utilities 
to get combined results of all stuff just like in the capstone paper and what azza wants
overlap is removed when you create the datavoid
plot.py
plots folder
original_plots.png

  

  

  

  

tips:
add python linting
block formatter


**January 10 Big FDatavmeeting**

  

micros update:

what happens if we do greedy vs greedy ??

if player a is winning and player b is loosing and player b starts adding good attacks/budget elements, player a will start loosing and player b swill increase 
fixing vs dynamic set of pages
minimum amount of cost to beat the other side, we just want to 

  

  

my update feedback

How mucho overlapping evidence there is ?
 Similar ranking or not?
Both should exist in the graph 
For now, same strategies as before is fine
Focus on generating graphs that compare against random
in both good entity and bad entity, there should not be some overlap
all of the experiments for reem took 4 days. 
2 or 3 other ideas in other knowledge graphs would be sufficient

Old Paper content into new paper
Historical case study
nellie ohr and hospital bombing stuff. azza said she will look into it but i also want to help!



January 9 Meeting with Miro

best solution is greedy
random vs random is baseline solution
green area means mitigator winning 
auc = measured value - baseline value

 sometimes you can measure the auc of an agent, ir the auc when you subtract the motigator value - disinformer value. Again, the values being measured here are usually averages across several simulations for robustness
base: 20 simulation random vs random , 
plotting mitigator - disinfomer value in the graphs 
u do many simulations, calculate mitigator - disinfomer value average (mor mitigator) for all steps, calculate the average in each step, plot the line, if higher than baseline then simulation went well (mitigator is winning) , if its lower then baseline

Look at the following code files: 
  - optimal_ronk_solutions
  - delayed_responses_opcr 


Miro is doing an ilp problem formulation that attempts to minimize cost while maximizing gain margin. You could also do an reinforcement learning formulation but that could come later. 