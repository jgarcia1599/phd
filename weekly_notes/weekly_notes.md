

Monday May 13

crest cscw submission

Abstract

  

Intro 

  

Related Work

  

Overview

  

Evaluation

  

Future Work 

  

Conclusion



Wednesday March 26

Counter-productive option consideration
Mindless searching
Expansiveness over acutness

The Paradox of Choice: Less is More Search tools aim to maximize recall by finding all relevant records for given search criteria. In many collaborative search scenarios, high recall is the desired feature. For example, a group of researchers conducting a systematic review on a subject is interested in collating all relevant research papers. This contrasts with the goal of collaborative search in our setting, which is to find one property that everyone agrees on. Consider the couple interviewed in Section 3.1; their discussions would circle back to the same choices, and any additional property searches they conducted proved futile: they gave the illusion of productive discussion while in reality, they just distracted the users. Furthermore, meaninglessly expanding the list of choices creates fertile ground for possible decision-manipulation scenarios where a single user, usually the one who emerges as a leader or an over-participator, forcibly chooses a property for the team through overtalk and gaslighting, stripping the other team members of their autonomy and decision-making agency.




Shifting Goal Posts Search tools, in general, aim to maximize recall: finding all relevant records for given search criteria. In many collaborative search scenarios, high recall is the desired feature. For example, a group of researchers conducting a systematic review on a subject are interested in collating all relevant research papers. A high-recall collaborative search task is inherently expansive. This contrasts with the goal of collaborative search in our setting, which is to find one property that everyone agrees to. While generating a list of viable options for a group to examine and choose from is desirable, continuing the search even after the group members have largely settled on one or two options is counter-productive. For instance, in the interview with the couple (Section 3.1), we noted that even after narrowing down to a few preferred properties, they still conducted additional individual searches. However, this additional searching proved futile as their discussions would circle back to the same original options they had initially selected. More choices to consider can overwhelm some users, and individually exploring each one might be detrimental to the team’s shared goal. A group member may stall the agreement process by constantly expanding the search list (i.e., production-blocking by an over-participator). Current search features such as bookmarks are better suited for list generation than property agreement: It is relatively easy for each group member to bookmark several properties without seriously considering their viability in terms of group fit. Thus, without a clear goal-oriented process that concludes the search, the sense of a never-ending search can fatigue group members."


Lack of Autonoomy Non-collaborative booking tools like Airbnb and Booking.com deprive group members of their sense of autonomy in search and decision-making. This is particularly prevalent in consensus-building scenarios, like constructing a collaborative sequence for a travel itinerary or making a group playlist, where all of the group members are responsible for and impacted by the final decision. Ultimately, in single-user systems, the booking has to be finalized by a single user who acts on behalf of the group. Even though this often agreed-upon leader is usually trusted and considers all the group members' desires and constraints, the inability of each member to personally signal their agreement or disagreement to a specific booking can create negative experiences beyond the search and booking process. For example, a member who believes they were over-ruled in a decision might feel alienated from the group and might later refuse to contribute financially or join the others. As such, we aim to safeguard our users by protecting them from possible decision-manipulation scenarios inherent in collaborative tools, enabling them to clearly express their preferences towards a property.




Monday March 25

CREST UIST 2024 submission and CSCW poster submission

UIST 2024
current word count: 12,513

preilimary interview: 800


try to make it under 10000 words just to be safe. 


remove words from asbstract 







November 1st: Progress
  
This week, I started running the scraping scripts (get Google results, get the content of said results, and label the results with ChatGPT) for "hospital Gaza blast." I basically get the top 50 results since October 17 per day (which is when the event happened) all the way to the present day (so when the script runs today, it will get the top 50 results each day from October 17 to November 1st). I spent too much time this weekend trying to get it to work completely autonomously on the HPC, but I was running into some issues getting the whole pipeline to work, so for now, I am running it on my computer (which means I stop collecting data whenever I am not connected to the internet).

Since I am collecting data continuously, one question I have is how to reconcile the data collected for a single day (October 17, for instance, a very important day) when there is a change in the 50 results at every scrape.

Another problem I have is that I am not trusting the labeling ChatGPT is giving me, so maybe you have an idea on a way to prompt it better. The following is my prompt:

