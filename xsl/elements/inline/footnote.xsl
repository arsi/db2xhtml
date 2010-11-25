<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="footnote">
        <span class="e_footnote"/>
    </xsl:template>

    <xsl:template match="footnote" mode="footnote">
        <xsl:variable name="allowedChildren" select="address|bibliolist|blockquote|calloutlist|classsynopsis|cmdsynopsis|constructorsynopsis|destructorsynopsis|fieldsynopsis|formalpara|funcsynopsis|glosslist|graphic|graphicco|informalequation|informalexample|informalfigure|informaltable|itemizedlist|literallayout|mediaobject|mediaobjectco|methodsynopsis|orderedlist|para|programlisting|programlistingco|screen|screenco|screenshot|segmentedlist|simpara|simplelist|synopsis|variablelist" />
        <span class="footline"><xsl:apply-templates select="$allowedChildren" /></span>
    </xsl:template>

</xsl:transform>