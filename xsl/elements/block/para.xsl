<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" exclude-result-prefixes="xi">

    <xsl:template match="para">
        <xsl:variable name="allowedChildren" select="text()|abbrev|acronym|action|address|anchor|application|author|authorinitials|beginpage|bibliolist|biblioref|blockquote|calloutlist|caution|citation|citebiblioid|citerefentry|citetitle|classname|classsynopsis|cmdsynopsis|code|command|computeroutput|constant|constructorsynopsis|corpauthor|corpcredit|database|destructorsynopsis|email|emphasis|envar|equation|errorcode|errorname|errortext|errortype|example|exceptionname|fieldsynopsis|figure|filename|firstterm|footnote|footnoteref|foreignphrase|fyncsynopsis|function|glosslist|glossterm|graphic|graphicco|guibutton|guiicon|guilabel|guimenu|guimenuitem|guisubmenu|hardware|important|indexterm|informalequation|informalexample|informalfigure|informaltable|inlineequation|inlinegraphic|inlinemediaobject|interface|interfacename|itemizedlist|keycap|keycode|keycombo|keysym|link|literal|literallayout|markup|medialabel|mediaobject|mediaobjectco|menuchoice|methodname|methodsynopsis|modespec|mousebutton|nonterminal|note|olink|ooclass|ooexception|oointerface|option|optional|orderedlist|orgname|othercredit|package|parameter|personname|phrase|productname|productnumber|programlisting|programlistingco|prompt|property|quote|remark|replaceable|returnvalue|revhistory|screen|screenco|screenshot|segmentedlist|sgmltag|simplelist|structfield|structname|subscript|superscript|symbol|synopsis|systemitem|table|termdef|tip|token|trademark|type|ulink|uri|userinput|variablelist|varname|warning|wordasword|xref" />
        <div class="e_para"><xsl:apply-templates select="$allowedChildren"/></div>
    </xsl:template>

</xsl:transform>