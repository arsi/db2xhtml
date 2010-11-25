<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="code">
        <xsl:variable name="allowedChildren" select="text()|action|anchor|application|beginpage|classname|code|command|computeroutput|constant|database|email|envar|errorcode|errorname|errortext|errortype|exceptionname|filename|function|guibutton|guiicon|guilabel|guimenu|guimenuitem|guisubmenu|hardware|indexterm|inlinegraphic|inlinemediaobject|interface|interfacename|keycap|keycode|keycombo|keysym|link|literal|markup|medialabel|menuchoice|methodname|mousebutton|nonterminal|olink|ooclass|ooexception|oointerface|option|optional|package|parameter|promtp|property|remark|replaceable|returnvalue|sgmltag|structfield|structname|subscript|symbol|systemitem|token|type|ulink|uri|userinput|varname" />
        <code><xsl:apply-templates select="$allowedChildren" /></code>
    </xsl:template>
                
</xsl:transform>