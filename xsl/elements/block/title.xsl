<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="title">
        <span class="e_title">
            <xsl:apply-templates select="text()|abbrev|acronym|action|anchor|application|author|authorinitials|biblioref|citation|citebiblioid|citereferency|citetitle|classname|code|command|computeroutput|constant|corpauthor|corpcredit|database|email|emphasis|envar|errorcode|errorname|errortext|errortype|exceptionname|filename|firstterm|footnote|footnoteref|foreignphrase|function|glossterm|guibutton|guiicon|guilabel|guimenu|guimenuitem|guisubmenu|hardware|indexterm|inlineequation|inlinegraphic|inlinemediaobject|interface|interfacename|keycap|keycode|keycombo|keysym|link|literal|markup|medialabel|menuchoice|methodname|modespec|mousebutton|nonterminal|olink|ooclass|ooexception|oointerface|option|optional|orgname|othercredit|package|parameter|personname|phrase|productname|productnumber|prompt|property|quote|remark|replaceable|returnvalue|revhistory|sgmltag|structfield|structname|subscript|superscript|symbol|systemitem|termdef|token|trademark|type|ulink|uri|userinput|varname|wordasword|xref" />
        </span>
    </xsl:template>

    <xsl:template match="title" mode="toc">
        <span class="e_title_toc">
            <xsl:apply-templates select="text()|abbrev|acronym|action|anchor|application|author|authorinitials|biblioref|citation|citebiblioid|citereferency|citetitle|classname|code|command|computeroutput|constant|corpauthor|corpcredit|database|email|emphasis|envar|errorcode|errorname|errortext|errortype|exceptionname|filename|firstterm|footnote|footnoteref|foreignphrase|function|glossterm|guibutton|guiicon|guilabel|guimenu|guimenuitem|guisubmenu|hardware|indexterm|inlineequation|inlinegraphic|inlinemediaobject|interface|interfacename|keycap|keycode|keycombo|keysym|link|literal|markup|medialabel|menuchoice|methodname|modespec|mousebutton|nonterminal|olink|ooclass|ooexception|oointerface|option|optional|orgname|othercredit|package|parameter|personname|phrase|productname|productnumber|prompt|property|quote|remark|replaceable|returnvalue|revhistory|sgmltag|structfield|structname|subscript|superscript|symbol|systemitem|termdef|token|trademark|type|ulink|uri|userinput|varname|wordasword|xref" />
        </span>
    </xsl:template>

</xsl:transform>