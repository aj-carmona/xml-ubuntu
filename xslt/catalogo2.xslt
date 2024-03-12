<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="book">
        <libro>
            <xsl:apply-templates select="@*|node()"/>
            <descripcion>Fernando Alonso</descripcion>
        </libro>
    </xsl:template>
</xsl:stylesheet>