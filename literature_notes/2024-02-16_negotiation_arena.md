---
annotation-target: literature/negotiation-arena.pdf
title: 
date: 2024-01-02
---


NegotiationArena features a turn-taking simulation between two llm-powered agents competing in 3 scenarios: 1) Resource exchange game structure where the agent has access to fictional resources and aims to maximize the total resources. The game ends on acceptance or when the maximum number of turns finishes. 2) A multi-turn ultimatum game where an agent is given all of the money and offers an initial split of it with the second agent; if the second agent says no, both players lose all of the money. 3) In a buyer/seller game, an agent is a buyer, and the other is a seller, and the buyer must maximize the item's price while the seller wants to minimize it. Both agents are imbued with an estimate of what they may think the item costs.

The open-source implementation follows an abstract Python class that manages the game state at every iteration and saves it in disk. They prompt the agent with an XML-like language that forces them to communicate using a specific communication format and facilitates post-game analysis of the logs.In particular,  agents are supposed to communicate using XML-like tags:
```
<my name> [add here] </my name>  
<my resources> [add here] </my resources>  
<my goal> [add here] </my goal>  
<reason> [add here] <reason>  
<player answer> [add here] </player answer>  
<message> [add here] </message>  
<newly proposed trade> [add here] </newly proposed trade>  
These XML-like tags are used at runtime to extract infor-  
mation from the text, store it, and send it to the other agent.```
```

The prompt contains the current state of resources in the game so that the agent can take the next step. No fancy summarization techniques were used to fit everything in the prompt. For evaluation, the authors pit agents against each other in these games to evaluate their relative capabilities in negotiation. They evaluate the following agents: Claude-2, Claude-2.1, GPT-4, and GPT-3.5.3. They flipped them to avoid any bias from starting the game, and they ran 60 negotiations for each ordered pair of agents in each scenario. They report two main metrics: win rate and average payoff.






>%%
>```annotation-json
>{"created":"2024-02-16T18:23:32.163Z","updated":"2024-02-16T18:23:32.163Z","document":{"title":"How Well Can LLMs Negotiate? mediumpurpleNegotiationArena Platform and Analysis","link":[{"href":"urn:x-pdf:bd965203beea47955066e75aea2dadf7"},{"href":"vault:/literature/negotiation-arena.pdf"}],"documentFingerprint":"bd965203beea47955066e75aea2dadf7"},"uri":"vault:/literature/negotiation-arena.pdf","target":[{"source":"vault:/literature/negotiation-arena.pdf","selector":[{"type":"TextPositionSelector","start":4994,"end":5200},{"type":"TextQuoteSelector","exact":"We find that GPT-4 is overall the best negotiatorand that certain strategic behaviors such as pretending to bedesperate or acting aggressively can substantially increasethe win rate of one LLM over another.","prefix":"behavior in negoti-ation tasks. ","suffix":" We also identifyseveral shortco"}]}]}
>```
>%%
>*%%PREFIX%%behavior in negoti-ation tasks.%%HIGHLIGHT%% ==We find that GPT-4 is overall the best negotiatorand that certain strategic behaviors such as pretending to bedesperate or acting aggressively can substantially increasethe win rate of one LLM over another.== %%POSTFIX%%We also identifyseveral shortco*
>%%LINK%%[[#^31uviwvq3dy|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^31uviwvq3dy


>%%
>```annotation-json
>{"created":"2024-02-16T18:23:36.939Z","updated":"2024-02-16T18:23:36.939Z","document":{"title":"How Well Can LLMs Negotiate? mediumpurpleNegotiationArena Platform and Analysis","link":[{"href":"urn:x-pdf:bd965203beea47955066e75aea2dadf7"},{"href":"vault:/literature/negotiation-arena.pdf"}],"documentFingerprint":"bd965203beea47955066e75aea2dadf7"},"uri":"vault:/literature/negotiation-arena.pdf","target":[{"source":"vault:/literature/negotiation-arena.pdf","selector":[{"type":"TextPositionSelector","start":4564,"end":4993},{"type":"TextQuoteSelector","exact":"We propose NEGOTIATIONARENA:an open-source framework to evaluate and probe the negoti-ation abilities of LLM agents. NEGOTIATIONARENA makesit easy to incorporate new negotiation settings and to con-duct systematic experiments to explore how agents com-municate, reason, and negotiate.1 Using NEGOTIATION-ARENA, we study current state-of-the-art LLMs (GPT-4,GPT-3.5, Claude 2.1, Claude 2) for their behavior in negoti-ation tasks.","prefix":"ion possible.Our contributions: ","suffix":" We find that GPT-4 is overall t"}]}]}
>```
>%%
>*%%PREFIX%%ion possible.Our contributions:%%HIGHLIGHT%% ==We propose NEGOTIATIONARENA:an open-source framework to evaluate and probe the negoti-ation abilities of LLM agents. NEGOTIATIONARENA makesit easy to incorporate new negotiation settings and to con-duct systematic experiments to explore how agents com-municate, reason, and negotiate.1 Using NEGOTIATION-ARENA, we study current state-of-the-art LLMs (GPT-4,GPT-3.5, Claude 2.1, Claude 2) for their behavior in negoti-ation tasks.== %%POSTFIX%%We find that GPT-4 is overall t*
>%%LINK%%[[#^3rw71k0lx1r|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^3rw71k0lx1r


>%%
>```annotation-json
>{"created":"2024-02-16T18:24:38.388Z","updated":"2024-02-16T18:24:38.388Z","document":{"title":"How Well Can LLMs Negotiate? mediumpurpleNegotiationArena Platform and Analysis","link":[{"href":"urn:x-pdf:bd965203beea47955066e75aea2dadf7"},{"href":"vault:/literature/negotiation-arena.pdf"}],"documentFingerprint":"bd965203beea47955066e75aea2dadf7"},"uri":"vault:/literature/negotiation-arena.pdf","target":[{"source":"vault:/literature/negotiation-arena.pdf","selector":[{"type":"TextPositionSelector","start":5665,"end":5753},{"type":"TextQuoteSelector","exact":"NEGOTIATIONARENA is built around the general structureof a scenario between two agents. ","prefix":"2. Scenarios in NEGOTIATIONARENA","suffix":"Each agent in the scenariois giv"}]}]}
>```
>%%
>*%%PREFIX%%2. Scenarios in NEGOTIATIONARENA%%HIGHLIGHT%% ==NEGOTIATIONARENA is built around the general structureof a scenario between two agents.== %%POSTFIX%%Each agent in the scenariois giv*
>%%LINK%%[[#^ifc5xgocsr|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^ifc5xgocsr


>%%
>```annotation-json
>{"created":"2024-02-16T18:45:01.233Z","updated":"2024-02-16T18:45:01.233Z","document":{"title":"How Well Can LLMs Negotiate? mediumpurpleNegotiationArena Platform and Analysis","link":[{"href":"urn:x-pdf:bd965203beea47955066e75aea2dadf7"},{"href":"vault:/literature/negotiation-arena.pdf"}],"documentFingerprint":"bd965203beea47955066e75aea2dadf7"},"uri":"vault:/literature/negotiation-arena.pdf","target":[{"source":"vault:/literature/negotiation-arena.pdf","selector":[{"type":"TextPositionSelector","start":7705,"end":7955},{"type":"TextQuoteSelector","exact":" involves two agents agreeing ona split of resources (often money). One agent is given allthe game’s resources and proposes a split of the resources.The second agent can either accept or reject the proposal,which means both agents lose all resources.","prefix":"h asfairness and rationality. It","suffix":" In the classicalUltimatum game "}]}]}
>```
>%%
>*%%PREFIX%%h asfairness and rationality. It%%HIGHLIGHT%% ==involves two agents agreeing ona split of resources (often money). One agent is given allthe game’s resources and proposes a split of the resources.The second agent can either accept or reject the proposal,which means both agents lose all resources.== %%POSTFIX%%In the classicalUltimatum game*
>%%LINK%%[[#^uxu6o2p66f|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^uxu6o2p66f


>%%
>```annotation-json
>{"created":"2024-02-16T18:48:52.865Z","updated":"2024-02-16T18:48:52.865Z","document":{"title":"How Well Can LLMs Negotiate? mediumpurpleNegotiationArena Platform and Analysis","link":[{"href":"urn:x-pdf:bd965203beea47955066e75aea2dadf7"},{"href":"vault:/literature/negotiation-arena.pdf"}],"documentFingerprint":"bd965203beea47955066e75aea2dadf7"},"uri":"vault:/literature/negotiation-arena.pdf","target":[{"source":"vault:/literature/negotiation-arena.pdf","selector":[{"type":"TextPositionSelector","start":8749,"end":8918},{"type":"TextQuoteSelector","exact":"We introduce a seller andbuyer game involving two agents, one looking to sell aset of resources and one looking to buy them, similar toother approaches in the literature","prefix":"xampleSeller and Buyer Scenario ","suffix":" (e.g., He et al. (2018)).2How W"}]}]}
>```
>%%
>*%%PREFIX%%xampleSeller and Buyer Scenario%%HIGHLIGHT%% ==We introduce a seller andbuyer game involving two agents, one looking to sell aset of resources and one looking to buy them, similar toother approaches in the literature== %%POSTFIX%%(e.g., He et al. (2018)).2How W*
>%%LINK%%[[#^554ke950wd|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^554ke950wd


>%%
>```annotation-json
>{"created":"2024-02-16T18:48:57.319Z","updated":"2024-02-16T18:48:57.319Z","document":{"title":"How Well Can LLMs Negotiate? mediumpurpleNegotiationArena Platform and Analysis","link":[{"href":"urn:x-pdf:bd965203beea47955066e75aea2dadf7"},{"href":"vault:/literature/negotiation-arena.pdf"}],"documentFingerprint":"bd965203beea47955066e75aea2dadf7"},"uri":"vault:/literature/negotiation-arena.pdf","target":[{"source":"vault:/literature/negotiation-arena.pdf","selector":[{"type":"TextPositionSelector","start":9012,"end":9253},{"type":"TextQuoteSelector","exact":"We imbue agents with some beliefs about the object beingsold, but unlike the ultimatum game, the seller and buyergame is an incomplete information game, i.e., players do nothave complete information about other players (e.g., theirbeliefs). ","prefix":"ATIONARENA Platform and Analysis","suffix":"Only the seller is aware of the "}]}]}
>```
>%%
>*%%PREFIX%%ATIONARENA Platform and Analysis%%HIGHLIGHT%% ==We imbue agents with some beliefs about the object beingsold, but unlike the ultimatum game, the seller and buyergame is an incomplete information game, i.e., players do nothave complete information about other players (e.g., theirbeliefs).== %%POSTFIX%%Only the seller is aware of the*
>%%LINK%%[[#^p06186o8s5|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^p06186o8s5


>%%
>```annotation-json
>{"created":"2024-02-16T20:00:35.594Z","updated":"2024-02-16T20:00:35.594Z","document":{"title":"How Well Can LLMs Negotiate? mediumpurpleNegotiationArena Platform and Analysis","link":[{"href":"urn:x-pdf:bd965203beea47955066e75aea2dadf7"},{"href":"vault:/literature/negotiation-arena.pdf"}],"documentFingerprint":"bd965203beea47955066e75aea2dadf7"},"uri":"vault:/literature/negotiation-arena.pdf","target":[{"source":"vault:/literature/negotiation-arena.pdf","selector":[{"type":"TextPositionSelector","start":68116,"end":68122},{"type":"TextQuoteSelector","exact":"System","prefix":"fter this one.{social_behaviour}","suffix":" PromptFigure 15: An example of "}]}]}
>```
>%%
>*%%PREFIX%%fter this one.{social_behaviour}%%HIGHLIGHT%% ==System== %%POSTFIX%%PromptFigure 15: An example of*
>%%LINK%%[[#^gzs98gj85qi|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^gzs98gj85qi


>%%
>```annotation-json
>{"created":"2024-02-16T20:02:54.461Z","text":" evaluation methods","updated":"2024-02-16T20:02:54.461Z","document":{"title":"How Well Can LLMs Negotiate? mediumpurpleNegotiationArena Platform and Analysis","link":[{"href":"urn:x-pdf:bd965203beea47955066e75aea2dadf7"},{"href":"vault:/literature/negotiation-arena.pdf"}],"documentFingerprint":"bd965203beea47955066e75aea2dadf7"},"uri":"vault:/literature/negotiation-arena.pdf","target":[{"source":"vault:/literature/negotiation-arena.pdf","selector":[{"type":"TextPositionSelector","start":12372,"end":13131},{"type":"TextQuoteSelector","exact":"We pit agents against each other in these games to evalu-ate their relative capabilities in negotiation. We compareClaude-2, Claude-2.1, GPT-4 and GPT-3.5.3 Since being ei-ther the first or the second agent has an impact on the game,we compare both permutations of agents (e.g., Claude-2 vsGPT-4 and GPT-4 vs Claude-2). We run 60 negotiationsfor each ordered pair of agents in each scenario. We reporttwo main metrics: win rate and average payoff. Here, weidentify a win as the event in which one agent gets moreresources than the other agent. For win rate, we ignoregames ending in a tie (i.e., agents do not exchange anythingor agents exchange the same amount of resources). Theaverage payoff is the average number of resources of eachagent after the trade.","prefix":"king Agents in Negotiation Games","suffix":"3.1. Negotiation ResultsResource"}]}]}
>```
>%%
>*%%PREFIX%%king Agents in Negotiation Games%%HIGHLIGHT%% ==We pit agents against each other in these games to evalu-ate their relative capabilities in negotiation. We compareClaude-2, Claude-2.1, GPT-4 and GPT-3.5.3 Since being ei-ther the first or the second agent has an impact on the game,we compare both permutations of agents (e.g., Claude-2 vsGPT-4 and GPT-4 vs Claude-2). We run 60 negotiationsfor each ordered pair of agents in each scenario. We reporttwo main metrics: win rate and average payoff. Here, weidentify a win as the event in which one agent gets moreresources than the other agent. For win rate, we ignoregames ending in a tie (i.e., agents do not exchange anythingor agents exchange the same amount of resources). Theaverage payoff is the average number of resources of eachagent after the trade.== %%POSTFIX%%3.1. Negotiation ResultsResource*
>%%LINK%%[[#^korwo5tsddc|show annotation]]
>%%COMMENT%%
> evaluation methods
>%%TAGS%%
>
^korwo5tsddc
