<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="author">
        <xsl:variable name="allowedChildren" select="address|affiliation|authorblurb|contrib|email|firstname|honorific|lineage|othername|personblurb|personname|surname" />
        <span class="e_author"><xsl:apply-templates select="$allowedChildren" /></span>
    </xsl:template>
                
</xsl:transform>