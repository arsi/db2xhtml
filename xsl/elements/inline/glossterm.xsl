<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="glossterm">
        <xsl:variable name="allowedChildren" select="text()|abbrev|acronym|action|anchor|application|author|authorinitials|beginpage|biblioref|citation|citebiblioid|citerefentry|citetitle|classname|classsynopsis|cmdsynopsis|code|command|computeroutput|constant|constructorsynopsis|corpauthor|corpcredit|database|destructorsynopsis|email|emphasis|envar|errorcode|errorname|errortext|errortype|exceptionname|fieldsynopsis|filename|firstterm|footnote|footnoteref|foreignphrase|funcsynopsis|function|glossterm|guibutton|guiicon|guilabel|guimenu|guimenuitem|guisubmenu|hardware|indexterm|inlineequation|inlinegraphic|inlinemediaobject|interface|interfacename|keycap|keycode|keycombo|keysym|link|literal|markup|medialabel|menuchoice|methodname|methodsynopsis|modespec|mousebutton|nonterminal|olink|ooclass|ooexception|oointerface|option|optional|orgname|othercredit|package|parameter|personname|phrase|productname|productnumber|prompt|property|quote|remark|replaceable|returnvalue|revhistory|sgmltag|structfield|structname|subscript|superscript|symbol|synopsis|systemitem|termdef|token|trademark|type|ulink|uri|userinput|varname|wordasword|xref" />
        <xsl:apply-templates select="$allowedChildren" />
    </xsl:template>

</xsl:transform>