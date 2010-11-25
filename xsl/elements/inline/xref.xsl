<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="xref">
        <xsl:variable name="name" select="@linkend" />
        <a>
            <xsl:attribute name="href">
                #<xsl:value-of select="@linkend" />
            </xsl:attribute>
            "<xsl:value-of select="//*[@id=$name]/title" />"
        </a>
    </xsl:template>

</xsl:transform>
