connected papers (https://www.connectedpapers.com/)
https://www.researchrabbit.ai/
https://elicit.org/
https://scite.ai/




Comparative notes on lit review tools

  

1. Platform : Elicit
    

you can ask a research question and it'll output papers answering it. 

  

You can get rid of papers that are not relevant and export a list of the relevant ones along with information about them such as abstracts, authors, year, etc. 

  

You can also find critiques of papers through Elicit. provides personalized recommendations based on the user's feedback and preferences. 

  

It allows users to filter and sort the recommended papers based on various criteria such as relevance, publication date, and citation count.

  

Answers comes from abstract & full-text

  

Generative, in the sense that it uses existing text but may generate new text to answer

=> "abstract summary" (note this isn't a full reproduction of the summary but Elicit's summary of it),

  

Elicit goes a step further by reordering the search results based on the user's initial search query. This means that the tool takes into account the user's original search intent and adjusts the order of the papers it retrieves from the citation graph to provide more relevant results.

  

because the search is using Semantic Search it can include articles which do not have the keyword you want

  

And you can filter to include or exclude words in abstracts for more control over the result.

  

Elicit has a powerful feature that allows users to create a table of papers with extracted characteristics. It’s great for a research matrix and users can export the results in formats like BibTex or CSV

  

Downsides: 

  

Elicit is not as comprehensive as some other tools, so there is a possibility that it may miss some papers, especially newer ones.

It may also recommend older papers that are not as relevant anymore.

  

Amazing: References may be starred and stored on a separate page for easy consultation at a later date.

  

the SCImago Journal Rank is visible for all publications as a way to quantify the prestige of a journal

  

great AI tool that is highlighting sections of the abstract that addresses the question posed

  

Elicit provides many other tools to help with the research process such as “Brainstorm research questions”, “Suggest search terms,” and “Abstract summarization”

  

Elicit is limited to publications in Semantic Scholar so there is a gap in the literature on what is being retrieved. For example, Semantic Scholar does not search licensed journals or behind paywalls

  

it is not designed to be searched by using keywords with search syntax (e.g., truncation) or controlled vocabulary. The machine encourages users to enter full research questions such as “How does iron supplementation affect anemia?” This could be a limitation since researchers need to ask the right questions for the right papers to be returned.

  

Users are unable to un-star items once they have been selected and there is no functionality to organize the starred items or to remove duplicates if the same reference has been starred from different search requests.

  
  

2. Platform : Scite
    

  

focuses on evaluating the credibility of scientific papers based on their citations.

  

Helps determine whether a paper has been supported, contradicted, or mentioned by other papers.

  

provides visualizations and metrics to assess the quality and impact of a paper.

  

offers a browser extension that integrates with popular research platforms and displays citation context while browsing papers.

  

It provides valuable insights about the reception and evaluation of research papers.

  

Answers comes from Citation sentences and abstracts. 

  

Extractive - only surfaces existing text

  

Scite also offers plugins for popular web browsers and reference management software (e.g., Zotero) 

  

providing insights into how articles are cited—rather than simply noting that the citation has occurred

  

Downsides:

  

Scite does not have a feature to save or export the citation maps or visualizations, limiting its usability for organizing and documenting literature review results.

  
  

I compared references with the Crossref database for a few articles, Scite only ingests publications with a DOI and only matches references against bibliographical objects with a registered DOI

  

  

3. Platform : Connected Papers
    

  

visualizes the relationships between research papers

  

Great tool to explore related papers based on their citation connections

  

useful to understand the broader context and connections between papers.

  

Unlike many other tools, it creates a similarity graph not a citation graph and connecting lines (based on the similarity metric) do not necessarily show direct citation relationships

  

Because of that, unlike tools that are based only on co-citations, Connected Papers works even for very new papers that do not have many citations or have no citations.

  

Note this isn't fool proof, some very new papers with few known references can cause Connected Papers   to fail.

  

Connected Papers doesn't stop at generating  "dozens" of nodes/papers. You can also additionally find "prior works" or "derivative works"

  

Prior works are detected by looking at which are the most commonly cited papers in the generated network. Assuming the network generated based on similarity is on target and most similar work cite the most important work, you will in theory get influential or groundbreaking  works.

  

the algorithm also tries to prioritize papers that are in roughly the same “generation” of papers, I.e are not too far apart in publication years.

  

While you can create a new graph from any new paper found by Connected paper, this starts a new graph anew which is disappointing for users who might want to be able to expand and add on to the addition graph.

  
  

does not have a feature to save or export the citation maps or visualizations, limiting its usability for organizing and documenting literature review results.

  
  
  
  
  
  
  
  

  

4. Platform : Research Rabbits
    

  

Amazing to search multiple databases simultaneously.

  

advanced search filters to refine search results 

  

provides a PDF management system to organize and annotate papers

  

might have a bit of a learning curve compared to simpler one-shot use tools like Connectedpapers and it can something be hard to figure out how it is recommending items because the algorithm is a total blackbox (there isn’t even a brief description of how it works), but it’s the first tool I’ve seen so far that proposes a flow that I think is compatible with how experienced researchers think when they do their literature review.

  

encourages you to jump from paper to paper easily, Want to check all citations of one paper? Click a button and you get that in a split second with all the results in a new column, want to look at all references of a paper that was newly found in *that* column? One click again and you get yet another column of papers, which you can further filter in by references, citations etc. 

  

email alert option that will send you emails weekly of new potential papers to add

  

allows you to add notes to papers which helps with collaborations of course.

  

While you can use ResearchRabbit in a similar way to Connected papers, by putting in one seed paper and looking at recommendations, I wouldn’t suggest that as I find ConnectedPapers makes better recommendations than ResearchRabbit based on one paper.

**

