# Minutes

**Attendance**; Alan Yeung, Róisín Farrell, Jack Hannah, Anna Price, Terry McLaughlin, David Caldwell, Mike Smith, Federico Centoni, Tom Godfrey, Kirstin McNicol, Rory Madigan, Alice Byers, Jaime Villacampa, Martin Moench

1. Rory presented the ggplot theme he's been developing. This was inspired by the BBC ggplot theme and currently defines style elements of a bar chart for use in PHI.
    - Alice asked how this would be made available to others to use; it was suggested that the code is packaged up and made available on Gitea and GitHub. It was also discussed how this could link in with another project to create a package of commonly used analysis functions and decided that these should sit as two separate packages. It was also suggested that the current theme could be developed to produce other charts, however this should not hold back the package being made available.
    - Róisín said that the Statistical Governance and Publication teams should be involved in the development of any standardised themes. Anna shared that TPP are currently working on a viz guidance paper and that these teams will be communicated with. 
    - There is an issue with fonts which could be solved by pre-installing fonts on the new R Studio Server Pro. Esther Morris to add this to the list of considerations.

2. Alan presented on the redoc package, which integrates R Markdown documents with tracked changes in Microsoft Word. This is currently developmental and still buggy; the dev package can be installed via both GitHub and Gitea. Alan's slides can be found in the [slides](Slides) subfolder.

3. Jack shared some obscure R packages he has discovered recently. These included:
    - tidylog; to provide feedback on dplyr functions.
    - here; to define file paths relative to an R Studio project location.
    - janitor; a variety of functions for 'cleaning' data.
    - fuzzyjoin; joining functions that allow partial matching.

    His slides can be viewed [here](http://rpubs.com/jackhannah95/obscure-packages).
    
4. Alan shared his experience of writing a package and submitting it to CRAN - see [here](https://cran.r-project.org/web/packages/objectremover/index.html). The package is an R Studio add-in to assist with removing objects from the global environment. Features include removing objects according to name patterns and object type. Code for the package can be found on [GitHub](https://github.com/alan-y/objectremover). Alan used Travis to test the package in a variety of operating systems. He also recommended Hadley Wickam's advice for submitting a package to CRAN.
 
5. Alan also shared his ongoing work to pull together resources for self learning in R. After further development, this will be available via the R Resources app put together by Jaime.
 
6. R News / Updates
     - A technical sub group of the R User Group has been set up to tackle outstanding items that arise from the R User Group, SAG or other areas that require more detailed technical input. Current topics include implementation of R Studio Server Pro and Gitea.
     - R Studio 1.2 will allow users to knit markdown documents to powerpoint presentations. This version is currently available as a preview release.
     
7. The next meeting will take place in June 2019 in Meridian. David Caldwell volunteered to chair this.
