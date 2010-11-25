<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="table">
        <xsl:if test="@id">
            <a><xsl:attribute name="name"><xsl:value-of select="@id" /></xsl:attribute></a>
        </xsl:if>
        <table class="e_table">
            <xsl:apply-templates select="blockinfo|caption|col|colgroup|graphic|indexterm|mediaobject|tbody|textobject|tfoot|tgroup|thead|title|titleabbrev|tr" />
        </table>
    </xsl:template>
   
</xsl:transform>