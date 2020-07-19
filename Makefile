SHELL=/bin/bash

diva/sbt.html: diva/sbt.endnote diva/sbt.intro.html generate
	(cat diva/sbt.intro.html; ./generate $<) > $@

diva/sbt.endnote:
	curl -fgLo $@ 'http://www.diva-portal.org/smash/export.jsf?format=endnote&addFilename=true&aq=[[{%22titleAll%22:%22\%22Svensk%20Botanisk%20Tidskrift\%22%22}]]&aqe=[]&aq2=[[{%22publicationTypeCode%22:[%22collection%22]}]]&onlyFullText=true&noOfRows=1000&sortOrder=dateIssued_sort_desc&sortOrder2=title_sort_asc'

diva/search:
	curl -fLo $@ 'http://www.diva-portal.org/smash/resultList.jsf?query=Svensk%2BBotanisk%2BTidskrift&language=en&searchType=SIMPLE&noOfRows=1000&sortOrder=dateIssued_sort_asc&sortOrder2=title_sort_asc&onlyFullText=true&sf=all&aq=%5B%5B%5D%5D&aqe=%5B%5D&aq2=%5B%5B%5D%5D&af=%5B%5D'
