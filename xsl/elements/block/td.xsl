<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="td">
        <xsl:if test="@id">
            <a><xsl:attribute name="name"><xsl:value-of select="@id" /></xsl:attribute></a>
        </xsl:if>
        <td class="e_td">
            <xsl:apply-templates select="text()|abbrev|acronym|action|anchor|application|author|authorinitials|beginpage|bibliolist|biblioref|calloutlist|caution|citation|citebiblioid|citerefentry|citetitle|classname|classsynopsis|cmdsynopsis|code|command|computeroutput|constant|constructorsynopsis|corpauthor|corpcredit|database|destructorsynopsis|email|emphasis|envar|errocode|errorname|errortext|errortype|exceptionname|fieldsynopsis|filename|firstterm|footnote|footnoteref|foreignphrase|formalpara|funcsynopsis|function|glosslist|glossterm|graphic|guibutton|guiicon|guilabel|guimenu|guimenuitem|guisubmenu|hardware|important|indexterm|inlineequation|inlinegraphic|inlinemediaobject|interface|interfacename|orderedlist|orgname|othercredit|package|para|parameter|personname|phrase|productname|productnumber|programlisting|programlistingco|prompt|property|quote|remark|replaceable|returnvalue|revhistory|screen|screenco|screenshot|segmentedlist|sgmltag|simpara|simplelist|structfield|structname|subscript|superscript|symbol|synopsis|systemitem|termdef|tip|token|trademark|type|ulink|uri|userinput|variablelist|varname|warning|wordasword|xref" />
        </td>
    </xsl:template>
   
</xsl:transform>