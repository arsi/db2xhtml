<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

<!--
/*
 * db2xhtml XSLT Library, version 0.2
 *
 * Browserside DocBook to XHTML XSLT/CSS Transformation
 *
 * Copyright 2010,2011 Arsi Atomi, email arsi at porkkana dot org
 *
 * This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License (http://www.gnu.org/licenses/) for more details.
 */
-->

    <xsl:output
        method="html"
        media-type="application/xhtml+xml"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
        doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
    />

    <xsl:variable name="csspath">../css/main.css</xsl:variable>

    <xsl:variable name="inlineElements" select="abbrev|acronym|action|anchor|application|author|authorinitials|beginpage|biblioref|citation|citebiblioid|citereferency|citetitle|classname|classsynopsis|cmdsynopsis|code|command|computeroutput|constant|constructosynopsis|corpauthor|corpcredit|database|destructorsynopsis|email|emphasis|envar|errorcode|errorname|errortext|exceptionname|fieldsynopsis|filename|firstterm|footnote|footnoteref|foreignphrase|funcsynopsis|function|glossterm|guibutton|guiicon|guilabel|guimenu|guimenuitem|guisubmenu|hardware|indexterm|inlineequation|inlinegraphic|inlinemediaobject|interface|interfacename|keycap|keycode|keycombo|keysym|link|literal|markup|medialabel|menuchoice|methodname|methodsynopsis|modespec|mousebutton|nonterminal|olink|ooclass|ooexception|oointerface|option|optional|orgname|othercredit|package|parameter|personname|phrase|productname|productnumber|prompt|property|quote|remark|replaceable|returnvalue|revhistory|sgmltag|structfield|structname|subscript|superscript|symbol|synopsis|systemitem|termdef|token|trademark|type|ulink|uri|userinput|varname|wordasword|xref" />
    <xsl:variable name="infoChildren" select="abbrev|abstract|address|affiliation|artpagenums|author|authorblurb|authorgroup|authorinitials|bibliocoverage|biblioid|bibliomisc|bibliorelation|biblioset|bibliosource|citebiblioid|citetitle|collab|confgroup|contractnum|contractsponsor|contrib|copyright|corpauthor|corpcredit|corpname|date|edition|editor|firstname|graphic|honorific|indexterm|invpartnumber|isbn|issn|issuenum|itermset|keywordset|legalnotice|lineage|mediaobject|modespec|orgname|othercredit|othername|pagenums|personname|printhistory|productname|productnumber|pubdate|publisher|publishername|pubsnumber|releaseinfo|revhistory|seriesvolnums|subjectset|subtitle|surname|title|titleabbrev|volumenum" />

    <xsl:include href="elements/block/_prelist.xsl" />
    <xsl:include href="elements/block/abstract.xsl" />
    <xsl:include href="elements/block/appendix.xsl" />
    <xsl:include href="elements/block/article.xsl" />
    <xsl:include href="elements/block/bibliodiv.xsl" />
    <xsl:include href="elements/block/biblioentry.xsl" />
    <xsl:include href="elements/block/bibliography.xsl" />
    <xsl:include href="elements/block/book.xsl" />
    <xsl:include href="elements/block/bridgehead.xsl" />
    <xsl:include href="elements/block/blockquote.xsl" />
    <xsl:include href="elements/block/caution.xsl" />
    <xsl:include href="elements/block/chapter.xsl" />
    <xsl:include href="elements/block/entry.xsl" />
    <xsl:include href="elements/block/example.xsl" />
    <xsl:include href="elements/block/formalpara.xsl" />
    <xsl:include href="elements/block/glossary.xsl" />
    <xsl:include href="elements/block/glossentry.xsl" />
    <xsl:include href="elements/block/important.xsl" />
    <xsl:include href="elements/block/informaltable.xsl" />
    <xsl:include href="elements/block/itemizedlist.xsl" />
    <xsl:include href="elements/block/legalnotice.xsl" />
    <xsl:include href="elements/block/listitem.xsl" />
    <xsl:include href="elements/block/note.xsl" />
    <xsl:include href="elements/block/orderedlist.xsl" />
    <xsl:include href="elements/block/para.xsl" />
    <xsl:include href="elements/block/programlisting.xsl" />
    <xsl:include href="elements/block/revhistory.xsl" />
    <xsl:include href="elements/block/revision.xsl" />
    <xsl:include href="elements/block/row.xsl" />
    <xsl:include href="elements/block/screen.xsl" />
    <xsl:include href="elements/block/sect1.xsl" />
    <xsl:include href="elements/block/sect2.xsl" />
    <xsl:include href="elements/block/sect3.xsl" />
    <xsl:include href="elements/block/sect4.xsl" />
    <xsl:include href="elements/block/sect5.xsl" />
    <xsl:include href="elements/block/section.xsl" />
    <xsl:include href="elements/block/set.xsl" />
    <xsl:include href="elements/block/simpara.xsl" />
    <xsl:include href="elements/block/simplelist.xsl" />
    <xsl:include href="elements/block/table.xsl" />
    <xsl:include href="elements/block/tbody.xsl" />
    <xsl:include href="elements/block/tgroup.xsl" />
    <xsl:include href="elements/block/thead.xsl" />
    <xsl:include href="elements/block/tip.xsl" />
    <xsl:include href="elements/block/title.xsl" />
    <xsl:include href="elements/block/td.xsl" />
    <xsl:include href="elements/block/tr.xsl" />
    <xsl:include href="elements/block/warning.xsl" />

    <xsl:include href="elements/inline/_text.xsl" />
    <xsl:include href="elements/inline/application.xsl" />
    <xsl:include href="elements/inline/arg.xsl" />
    <xsl:include href="elements/inline/author.xsl" />
    <xsl:include href="elements/inline/authorinitials.xsl" />
    <xsl:include href="elements/inline/cmdsynopsis.xsl" />
    <xsl:include href="elements/inline/code.xsl" />
    <xsl:include href="elements/inline/command.xsl" />
    <xsl:include href="elements/inline/corpauthor.xsl" />
    <xsl:include href="elements/inline/date.xsl" />
    <xsl:include href="elements/inline/emphasis.xsl" />
    <xsl:include href="elements/inline/filename.xsl" />
    <xsl:include href="elements/inline/firstname.xsl" />
    <xsl:include href="elements/inline/footnote.xsl" />
    <xsl:include href="elements/inline/glossterm.xsl" />
    <xsl:include href="elements/inline/group.xsl" />
    <xsl:include href="elements/inline/guibutton.xsl" />
    <xsl:include href="elements/inline/honorific.xsl" />
    <xsl:include href="elements/inline/link.xsl" />
    <xsl:include href="elements/inline/member.xsl" />
    <xsl:include href="elements/inline/othername.xsl" />
    <xsl:include href="elements/inline/personname.xsl" />
    <xsl:include href="elements/inline/pubdate.xsl" />
    <xsl:include href="elements/inline/quote.xsl" />
    <xsl:include href="elements/inline/revnumber.xsl" />
    <xsl:include href="elements/inline/revremark.xsl" />
    <xsl:include href="elements/inline/sgmltag.xsl" />
    <xsl:include href="elements/inline/subscript.xsl" />
    <xsl:include href="elements/inline/superscript.xsl" />
    <xsl:include href="elements/inline/surname.xsl" />
    <xsl:include href="elements/inline/ulink.xsl" />
    <xsl:include href="elements/inline/varname.xsl" />
    <xsl:include href="elements/inline/xref.xsl" />

    <xsl:include href="elements/suppressed/_info.xsl" />

    <xsl:include href="elements/xi_include.xsl" />

    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:choose>
                        <xsl:when test="//title">
                            <xsl:value-of select="//title"/>
                        </xsl:when>
                        <xsl:when test="//bookinfo/title">
                            <xsl:value-of select="//bookinfo/title"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <span class="db2xhtml_error">
                                <xsl:text>Title not found!</xsl:text>
                            </span>
                        </xsl:otherwise>
                    </xsl:choose>
                </title>
                <link title="Main" rel="stylesheet" type="text/css" media="screen, print">
                    <xsl:attribute name="href"><xsl:copy-of select="$csspath"/></xsl:attribute>
                </link>
            </head>
            <body>
                <div class="header">
                </div>
                <div class="toc">
                    <h1>
                    <xsl:choose>
                        <xsl:when test="//title">
                            <xsl:value-of select="//title"/>
                        </xsl:when>
                        <xsl:when test="//bookinfo/title">
                            <xsl:value-of select="//bookinfo/title"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <span class="db2xhtml_error">
                                <xsl:text>Title not found!</xsl:text>
                            </span>
                        </xsl:otherwise>
                    </xsl:choose>
                    </h1>
                    <hr />
                    <ol class="tocroot">
                        <xsl:apply-templates select="article|book|chapter|part|section|set|xi:include" mode="toc"/>
                    </ol>
                    <hr />
                </div>
                <div class="content">
                    <ol class="root">
                        <xsl:apply-templates select="article|book|chapter|part|section|set|xi:include" />
                    </ol>
                </div>
                <div class="e_beginpage" />
                <div class="footnotes">
                    <xsl:apply-templates select="*" mode="footnote" />
                </div>
            	<div class="footer">
            	</div>
            </body>
        </html>
    </xsl:template>

</xsl:transform>