<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="bibliodiv">
        <xsl:variable name="allowedChildren" select="abstract|address|anchor|authorblurb|beginpage|biblioentry|bibliolist|bibliomixed|blockquote|bridgehead|calloutlist|caution|classsynopsis|cmdsynopsis|constraintdef|constructorsynopsis|destructorsynopsis|epigraph|equation|example|fieldsynopsis|figure|formalpara|funcsynopsis|glosslist|graphic|graphicco|highlights|important|indexterm|informalequation|informalexample|informaltable|itemizedlist|literallayout|mediaobject|mediaobjectco|methodsynopsis|msgset|note|orderedlist|para|procedure|productionset|programlisting|programlistingco|qandaset|remark|screen|screenco|segmentedlist|sidebar|simpara|simplelist|subtitle|synopsis|table|task|tip|titleabbrev|variablelist|warning" />
        <ol class="e_bibliodiv">
            <xsl:if test="title">
                <div class="e_bibliodiv_title">
                    <xsl:apply-templates select="title" />
                </div>
            </xsl:if>
            <xsl:apply-templates select="$allowedChildren"/>
        </ol>
    </xsl:template>

</xsl:transform>