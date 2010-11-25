<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="articleinfo|bookinfo|sect1info|sect2info|sect3info|sect4info|sect5info|sectioninfo|setinfo">
        <xsl:variable name="allowedChildren" select="abbrev|address|affiliation|artpagenums|authorblurb|authorgroup|authorinitials|bibliocoverage|biblioid|bibliomisc|bibliorelation|biblioset|bibliosource|citebiblioid|citetitle|collab|confgroup|contractnum|contractsponsor|contrib|corpcredit|corpname|date|edition|editor|firstname|graphic|honorific|indexterm|invpartnumber|isbn|issn|issuenum|itermset|keywordset|lineage|mediaobject|modespec|orgname|othercredit|othername|pagenums|personname|printhistory|productname|productnumber|publisher|publishername|pubsnumber|releaseinfo|seriesvolnums|subjectset|subtitle|surname|titleabbrev|volumenum" />
        <div class="e_sectioninfo">
            <xsl:if test="title">
                <div class="db2xhtml_info_title">TITLE</div>
                <xsl:apply-templates select="title" />
            </xsl:if>
            <xsl:if test="pubdate">
                <div class="db2xhtml_info_title">DATE</div>
                <xsl:apply-templates select="pubdate" />
            </xsl:if>
            <xsl:if test="corpauthor">
                <div class="db2xhtml_info_title">CORPAUTHOR</div>
                <xsl:apply-templates select="corpauthor" />
            </xsl:if>
            <xsl:if test="author">
                <div class="db2xhtml_info_title">AUTHOR</div>
                <xsl:apply-templates select="author" />
            </xsl:if>
            <xsl:if test="copyright">
                <div class="db2xhtml_info_title">COPYRIGHT</div>
                <xsl:apply-templates select="copyright" />
            </xsl:if>
            <xsl:if test="legalnotice">
                <div class="db2xhtml_info_title">LEGALNOTICE</div>
                <xsl:apply-templates select="legalnotice" />
            </xsl:if>
            <xsl:if test="revhistory">
                <div class="db2xhtml_info_title">REVISION HISTORY</div>
                <xsl:apply-templates select="revhistory" />
            </xsl:if>
            <xsl:if test="abstract">
                <div class="db2xhtml_info_title">ABSTRACT</div>
                <xsl:apply-templates select="abstract" />
            </xsl:if>
            <xsl:apply-templates select="$allowedChildren" />
        </div>
    </xsl:template>

</xsl:transform>
