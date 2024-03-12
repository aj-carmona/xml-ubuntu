<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <style>
                table, th, td {
                    border: 1px solid black;
                    border-collapse: collapse;
                    padding: 10px;
                }
            </style>
        </head>
        <body>
            <h2>Miembros del Gimnasio y sus Clases</h2>
            <table>
                <tr>
                    <th>Nombre</th>
                    <th>Lsita de Clases</th>
                </tr>
                <xsl:for-each select="gimnasio/miembro">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:for-each select="listaclase">
                                <xsl:value-of select="."/>
                                <br/>
                            </xsl:for-each>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>