<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="simpara">
        <xsl:variable name="allowedChildren" select="text()|$inlineElements" />
        <div class="e_para"><xsl:apply-templates select="$allowedChildren"/></div>
    </xsl:template>

</xsl:transform>