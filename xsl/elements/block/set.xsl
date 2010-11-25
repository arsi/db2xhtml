<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="set">
        <li class="section">
            <xsl:if test="@id">
                <a><xsl:attribute name="name"><xsl:value-of select="@id" /></xsl:attribute></a>
            </xsl:if>
            <a>
                <xsl:attribute name="name"><xsl:value-of select="title"/></xsl:attribute>
            </a>
            <xsl:apply-templates select="title" />
            <ol class="section">
                <xsl:apply-templates select="book|set|setindex|setinfo|subtitle|titleabbrev|toc|xi:include">
                    <xsl:with-param name="titlepath" select="title" />
                </xsl:apply-templates>
            </ol>
        </li>
    </xsl:template>

    <xsl:template match="set" mode="toc">
        <li class="tocsection">
            <a>
                <xsl:attribute name="href">
                    #<xsl:value-of select="title"/>
                </xsl:attribute>
                <xsl:apply-templates select="title" mode="toc" />
            </a>
            <ol class="tocsection">
                <xsl:apply-templates select="book|set|setindex|setinfo|subtitle|titleabbrev|toc|xi:include" mode="toc">
                    <xsl:with-param name="titlepath" select="title" />
                </xsl:apply-templates>
            </ol>
        </li>
    </xsl:template>

</xsl:transform>