

Monday March 4

- historical reddit data
https://www.reddit.com/r/pushshift/comments/1akrhg3/separate_dump_files_for_the_top_40k_subreddits/

https://www.reddit.com/r/changemyview/comments/1b6pvbf/cmv_the_biggest_reason_why_people_think_of/


https://www.reddit.com/r/OutOfTheLoop/comments/1js8lf/what_are_deltas_in_rcmv/ = deltas, people changed your view



February 14, 2024

Research Objective
In this project, we aim to test the efficacy of computational agents in 


Research Questions


Research Goals


Evaluation Ideas



February 13, 2024

**Mediator persona**

How can we design mediator roles? Is it enough to just adopt Moore's mediator roles verbatim or should we look into the mediation literature for different mediation roles/strategies the agents can adopt? 
If I provide a clear a description, Is that enough for an agent to mediate?
When looking at the descriptions for each role, can we merge roles that are similar? 

Do we create an agent that embodies each mediator role, test their efficacy, and compare which mediator role is better? Or is it necessary for a mediator to embody different roles?

Crafting real conflicts for a mediator to test can easily become an expensive affair. A direct evaluation strategy could be to give the agent to a group of friends, ask them to think of a conflict they once had, give it to the agent, and ask the users to rate the effectiveness of their interventions. But this is a rather reductive approach that might have many pitfalls: 
- It is not real-time. Advice occurs after the conflict has occ urred which fails to capture the urgency of solving a conflict and the emotional underpinnings this entails for the users involved in the conflict.

Another evaluation strategy could be to gather conflicts from different reddit groups known to be used by users ask about conflicts. This strategy allows the following evaluations: 

[https://www.reddit.com/r/amiwrong/comments/1apkff4/husband_says_im_too_controling_am_i_wrong/](https://www.reddit.com/r/amiwrong/comments/1apkff4/husband_says_im_too_controling_am_i_wrong/)

- We could get the most upvoted solution(s) to this conflict and compare it with the solution of our agent through a metric that evaluates similarity. These metric can be designed composite and designed by us as a weighted sum of different variables we deem important to compare conflict solutions. These can include things like cosine similarity of the texts. 
- We could also look at the most recent conflicts posted and have our agent post solutions to this conflicts and see if people respond to it. These has some ethical considerations that are worth controlling for, specially from an IRB perspective. For example, is it ethical for our agent to pretend to be a human when posting solutions to the conflict or should the agent be direct in stating its status as a computational agent. 



creating the conflict is a challenge


  

differences between these roles and are these roles 

  

can 

  

a mediator can be a computer system 

  

post comment in conflict , see upvotes

  

see if proposed strategy is similar to comment 

  

  

ask clarification questions\

  

  

simplest kg stuff/pipeline stuff/datavoid stuff

  

  

  

articulate a research problem /articulate a research evaluation


Feburary 6, 2024

- initial brainstorming notes inspired by my work with CREST. 

Questions

- Implementation? How do you design and implement a GPT agent based on Moore's work? Maybe derive inspiration from: 
	- [[Generative Agents Interactive Simulacra of Human Behavior]]
	- Chain of thought prompting: https://arxiv.org/pdf/2201.11903.pdf
	- https://www.langchain.com/use-case/agents
		- implementation tutorials
		- https://github.com/atef-ataya/LangChain-Tutorial
- What would be the ideal study design? 

