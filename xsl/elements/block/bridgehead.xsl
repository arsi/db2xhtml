<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="bridgehead">
        <xsl:if test="@id">
            <a><xsl:attribute name="name"><xsl:value-of select="@id" /></xsl:attribute></a>
        </xsl:if>
        <div>
            <xsl:attribute name="class"><xsl:text>e_bridgehead_</xsl:text><xsl:value-of select="@renderas"/></xsl:attribute>
            <xsl:apply-templates select="text()|abbrev|acronym|action|anchor|application|author|authorinitials|biblioref|citation|citebiblioid|citereferentry|citetitle|classname|code|command|computeroutput|constant|corpauthor|corpcredit|database|email|emphasis|envar|errorcode|errorname|errortext|errortype|exceptionname|filename|firstterm|footnote|footnoteref|foreignphrase|function|glossterm|guibutton|guiicon|guilabel|guimenu|guimenuitem|guisubmenu|hardware|indexterm|inlineequation|inlinegraphic|inlinemediaobject|interface|interfacename|keycap|keycode|keycombo|keysym|link|literal|markup|medialabel|menuchoice|methodname|modespec|mousebutton|nonterminal|olink|ooclass|ooexception|oointerface|option|optional|orgname|othercredit|package|parameter|personname|phrase|productname|productnumber|prompt|property|quote|remark|replaceable|returnvalue|revhistory|sgmltag|structfield|structname|subscript|superscript|symbol|systemitem|termdef|token|trademark|type|ulink|uri|userinput|varname|wordasword|xref" />
        </div>
    </xsl:template>
   
</xsl:transform>