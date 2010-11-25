<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="xi:include">
        <xsl:param name="titlepath" />
        <xsl:apply-templates select="document(@href)/*">
            <xsl:with-param name="titlepath" select="$titlepath" />
        </xsl:apply-templates>
    </xsl:template>

    <xsl:template match="xi:include" mode="footnote">
        <xsl:apply-templates select="document(@href)/*" mode="footnote" />
    </xsl:template>

    <xsl:template match="xi:include" mode="toc">
        <xsl:param name="titlepath" />
        <xsl:apply-templates select="document(@href)/*" mode="toc">
            <xsl:with-param name="titlepath" select="$titlepath" />
        </xsl:apply-templates>
    </xsl:template>

</xsl:transform>