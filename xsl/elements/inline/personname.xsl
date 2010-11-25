<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="honorific">
        <xsl:variable name="allowedChildren" select="text()|emphasis|indexterm|inlinegraphic|inlinemediaobject|link|olink|remark|replaceable|subscript|superscript|trademark|ulink" />
        <xsl:apply-templates select="$allowedChildren" />
    </xsl:template>
                
</xsl:transform>