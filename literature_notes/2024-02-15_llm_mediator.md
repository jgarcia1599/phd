---
annotation-target: literature/llm-mediator.pdf
title: llm mediator
date: 2024-01-02
---


LLM-mediator is a web-based application, inspired by online dispute resolution platforms,  that aims to mediate conflicts by leveraging GPT-4 to aid users in the following 3 things:  1) reformulate user messages, 2) draft mediator responses, and 3) potentially autonomously engage in the discussions. In terms of agent and tool building , the tool features a chat between 3 users: the two interested parties an the mediator. To reformulate user messages, the tool checks if a given message written by a user contains an inflammatory world. If it does, it is sent to the LLM to to reformulate. To help the mediator write a mediator message, the tool sends the llm the following prompt and the context of the last 10 messages: 

"You are a mediator. Your goal is to guide the discussion of two parties towards an amicable settlement that is  
acceptable to both parties. Respond to this communication between the parties. Stick to the role of the mediator - do  
not complete the dialog of the parties. Remain neutral, do not take the side of any party. ”  

Now, the interested parties also have the option to request for an automated mediation message. This triggers the same process in the previous feature but without the need for the human mediator to accept the message before being sent to the users. This work presents no systematic evaluation of their tool and the authors just present in a table several examples of the tool's proposed features in action. 





