<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="command">
        <xsl:variable name="allowedChildren" select="text()|action|anchor|application|beginpage|classname|code|command|computeroutput|constant|database|email|envar|errorcode|errorname|errortext|errortype|exceptionname|filename|function|guibutton|guiicon|guilabel|guimenu|guimenuitem|guisubmenu|hardware|indexterm|inlinegraphic|inlinemediaobject|interface|interfacename|keycap|keycode|keycombo|keysym|link|literal|markup|medialabel|menuchoice|methodname|mousebutton|nonterminal|olink|ooclass|ooexception|oointerface|option|optional|package|parameter|prompt|property|remark|replaceable|returnvalue|sgmltag|structfield|structname|subscript|superscript|symbol|systemitem|token|type|ulink|uri|userinput|varname" />
        <span class="e_command"><xsl:apply-templates select="$allowedChildren" /></span>
    </xsl:template>
                
</xsl:transform>