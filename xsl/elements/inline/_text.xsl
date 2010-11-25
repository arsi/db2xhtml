<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="text()">
        <xsl:value-of select="." />
    </xsl:template>

    <xsl:template match="text()" mode="footnote" />

    <xsl:template match="text()" mode="toc" />

</xsl:transform>