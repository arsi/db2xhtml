<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="warning">
        <xsl:variable name="allowedChildren" select="address|anchor|beginpage|bibliolist|blockquote|bridgehead|calloutlist|classsynopsis|cmdsynopsis|constructorsynopsis|destructorsynopsis|equation|example|fieldsynopsis|figure|formalpara|funcsynopsis|glosslist|graphic|graphicco|indexterm|informalequation|informalfigure|informaltable|itemizedlist|literallayout|mediaobject|mediaobjectco|methodsynopsis|orderedlist|para|procedure|programlisting|programlistingco|remark|screen|screenco|screenshot|segmentedlist|sidebar|simpara|simplelist|synopsis|table|title|variablelist" />
        <div class="e_warning"><xsl:apply-templates select="$allowedChildren" /></div>
    </xsl:template>

</xsl:transform>
