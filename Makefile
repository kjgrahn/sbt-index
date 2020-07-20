# Copyright (c) 2020 Jörgen Grahn. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#
#  1. Redistributions of source code must retain the above copyright
#     notice, this list of conditions and the following disclaimer.
#
#  2. Redistributions in binary form must reproduce the above
#     copyright notice, this list of conditions and the following
#     disclaimer in the documentation and/or other materials provided
#     with the distribution.
#
#  3. Neither the name of the copyright holder nor the names of its
#     contributors may be used to endorse or promote products derived
#     from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

SHELL=/bin/bash

diva/sbt.html: diva/sbt.endnote diva/sbt.intro.html generate
	(cat diva/sbt.intro.html; ./generate $<) > $@

diva/sbt.endnote:
	curl -fgLo $@ 'http://www.diva-portal.org/smash/export.jsf?format=endnote&addFilename=true&aq=[[{%22titleAll%22:%22\%22Svensk%20Botanisk%20Tidskrift\%22%22}]]&aqe=[]&aq2=[[{%22publicationTypeCode%22:[%22collection%22]}]]&onlyFullText=true&noOfRows=1000&sortOrder=dateIssued_sort_desc&sortOrder2=title_sort_asc'

diva/search:
	curl -fLo $@ 'http://www.diva-portal.org/smash/resultList.jsf?query=Svensk%2BBotanisk%2BTidskrift&language=en&searchType=SIMPLE&noOfRows=1000&sortOrder=dateIssued_sort_asc&sortOrder2=title_sort_asc&onlyFullText=true&sf=all&aq=%5B%5B%5D%5D&aqe=%5B%5D&aq2=%5B%5B%5D%5D&af=%5B%5D'
