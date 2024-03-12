<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="students">
        <class>
            <xsl:apply-templates select="@*|node()"/>
        </class>
    </xsl:template>

    <xsl:template match="students">
        <member>
            <xsl:apply-templates select="@*|node()"/>
        </member>
    </xsl:template>

    <xsl:template match="name">
        <fullname>
            <xsl:apply-templates select="@*|node()"/>
        </fullname>
    </xsl:template>

    <xsl:template match="grade">
        <grade>
            <xsl:apply-templates select="@*|node()"/>
            <status>Pass</status>
        </grade>
    </xsl:template>
</xsl:stylesheet>


