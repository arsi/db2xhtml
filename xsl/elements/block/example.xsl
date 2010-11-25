<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="example">
        <xsl:variable name="allowedChildren" select="address|beginpage|bibliolist|blockinfo|blockquote|calloutlist|classsynopsis|cmdsynopsis|constructorsynopsis|destructorsynopsis|fieldsynopsis|formalpara|funcsynopsis|glosslist|graphic|graphicco|indexterm|informalequation|informalexample|informalfigure|informaltable|itemizedlist|literallayout|mediaobject|mediaobjectco|methodsynopsis|orderedlist|para|procedure|programlisting|programlistingco|screen|screenco|screenshot|segmentedlist|simpara|simplelist|synopsis|titleabbrev|variablelist" />
        <div class="e_example">
            <xsl:if test="title">
                <div class="e_example_title">
                    <xsl:apply-templates select="title" />
                </div>
            </xsl:if>
            <xsl:apply-templates select="$allowedChildren" />
        </div>
    </xsl:template>

</xsl:transform>
