<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="itemizedlist">
        <xsl:if test="@id">
            <a><xsl:attribute name="name"><xsl:value-of select="@id" /></xsl:attribute></a>
        </xsl:if>
        <ol class="e_itemizedlist">
            <xsl:apply-templates select="abstract|address|anchor|authorblurb|beginpage|blockinfo|blockquote|bridgehead|caution|classsynopsis|cmdsynopsis|constructorsynopsis|destructorsynopsis|epigraph|fieldsynopsis|formalpara|funcsynopsis|graphic|graphicco|highlights|important|indexterm|informalequation|informalexample|informalfigure|informaltable|listitem|literallayout|mediaobject|mediaobjectco|methodsynopsis|note|para|programlisting|programlistingco|remark|screen|screenco|screenshot|simpara|synopsis|tip|title|titleabbrev|warning" />
        </ol>
    </xsl:template>
   
</xsl:transform>