<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="superscript">
        <xsl:variable name="allowedChildren" select="text()|anchor|emphasis|inlinegraphic|inlinemediaobject|link|olink|remark|replaceable|subscript|superscript|symbol|ulink" />
        <span class="e_superscript"><xsl:apply-templates select="$allowedChildren" /></span>
    </xsl:template>
                
</xsl:transform>