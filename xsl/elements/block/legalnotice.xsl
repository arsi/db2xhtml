<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="legalnotice">
        <xsl:variable name="allowedChildren" select="beginpage|bibliolist|blockinfo|blockquote|calloutlist|caution|formalpara|glosslist|important|indexterm|itemizedlist|literallayout|note|orderedlist|para|programlisting|programlistingco|screen|screenco|screenshot|segmentedlist|simpara|simplelist|tip|title|variablelist|warning" />
        <div class="e_legalnotice">
            <xsl:apply-templates select="$allowedChildren"/>
        </div>
    </xsl:template>

</xsl:transform>