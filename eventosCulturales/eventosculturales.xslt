<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Programación de Eventos Culturales</title>
      </head>
      <body>
        <h2>Programación de Eventos Culturales</h2>
        <table>
          <tr>
            <th>Nombre</th>
            <th>Tipo</th>
            <th>Ubicación</th>
            <th>Fecha</th>
            <th>Hora</th>
            <th>Participantes</th>
          </tr>
          <xsl:for-each select="eventosCulturales/evento">
            <tr>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="tipo"/></td>
              <td><xsl:value-of select="ubicacion"/></td>
              <td><xsl:value-of select="fecha"/></td>
              <td><xsl:value-of select="hora"/></td>
              <td><xsl:value-of select="participantes"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>