>%%
>```annotation-json
>{"created":"2024-02-15T21:32:59.528Z","updated":"2024-02-15T21:32:59.528Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":485,"end":674},{"type":"TextQuoteSelector","exact":"n the context of high-volume,low-intensity legal disputes, alternative dispute resolution methods such as negotiation and mediation offer accessible andcooperative solutions for laypeople. ","prefix":"e models (LLMs) such as GPT-4. I","suffix":"These approaches can be carried "}]}]}
>```
>%%
>*%%PREFIX%%e models (LLMs) such as GPT-4. I%%HIGHLIGHT%% ==n the context of high-volume,low-intensity legal disputes, alternative dispute resolution methods such as negotiation and mediation offer accessible andcooperative solutions for laypeople.== %%POSTFIX%%These approaches can be carried*
>%%LINK%%[[#^sf7s75wjqe|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^sf7s75wjqe


>%%
>```annotation-json
>{"created":"2024-02-15T21:33:13.700Z","text":"is odr still a thing??","updated":"2024-02-15T21:33:13.700Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":364,"end":393},{"type":"TextQuoteSelector","exact":"nline dispute resolution (ODR","prefix":"l platform designed to enhance o","suffix":")by utilizing capabilities of st"}]}]}
>```
>%%
>*%%PREFIX%%l platform designed to enhance o%%HIGHLIGHT%% ==nline dispute resolution (ODR== %%POSTFIX%%)by utilizing capabilities of st*
>%%LINK%%[[#^zi7tgcah9|show annotation]]
>%%COMMENT%%
>is odr still a thing??
>%%TAGS%%
>
^zi7tgcah9


>%%
>```annotation-json
>{"created":"2024-02-15T21:34:42.946Z","updated":"2024-02-15T21:34:42.946Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":2067,"end":2325},{"type":"TextQuoteSelector","exact":"Unresolved legal issues were esti-mated to cost society 746 million dollars in Canada alonein 2014 [1]. Globally, the United Nations Task Force onJustice estimates that 1.5 billion individuals are unableto resolve their legal issues at any point in time [5].","prefix":"even impactindividuals’ health. ","suffix":"A popular way of increasing acce"}]}]}
>```
>%%
>*%%PREFIX%%even impactindividuals’ health.%%HIGHLIGHT%% ==Unresolved legal issues were esti-mated to cost society 746 million dollars in Canada alonein 2014 [1]. Globally, the United Nations Task Force onJustice estimates that 1.5 billion individuals are unableto resolve their legal issues at any point in time [5].== %%POSTFIX%%A popular way of increasing acce*
>%%LINK%%[[#^bx266jitvg|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^bx266jitvg


>%%
>```annotation-json
>{"created":"2024-02-15T21:35:48.667Z","text":"omg literally us","updated":"2024-02-15T21:35:48.667Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":2325,"end":2575},{"type":"TextQuoteSelector","exact":"A popular way of increasing access to justice is the useof so-called alternative dispute resolution (ADR) meth-ods, i.e., methods of solving disputes outside of the tra-ditional judicial system [6]. Such methods include, e.g.,negotiation or mediation","prefix":"issues at any point in time [5].","suffix":". During negotiation, the par-ti"}]}]}
>```
>%%
>*%%PREFIX%%issues at any point in time [5].%%HIGHLIGHT%% ==A popular way of increasing access to justice is the useof so-called alternative dispute resolution (ADR) meth-ods, i.e., methods of solving disputes outside of the tra-ditional judicial system [6]. Such methods include, e.g.,negotiation or mediation== %%POSTFIX%%. During negotiation, the par-ti*
>%%LINK%%[[#^ktp9875seyl|show annotation]]
>%%COMMENT%%
>omg literally us
>%%TAGS%%
>
^ktp9875seyl


>%%
>```annotation-json
>{"created":"2024-02-15T21:36:37.875Z","text":"look up this platform\n","updated":"2024-02-15T21:36:37.875Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":4004,"end":4222},{"type":"TextQuoteSelector","exact":"OPC, an ODR platform developed by the CyberjusticeLaboratory and implemented with the Quebec consumerprotection authority, 70% of cases are settled, 45% at thestage of negotiation and 25% at the stage of mediation[12].","prefix":"owerful approach—e.g., in PARLe-","suffix":"To foster further improvements i"}]}]}
>```
>%%
>*%%PREFIX%%owerful approach—e.g., in PARLe-%%HIGHLIGHT%% ==OPC, an ODR platform developed by the CyberjusticeLaboratory and implemented with the Quebec consumerprotection authority, 70% of cases are settled, 45% at thestage of negotiation and 25% at the stage of mediation[12].== %%POSTFIX%%To foster further improvements i*
>%%LINK%%[[#^vxdmyje099|show annotation]]
>%%COMMENT%%
>look up this platform
>
>%%TAGS%%
>
^vxdmyje099


>%%
>```annotation-json
>{"created":"2024-02-15T21:37:18.534Z","text":"how can we differentiate our work from llm mediator? this is p-laced. as an add on to an odr platform but maybe there could be ways we can improve it.\n Maybe one way could be that our mediator agent is focused on disptes that naturally arise in online communities like Reddit as opposed to more formal legal settlements like those in odr platforms","updated":"2024-02-15T21:37:18.534Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":4884,"end":4964},{"type":"TextQuoteSelector","exact":"LLMediator is an experimental system leveraging GPT-4 to enhance an ODR platform","prefix":"ties into their ownapplications.","suffix":". The system can refor-mulate us"}]}]}
>```
>%%
>*%%PREFIX%%ties into their ownapplications.%%HIGHLIGHT%% ==LLMediator is an experimental system leveraging GPT-4 to enhance an ODR platform== %%POSTFIX%%. The system can refor-mulate us*
>%%LINK%%[[#^bs1k1djgy2d|show annotation]]
>%%COMMENT%%
>how can we differentiate our work from llm mediator? this is p-laced. as an add on to an odr platform but maybe there could be ways we can improve it.
> Maybe one way could be that our mediator agent is focused on disptes that naturally arise in online communities like Reddit as opposed to more formal legal settlements like those in odr platforms
>%%TAGS%%
>
^bs1k1djgy2d


>%%
>```annotation-json
>{"created":"2024-02-15T21:38:16.263Z","text":"God this is good, I want us to do this.","updated":"2024-02-15T21:38:16.263Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":5306,"end":5405},{"type":"TextQuoteSelector","exact":"LLMediator offers an experimental feature to au-tonomously respond to the discussion by the parties","prefix":"ctions by the mediator.Finally, ","suffix":". Inthis paper, we demonstrate s"}]}]}
>```
>%%
>*%%PREFIX%%ctions by the mediator.Finally,%%HIGHLIGHT%% ==LLMediator offers an experimental feature to au-tonomously respond to the discussion by the parties== %%POSTFIX%%. Inthis paper, we demonstrate s*
>%%LINK%%[[#^rurzwu6aute|show annotation]]
>%%COMMENT%%
>God this is good, I want us to do this.
>%%TAGS%%
>
^rurzwu6aute


>%%
>```annotation-json
>{"created":"2024-02-15T21:38:49.454Z","text":"refer to this feature lists later.","updated":"2024-02-15T21:38:49.454Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":4967,"end":5146},{"type":"TextQuoteSelector","exact":"he system can refor-mulate users’ messages to be, e.g., less emotional andmore conducive to reaching a settlement. Further, LL-Mediator can suggest draft messages for the mediator","prefix":"-4 to enhance an ODR platform. T","suffix":"arXiv:2307.16732v1  [cs.CL]  27 "}]}]}
>```
>%%
>*%%PREFIX%%-4 to enhance an ODR platform. T%%HIGHLIGHT%% ==he system can refor-mulate users’ messages to be, e.g., less emotional andmore conducive to reaching a settlement. Further, LL-Mediator can suggest draft messages for the mediator== %%POSTFIX%%arXiv:2307.16732v1  [cs.CL]  27*
>%%LINK%%[[#^vbyb6u7l5pb|show annotation]]
>%%COMMENT%%
>refer to this feature lists later.
>%%TAGS%%
>
^vbyb6u7l5pb


>%%
>```annotation-json
>{"created":"2024-02-15T21:40:40.702Z","text":"i believe this is mentioned in moore's work","updated":"2024-02-15T21:40:40.702Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":6005,"end":6253},{"type":"TextQuoteSelector","exact":"One possiblesuch integration is the display of a so-called “Best Al-ternative to the Negotiated Agreement” (BATNA) dur-ing negotiation, which can provide contextual informa-tion helping the users find a fair agreement (see e.g.[6, 20, 21, 22, 17]).","prefix":"n explored by multiple authors. ","suffix":" Other approaches include using "}]}]}
>```
>%%
>*%%PREFIX%%n explored by multiple authors.%%HIGHLIGHT%% ==One possiblesuch integration is the display of a so-called “Best Al-ternative to the Negotiated Agreement” (BATNA) dur-ing negotiation, which can provide contextual informa-tion helping the users find a fair agreement (see e.g.[6, 20, 21, 22, 17]).== %%POSTFIX%%Other approaches include using*
>%%LINK%%[[#^twu1x54ne8|show annotation]]
>%%COMMENT%%
>i believe this is mentioned in moore's work
>%%TAGS%%
>
^twu1x54ne8


>%%
>```annotation-json
>{"created":"2024-02-15T21:41:05.269Z","text":"this could be interesting future work","updated":"2024-02-15T21:41:05.269Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":6254,"end":6361},{"type":"TextQuoteSelector","exact":"Other approaches include using game-theory methods to elicit an acceptable settlement (see,e.g., [23, 24]),","prefix":" (see e.g.[6, 20, 21, 22, 17]). ","suffix":" and by structuring the dialogue"}]}]}
>```
>%%
>*%%PREFIX%%(see e.g.[6, 20, 21, 22, 17]).%%HIGHLIGHT%% ==Other approaches include using game-theory methods to elicit an acceptable settlement (see,e.g., [23, 24]),== %%POSTFIX%%and by structuring the dialogue*
>%%LINK%%[[#^r1hlwqjmzuf|show annotation]]
>%%COMMENT%%
>this could be interesting future work
>%%TAGS%%
>
^r1hlwqjmzuf


>%%
>```annotation-json
>{"created":"2024-02-15T21:42:28.266Z","text":"I actually really like this message rewriting","updated":"2024-02-15T21:42:28.266Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":6415,"end":6592},{"type":"TextQuoteSelector","exact":"Here, we detect messages by the partiescontaining inflammatory language, and suggest alterna-tive ways of conveying the message, that may be moreamenable to amicable resolution.","prefix":"e dialogue betweenparties [25]. ","suffix":"Similarly, AI systems have been "}]}]}
>```
>%%
>*%%PREFIX%%e dialogue betweenparties [25].%%HIGHLIGHT%% ==Here, we detect messages by the partiescontaining inflammatory language, and suggest alterna-tive ways of conveying the message, that may be moreamenable to amicable resolution.== %%POSTFIX%%Similarly, AI systems have been*
>%%LINK%%[[#^hkuomsqy0mi|show annotation]]
>%%COMMENT%%
>I actually really like this message rewriting
>%%TAGS%%
>
^hkuomsqy0mi


>%%
>```annotation-json
>{"created":"2024-02-15T23:18:12.002Z","text":"creation of a judge??","updated":"2024-02-15T23:18:12.002Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":7445,"end":7558},{"type":"TextQuoteSelector","exact":"Huang and Ouyang proposed a technique for develop-ing a judge perspective generation model in the contextof ODR. ","prefix":"easible (e.g.,due to the costs).","suffix":"The approach employs pre-trained"}]}]}
>```
>%%
>*%%PREFIX%%easible (e.g.,due to the costs).%%HIGHLIGHT%% ==Huang and Ouyang proposed a technique for develop-ing a judge perspective generation model in the contextof ODR.== %%POSTFIX%%The approach employs pre-trained*
>%%LINK%%[[#^hhqx4tv81d|show annotation]]
>%%COMMENT%%
>creation of a judge??
>%%TAGS%%
>
^hhqx4tv81d


>%%
>```annotation-json
>{"created":"2024-02-15T23:19:38.813Z","text":"provide advice as opposed to directly intervenig, a distinction we might wanna focus on","updated":"2024-02-15T23:19:38.813Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":8807,"end":9051},{"type":"TextQuoteSelector","exact":"In this work, the key uses we explore employ GPT-4 as an augmented intelligence tool, that supports theusers in their decision-making as opposed to directlyproviding instructions or advice, which can decrease therisk associated with such tools.","prefix":"iesin negotiation and mediation.","suffix":" Previously, this approachhas be"}]}]}
>```
>%%
>*%%PREFIX%%iesin negotiation and mediation.%%HIGHLIGHT%% ==In this work, the key uses we explore employ GPT-4 as an augmented intelligence tool, that supports theusers in their decision-making as opposed to directlyproviding instructions or advice, which can decrease therisk associated with such tools.== %%POSTFIX%%Previously, this approachhas be*
>%%LINK%%[[#^kcvpfbwjfc|show annotation]]
>%%COMMENT%%
>provide advice as opposed to directly intervenig, a distinction we might wanna focus on
>%%TAGS%%
>
^kcvpfbwjfc


>%%
>```annotation-json
>{"created":"2024-02-15T23:25:24.820Z","text":"features of llm mediator","updated":"2024-02-15T23:25:24.820Z","document":{"title":"LLMediator: GPT-4 Assisted Online Dispute Resolution","link":[{"href":"urn:x-pdf:c06ff52f2ec5554930dec07c0443e069"},{"href":"vault:/literature/llm-mediator.pdf"}],"documentFingerprint":"c06ff52f2ec5554930dec07c0443e069"},"uri":"vault:/literature/llm-mediator.pdf","target":[{"source":"vault:/literature/llm-mediator.pdf","selector":[{"type":"TextPositionSelector","start":10115,"end":10455},{"type":"TextQuoteSelector","exact":"F1 - Suggesting reformulations of inflammatorymessages to be less emotional and, hence, moreconducive to finding an amicable settlement2. F2 - Drafting message suggestions for mediatorsto more efficiently intervene in a discussion3. F3 - Potentially, autonomously intervening in adiscussion to guide the parties towards an amica-ble solutio","prefix":"tform. These featuresinclude:1. ","suffix":"nFigure 1: A screenshot of the L"}]}]}
>```
>%%
>*%%PREFIX%%tform. These featuresinclude:1.%%HIGHLIGHT%% ==F1 - Suggesting reformulations of inflammatorymessages to be less emotional and, hence, moreconducive to finding an amicable settlement2. F2 - Drafting message suggestions for mediatorsto more efficiently intervene in a discussion3. F3 - Potentially, autonomously intervening in adiscussion to guide the parties towards an amica-ble solutio== %%POSTFIX%%nFigure 1: A screenshot of the L*
>%%LINK%%[[#^cc25qukdgk8|show annotation]]
>%%COMMENT%%
>features of llm mediator
>%%TAGS%%
>
^cc25qukdgk8
