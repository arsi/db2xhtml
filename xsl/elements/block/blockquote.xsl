<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="blockquote">
        <xsl:variable name="allowedChildren" select="abstract|address|anchor|attribution|authorblurb|beginpage|bibliolist|blockinfo|blockquote|bridgehead|calloutlist|caution|classsynopsis|cmdsynopsis|constraintdef|constructorsynopsis|destructorsynopsis|epigraph|equation|example|fieldsynopsis|figure|formalpara|funcsynopsis|glosslist|graphic|graphicco|highlights|important|indexterm|informalequation|informalexample|informalfigure|informaltable|itemizedlist|literallayout|mediaobject|mediaobjectco|methodsynopsis|msgset|note|orderedlist|para|procedure|productionset|programlisting|programlistingco|qandaset|remark|screen|screenco|screenshot|segmentedlist|sidebar|simpara|simplelist|synopsis|table|task|tip|title|variablelist|warning" />
        <div class="e_blockquote"><xsl:apply-templates select="$allowedChildren" /></div>
    </xsl:template>

</xsl:transform>
