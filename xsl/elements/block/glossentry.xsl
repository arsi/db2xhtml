<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="glossentry">
        <xsl:variable name="allowedChildren" select="abbrev|acronym|glosssee|indexterm|revhistory" />
        <div class="e_glossentry">
            <xsl:if test="glossterm">
                <div class="e_glossterm">
                    <xsl:apply-templates select="glossterm" />
                </div>
            </xsl:if>
            <xsl:if test="glossdef">
                <div class="e_glossdef">
                    <xsl:apply-templates select="glossdef" />
                </div>
            </xsl:if>
            <xsl:apply-templates select="$allowedChildren"/>
        </div>
    </xsl:template>

</xsl:transform>