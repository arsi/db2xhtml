<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="glossary">
        <xsl:param name="titlepath"/>
        <div class="e_beginpage" />
        <li class="section">
            <xsl:if test="@id">
                <a><xsl:attribute name="name"><xsl:value-of select="@id" /></xsl:attribute></a>
            </xsl:if>
            <a>
                <xsl:attribute name="name">
                    <xsl:value-of select="concat($titlepath,'-',title)" />
                </xsl:attribute>
            </a>
            <xsl:if test="title">
                <xsl:apply-templates select="title" mode="toc" />
            </xsl:if>
            <ol class="section">
                <xsl:apply-templates select="abstract|address|anchor|authorblurb|beginpage|bibliography|bibliolist|blockquote|bridgehead|calloutlist|caution|classsynopsis|cmdsynopsis|constraintdef|constructorsynopsis|destructorsynopsis|epigraph|equation|example|fieldsynopsis|figure|formalpara|funcsynopsis|glossaryinfo|glossdiv|glossentry|glosslist|graphic|graphicco|highlights|important|indexterm|informalequation|informalexample|informalfigure|informaltable|itemizedlist|literallayout|mediaobject|mediaobjectco|methodsynopsis|msgset|note|orderedlist|para|procedure|productionset|programlisting|programlistingco|qandaset|remark|screen|screenco|screenshot|segmentedlist|sidebar|simpara|simplelist|subtitle|synopsis|table|task|tip|titleabbrev|variablelist|warning" >
                    <xsl:with-param name="titlepath" select="concat($titlepath,'-',title)" />
                </xsl:apply-templates>
            </ol>
        </li>
    </xsl:template>

    <xsl:template match="glossary" mode="toc">
        <xsl:param name="titlepath"/>
        <li class="tocsection">
            <a>
                <xsl:attribute name="href">
                    #<xsl:value-of select="concat($titlepath,'-',title)"/>
                </xsl:attribute>
                <xsl:apply-templates select="title" />
            </a>
            <ol class="tocsection">
                <xsl:apply-templates select="abstract|address|anchor|authorblurb|beginpage|bibliography|bibliolist|blockquote|bridgehead|calloutlist|caution|classsynopsis|cmdsynopsis|constraintdef|constructorsynopsis|destructorsynopsis|epigraph|equation|example|fieldsynopsis|figure|formalpara|funcsynopsis|glossaryinfo|glossdiv|glossentry|glosslist|graphic|graphicco|highlights|important|indexterm|informalequation|informalexample|informalfigure|informaltable|itemizedlist|literallayout|mediaobject|mediaobjectco|methodsynopsis|msgset|note|orderedlist|para|procedure|productionset|programlisting|programlistingco|qandaset|remark|screen|screenco|screenshot|segmentedlist|sidebar|simpara|simplelist|subtitle|synopsis|table|task|tip|titleabbrev|variablelist|warning" mode="toc" >
                    <xsl:with-param name="titlepath" select="concat($titlepath,'-',title)" />
                </xsl:apply-templates>
            </ol>
        </li>
    </xsl:template>

</xsl:transform>