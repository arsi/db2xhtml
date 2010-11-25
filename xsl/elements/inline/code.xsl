<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="cmdsynopsis">
        <xsl:variable name="allowedChildren" select="arg|command|group|sbr|synopfraqment" />
        <xsl:apply-templates select="$allowedChildren" />
    </xsl:template>
                
</xsl:transform>