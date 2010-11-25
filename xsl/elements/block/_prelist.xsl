<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template name="_prelist">
        <xsl:param name="linenumbering"/>
        <div>
            <xsl:attribute name="class"><xsl:text>e_</xsl:text><xsl:value-of select="name()"/></xsl:attribute>
            <ol>
                <xsl:call-template name="_pre-recursive">
                    <xsl:with-param name="parse-string">
                        <xsl:apply-templates/>
                    </xsl:with-param>
                    <xsl:with-param name="linenumbering"><xsl:value-of select="@linenumbering"/></xsl:with-param>
                </xsl:call-template>
            </ol>
        </div>
    </xsl:template>

    <xsl:template name="_pre-recursive">
        <xsl:param name="parse-string"/>
        <xsl:param name="linenumbering"/>
        <xsl:if test="not($parse-string='')">
            <xsl:choose>
                <xsl:when test="contains($parse-string,'&#xA;')">
                    <li>
                        <xsl:attribute name="class">
                            <xsl:text>list_</xsl:text>
                            <xsl:value-of select="$linenumbering"/>
                        </xsl:attribute>
                        <xsl:value-of select="substring-before($parse-string,'&#xA;')" />
                    </li>
                </xsl:when>
                <xsl:otherwise>
                    <li>
                        <xsl:attribute name="class">
                            <xsl:text>list_</xsl:text>
                            <xsl:value-of select="$linenumbering"/>
                        </xsl:attribute>
                        <xsl:value-of select="$parse-string"/>
                    </li>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:call-template name="_pre-recursive">
                <xsl:with-param name="parse-string">
                    <li><xsl:attribute name="class"><xsl:text>list_</xsl:text><xsl:value-of select="$linenumbering"/></xsl:attribute><xsl:value-of select="substring-after($parse-string,'&#xA;')"/></li>
                </xsl:with-param>
                <xsl:with-param name="linenumbering"><xsl:value-of select="$linenumbering"/></xsl:with-param>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

</xsl:transform>