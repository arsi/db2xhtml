<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="sectioninfo">
        <xsl:variable name="allowedChildren" select="abbrev|abstract|address|affiliation|artpagenums|author|authorblurb|authorgroup|authorinitials|bibliocoverage|biblioid|bibliomisc|bibliorelation|biblioset|bibliosource|citebiblioid|citetitle|collab|confgroup|contractnum|contractsponsor|contrib|copyright|corpauthor|corpcredit|corpname|date|edition|editor|firstname|graphic|honorific|indexterm|invpartnumber|isbn|issn|issuenum|itermset|keywordset|legalnotice|lineage|mediaobject|modespec|orgname|othercredit|othername|pagenums|personname|printhistory|productname|productnumber|pubdate|publisher|publishername|pubsnumber|releaseinfo|revhistory|seriesvolnums|subjectset|subtitle|surname|title|titleabbrev|volumenum" />
        <div class="e_sectioninfo"><xsl:apply-templates select="$allowedChildren" /></div>
    </xsl:template>

</xsl:transform>
