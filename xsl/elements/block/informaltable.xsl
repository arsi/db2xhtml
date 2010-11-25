<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="informaltable">
        <xsl:if test="@id">
            <a><xsl:attribute name="name"><xsl:value-of select="@id" /></xsl:attribute></a>
        </xsl:if>
        <table class="e_informaltable">
            <xsl:apply-templates select="blockinfo|col|colgroup|graphic|mediaobject|tbody|textobject|tfoot|tgroup|thead|tr" />
        </table>
    </xsl:template>
   
</xsl:transform>