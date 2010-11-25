<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="programlisting">
        <xsl:call-template name="_prelist">
            <xsl:with-param name="linenumbering"><xsl:value-of select="@linenumbering"/></xsl:with-param>
        </xsl:call-template>
    </xsl:template>

</xsl:transform>