The bombing of the Al-Ahli Hospital in Gaza on October 17, 2023, led to a tragic loss of hundreds of lives and has become a focal point of contention between Palestinian and Israeli officials. Various reports and claims have emerged regarding the cause of this devastating event, necessitating the classification of the text into one of four major narratives: Israeli Airstrike Narrative, Palestinian Rocket Narrative, Neutral Narrative, or Not Applicable. The Israeli Airstrike Narrative is supported by articles claiming that the bombing resulted from an Israeli airstrike, possibly citing Palestinian health officials, the United Nations’ statements, or other international reactions condemning Israel. On the other hand, the Palestinian Rocket Narrative is upheld by articles asserting that the bombing was caused by a failed rocket launch by Palestinian militants, specifically the Palestinian Islamic Jihad militant group, possibly citing Israeli military officials or other sources supporting Israel's version of events. The Neutral Narrative encompasses articles that either present an unbiased view by showcasing both Palestinian and Israeli claims without taking a side, or lack sufficient information to be classified under either of the two aforementioned narratives. Not Applicable is for texts that are not related to the event at hand at all. Only respond with one of the four labels and nothing else.

  
I know the Neutral Narrative is also something you were unaware of, so I wanted to get your opinion on it. The following are some examples of URLs that were labeled as Palestinian Narrative. Looking at some of them, I don't see them necessarily championing the Palestinian Narrative:

