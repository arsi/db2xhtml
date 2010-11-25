<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="sgmltag">
        <xsl:variable name="allowedChildren" select="text()|beginpage|indexterm|inlinegraphic|inlinemediaobject|replaceable" />
        <span>
            <xsl:attribute name="class">e_sgmltag_<xsl:value-of select="@class"/></xsl:attribute>
            <xsl:apply-templates select="$allowedChildren" />
        </span>
    </xsl:template>
                
</xsl:transform>