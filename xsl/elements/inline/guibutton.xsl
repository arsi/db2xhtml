<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="guibutton">
        <xsl:variable name="allowedChildren" select="text()|accel|beginpage|indexterm|inlinegraphic|inlinemediaobject|replaceable|subscript|superscript" />
        <span class="e_guibutton"><xsl:apply-templates select="$allowedChildren" /></span>
    </xsl:template>
                
</xsl:transform>