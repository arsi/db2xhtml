<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="biblioentry">
        <xsl:variable name="allowedChildren" select="abbrev|abstract|address|affiliation|articleinfo|artpagenums|author|authorblurb|authorgroup|authorinitials|bibliocoverage|biblioid|bibliomisc|bibliorelation|biblioset|bibliosource|citebiblioid|citetitle|collab|confgroup|contractnum|contractsponsor|contrib|copyright|corpauthor|corpcredit|corpname|date|edition|editor|firstname|honorific|indexterm|invpartnumber|isbn|issn|issuenum|lineage|orgname|othercredit|othername|pagenums|personname|printhistory|productname|productnumber|pubdate|publisher|publishername|pubsnumber|releaseinfo|revhistory|seriesvolnums|subtitle|surname|titleabbrev|volumenum" />
        <li class="e_biblioentry">
            <xsl:if test="title">
                <div class="e_biblioentry_title">
                    <xsl:apply-templates select="title" />
                </div>
            </xsl:if>
            <xsl:apply-templates select="$allowedChildren"/>
        </li>
    </xsl:template>

</xsl:transform>