[https://time.com/3046808/gaza-israel-hamas-cease-fire-shifa-hospital/](https://time.com/3046808/gaza-israel-hamas-cease-fire-shifa-hospital/) [https://www.bbc.co.uk/news/live/world-middle-east-67119233](https://www.bbc.co.uk/news/live/world-middle-east-67119233) [https://www.thehindu.com/news/international/israel-hamas-war-day-11-live-updates-biden-to-visit-israel/article67429253.ece](https://www.thehindu.com/news/international/israel-hamas-war-day-11-live-updates-biden-to-visit-israel/article67429253.ece) [https://www.newspressnow.com/news/national_news/live-updates-israel-oks-limited-aid-for-gaza-as-regional-tensions-rise-following-hospital-blast/article_adbeef99-1aa8-5e85-8955-c1a4bc939e13.html](https://www.newspressnow.com/news/national_news/live-updates-israel-oks-limited-aid-for-gaza-as-regional-tensions-rise-following-hospital-blast/article_adbeef99-1aa8-5e85-8955-c1a4bc939e13.html) [https://apnews.com/article/israel-palestinians-gaza-hamas-war-biden-rafah-e062825a375d9eb62e95509cab95b80c](https://apnews.com/article/israel-palestinians-gaza-hamas-war-biden-rafah-e062825a375d9eb62e95509cab95b80c) [https://www.nbcnews.com/news/world/live-blog/israel-hamas-war-live-updates-rcna120747](https://www.nbcnews.com/news/world/live-blog/israel-hamas-war-live-updates-rcna120747)



October 15 Explaining the pipeline of the historical datavoid analysis

Our data collection pipeline works as follows: for a particular query of interest, we used selenium web automation scripts to extract the top 50 results from Google. We emulate the clicks needed in the web page to  specify the date range of our results and use url geolocation parameters to show localized results to a specific region of interest. For the date ranges, we focus on an increasing window range by a week to show the change in the top 50 results over time and a sliding window range to show the rate of creation of misinformation over time. After obtaining the search results, we utilize the requests-html library to obtain the raw html of the webpage and use the trafilatura library to extract the clean text from the html. When applicable, we also manually collected this information for specific urls where full automation failed to ensure completion. Once the clean text for each webpage is obtained, we used OpenAI's ChatGPT api to filter out the search results that are not applicable to the search query and misinformation narrative we are investigating . We then manually label those that are related to the misinformation narrative into one of two categories: misinformation and counter-misinformation. 


October 4th

This week, I focused on continuing my literature review and working on the datavoids project. 

In the Datavoids project, I focused on finding localized, smaller-scale case studies that we can include in our paper. I chose "Bolsonarismo" as the case study and added a geolocation parameter to google.com while crawling the results as it is supposed to simulate searching from that specific country. In Latin America, there is a tendency to focus political movements and anchor them in one person. This is linguistically manifested by adding the suffix "-ismo" to the name of the leader, turning their name into a noun that represents their political movement. Here is an article talking about Bolsonarismo: https://www.vox.com/world/2023/1/10/23548292/root-causes-brazils-violent-protest. The creation of a new word also feels like more of a datavoid to me too, as we can easily show that there were no search results of this word on google before the president took power. Although there are examples of this in Honduras too, I thought that this would be a good example as Jair Bolosonaro is known to be a Trump-like, right-wing, controversial leader and by adding the geolocation paremeter we can test our hypothesis of whether or not counter-misinformation is less present in this smaller case studies. If we find that the results here are very similar, I can focus on Honduran cases too like:
	- urge mel, viene mel (political chant of the former Honduran president that was ousted in a coup in 2009 )
	- JOH (combination of initials of our former president Juan Orlando Hernandez, who is currently in prison in NYC for ties to drug trafficking and organized crime)
My only concern with this example is that unlike the Nellie Ohr case, where we know the events that actually transpired and misinformation is whatever tries to add confusion to this, what can be misinformation in bolsonarismo? For now, I gave cgpt the following context, but maybe I should refine this before doing the manual re-labeling step (which is the only thing I am missing, I just go the labels from cgpt this morning): 

"Misinformation regarding 'Bolsonarismo' pertains to false or misleading information about the political ideology and movement surrounding Jair Bolsonaro, Brazil's president since 2019. This can encompass inaccuracies about Bolsonaro's COVID-19 response, including false claims about endorsed treatments or the virus's impact in Brazil. Exaggerated or untrue statements about his environmental policies, especially concerning the Amazon rainforest and indigenous communities, also qualify. Misrepresentations of Bolsonaro's remarks or policies on human rights, particularly towards LGBTQ+ and indigenous groups, are another misinformation source. Additionally, false narratives about his economic strategies, historical views, personal life, and election-related controversies can be misleading"

Please let me know what you think so I can continue with the manual re-labeling, using the description above as my guide. 

In terms of my own literature review for my individual work , I read the following paper this past week: 

1. Measuring the Prevalence of Anti-social behaviour in Online Communities: https://hci.stanford.edu/publications/2022/Park_ContentModAudit_CSCW22.pdf
2. What makes you change your mind? An empirical investigation in online group decision-making conversations: https://arxiv.org/abs/2207.12035
3. The Banality of Extremism: The Role of Group Dynamics and Communication of Norms in Polarization https://psycnet.apa.org/fulltext/2022-48385-001.pdf
4. Fandom, Social Media, and Identity Work: The  Emergence of Virtual Community Through the Pronoun  “We”: https://psycnet.apa.org/record/2019-63233-001

I used these papers to write my thesis statement for my group dynamics project. Although I liked the methods of Bernstein's [1] (ensemble classifier composed of 97 binary-classifying (moderated or unmoderated)ml models trained each on 97 different reddit communities, only 80 out of the 97 classifiers need to say that something needs to be moderated so that a human annotator intervenes and to tune the method to be more accepting of false positives), I still feel that their work requires specificity and more community-specific case studies.  In [4] for instance, they did something very simple where they showed that simple linguistic markers like the use of we over I in users comments on a BTS Facebook group, increase over time and  "we-ness" is "was associated with lower levels of analytical thinking, authenticity, and emotional tone that summarize intrapersonalcharacteristics such as formal and logical thinking patterns". This is something more on the lines of I want to study in my paper for my class, how users give away their own opinions to satisfy that of the group. I attached my thesis statement here, I am still waiting to hear feedback from my professor, but feel free to give me your thoughts too if you would like. 



Sep 26, 2023

Over the last couple of weeks, I have been looking at the following grander literature areas
- Misinformation, algorithmic auditing
	- Assessing enactment of content regulation policies: A post hoc crowd-sourced audit of election misinformation on YouTube
	- Measuring the Prevalence of Anti-Social Behavior in Online Communities
- Collaboration Technologies
	- Effects of Sensemaking Translucence
	- Local-first collaboration 
		- A suite of tools that allow for offline collaborative work that can be then merged online at a later stage to reduce reliance on centralized servers
	- Supporting Collaborative Sequencing of Small Groups through Visual Awareness
- Group dynamics in extremist, cult-like groups
	- The Banality of Extremism: The Role of Group Dynamics and Communication of Norms in Polarization
	- Modeling and managing collective cognitive convergence and User Interfaces for Counteracting Decision Manipulation in Group Recommender Systems
- Human-AI or Human-Agent Interaction
	- Decision Making Strategies and Team Efficacy in Human-AI Teams

A way to tie the proliferation of misinformation in the digital landscape and computer-suported collaborative work is that groups with nefarious ends are very effective teams. An extreme example of this are cults are the KKK or Anonymous, often coordinating large-scale distributed efforts to carry out their mission despite any structural regulations aimed at stoping them. The Attack on Capitol Hill showed us that social media tools can be leveraged as CSCW-type tools that leads users to arrive to cognitive convergence in their decision-making processes. As such, studying how these coordinated efforts occur on social media platforms is important and creating additional layers of protections on top of such platforms is needed to avoid the cognitive convergence process that leads to polarized views. 

High Level Ideas
- Studying cognitive corvengence/group think in online communities
	- Heavily inspired: Measuring the Prevalence of Anti-Social Behavior in Online Communities
- CREST-Bot 2


Miscellanous Sources: 
- Youtube's Algorithm is Left-Leaning in the US
- Bulb
- The Effects of System Initiative during Conversational Collaborative Search






September 27, 2023

Action Items
- Talk about Tesh Interaction
- Talk about desk setup 
- Talk about paper review stuff

# September 6, 2023
Meeting with Azza
Action Items
- Misinformation stuff
	- Historical Datavoid Analysis and Handover Meeting with Reem recap
	- Conferences and people i should talk to 
	- Classes discussion

Things to discuss
	- Mediating bot idea promise
Psychology 
HCI class

Problem Formulation
TWO FACTS
- call 1 of them misinformation and another one real thing
- remove both, and all evidences that contribute to them 
- set a misinformation ; set b counter-misinformation
- play a simulation of what to add by adding it back 
- what is area under the curve?
- how late can i respond to and still be effective? 
- what is the area under the curve?
- sampling = 
	- cut = is just the neighborhood, 7 hops away
- we have no idea of how the past, but the same end result
- The link should be there ? we should remove them. 1 to N fact. 
- how late can i respond to and still be effective? 
- the end is always fixed
evaluate 
- improves your chances at every turn
- at every point, can i improve my ranking?
- better than random?

Things to do: 
- past reviews, should we include them? 
- Do a writeup of the knowledge graph based on my understanding
- Historical Datavoid Analysis
  - check if misinformation article opacity is ok?
  - is it likely to be before the date? if it came later, then it should be shown or it shown be little opacity? 


Some reddit/moderation/crowdworking/conflicts/human-machine papers i found: 
r/amiwrong -> interesting reddit to look into
- https://dl.acm.org/doi/10.1145/3338243
- Crowd Worker Strategies in Relevance Judgment Tasks: https://dl.acm.org/doi/10.1145/3336191.3371857
- Human-AI Collaboration via Conditional Delegation: A Case Study of Content Moderation: https://dl.acm.org/doi/pdf/10.1145/3491102.3501999
- One of Many: Assessing User-level Effects of Moderation Interventions on r/The_Donald : https://dl.acm.org/doi/10.1145/3578503.3583626
- Proactive Moderation of Online Discussions: Existing Practices and the Potential for Algorithmic Support: https://dl.acm.org/doi/10.1145/3555095
- Privacy–Preserving Online Content Moderation: A Federated Learning Use Case : https://dl.acm.org/doi/10.1145/3543873.3587604
- Who Uses Bots? A Statistical Analysis of Bot Usage in Moderation Teams : https://dl.acm.org/doi/10.1145/3334480.3382960
- Understanding Conflicts in Online Conversations: https://dl.acm.org/doi/10.1145/3485447.3512131 
- Make Reddit Great Again: Assessing Community Effects of Moderation Interventions on r/The_Donald:  https://dl.acm.org/doi/10.1145/3555639
- Statistical Modeling of Harassment against Reddit Moderators
- Wisdom of Two Crowds: Misinformation Moderation on Reddit and How to Improve this Process---A Case Study of COVID-19" https://dl.acm.org/doi/10.1145/3579631
- The Unsung Heroes of Facebook Groups Moderation: A Case Study of Moderation Practices and Tools: https://dl.acm.org/doi/10.1145/3579530
- https://dl.acm.org/doi/pdf/10.1145/3406865.3418311
- Characterizing Reddit Participation of Users Who Engage in the QAnon Conspiracy Theories: https://dl.acm.org/doi/10.1145/3512900
- Investigating Toxicity Across Multiple Reddit Communities, Users, and Moderators : https://dl.acm.org/doi/10.1145/3366424.3382091
- (De)ToxiGen: Leveraging large language models to build more robust hate speech detection tools
- Quality Conversations and Considerations on Reddit: https://dl.acm.org/doi/10.1145/3576840.3578272




# September 3, 2023

Reem Knowledge-graph handover meeting
Action items:
- New repo and removal of kelpie folder all the time.
- Discuss removing then adding experiment
    - Based on Miro's experiments
    - No more pykeen, followed her approach of training an lp model
    - Randomly reducing the dataset for quick experimentation, maybe we could learn how to do post-training to speed up the training process. 
    - how do we deal with varying size of kelpie explanations? 
- Strategies ideas: 
    - Random
    - FIFO
- How it works now





# September 1st, 2023
I collected the following additional dates for the Nellie Ohr dataset:

snapshot_date: the earliest snapshot date available in the Wayback Machine.
near_snapshot_date: the snapshot date closest to the date (end_date) when the URL was found on Google.
These dates were sourced from the Wayback Machine.

From the metadata of the HTML extract of the URL, when available, I also gathered the following dates:

og:updated_time: the date the article was updated.
article:published_time: the date the article was published.
article:modified_time: the date the article was modified.
dc:date: Another general date, which might represent publication or modification.
Using these dates, I calculated a score named refined_close_to_time_range_score for each URL as follows:
I first selected the date closest to the end_date from the additional dates I described above. I then computed the absolute difference between this date and the end_date. This approach is straightforward, but my rationale was that any of these dates could serve as a proxy to determine how proximate the URL is to the end_date.

I normalized this difference to range between 0 and 1. Dots with a normalized score closer to 0 (indicating proximity to the end_date) have higher opacity, making them more emphasized and suggesting their higher time-relevance.
Dots with a normalized score closer to 1 (indicating they are farther from the end_date) are more transparent, suggesting potential lesser relevance to the specific time range.

```python
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.lines import Line2D

# Reading the data
data = pd.read_csv('nellie ohr_increasing_1_month_additional_dates.csv')

# Define the color map
color_map = {
    'Misinformation': 'red',
    'Counter-Misinformation': 'blue',
    'Not Applicable': 'gray'
}

# Replace infinite values in the 'refined_close_to_time_range_score' column with the maximum non-infinite value to indicate that 
# this value cannot be trusted, and is hence assigned a large difference
max_non_infinite_score = data[data['refined_close_to_time_range_score'] != float('inf')]['refined_close_to_time_range_score'].max()
data['refined_close_to_time_range_score'].replace(float('inf'), max_non_infinite_score, inplace=True)

# Normalize the score to range between 0 and 1 for opacity
data['normalized_opacity'] = 1 -  ((data['refined_close_to_time_range_score'] - data['refined_close_to_time_range_score'].min()) / (data['refined_close_to_time_range_score'].max() - data['refined_close_to_time_range_score'].min()))

# Plotting
plt.figure(figsize=(15, 10))

for index, row in data.iterrows():
    plt.scatter(pd.to_datetime(row['end_date']), row['link_order'], 
                color=color_map[row['cgpt_label']], 
                alpha=row['normalized_opacity'], 
                s=100)

# Setting the legend
legend_elements = [Line2D([0], [0], marker='o', color='w', markerfacecolor=color_map[key], label=key, markersize=10) 
                   for key in color_map.keys()]
plt.legend(handles=legend_elements, loc="lower right")

# Setting the title and labels
plt.title('Visualization based on Time, Rank, Label and Normalized Score')
plt.xlabel('Time')
plt.ylabel('Rank')
plt.grid(True, which="both", ls="--", c='0.7')
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()
```

