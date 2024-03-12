<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- Mostrar solo la direccion de la casa-->
<xsl:template match="casa">
    <div>
        <p>
            <xsl:value-of select="direccion" />
        </p>
    </div>
</xsl:template>

<!-- Listar sólo los tipos de habitaciones disponibles -->
<xsl:template match="casa">
    <div>
        <ul>
            <xsl:for-each select="habitaciones/habitacion">
                <xsl:if test="not(preceding::habitacion[nombre = current()/nombre])">
                    <li>
                        <xsl:value-of select="nombre" />
                    </li>
                </xsl:if>
            </xsl:for-each>
        </ul> 
    </div>
</xsl:template>

<!-- Mostrar sólo las dimensiones de la habitación principal -->
<xsl:template match="habitacion[nombre = 'principal']">
    <div>
        <p>
            <xsl:value-of select="dimensiones/@largo" /> x <xsl:value-of select="dimensiones/@ancho" /> x <xsl:value-of select="dimensiones/@altura" />
        </p>
    </div>
</xsl:template>

<!-- Contar el número total de habitaciones-->
<xsl:template match="casa">
    <div>
        <p>
            <xsl:value-of select="count(habitaciones/habitacion)" />
        </p>
    </div>
</xsl:template>

<!-- Mostrar solo los muebles de la sala de estar-->
<xsl:template match="habitacion[nombre = 'sala_de_estar']">
    <div>
        <ul>
            <xsl:apply-templates select="muebles/mueble" />
        </ul>
    </div>
</xsl:template>

<!-- Mostrar sólo el tipo de jardín -->
<xsl:template match="jardin">
    <div class="jardin">
        <p>
            <xsl:value-of select="tipo" />
        </p>
    </div>
</xsl:template>

<!-- Mostrar sólo la longitud del jardín -->
<xsl:template match="jardin">
    <div class="jardin">
        <p>
            <xsl:value-of select="dimensiones/@largo" />
        </p>
    </div>
</xsl:template>

<!-- Mostrar sólo los elementos del jardín -->
<xsl:template match="jardin">
    <div class="jardin">
        <h2>Elementos del Jardín:</h2>
        <ul>
            <xsl:apply-templates select="elementos/elemento" />
        </ul>
    </div>
</xsl:template>

<!-- Concatenar la dirección completa (calle, ciudad y país) -->


<!-- Transformar las dimensiones de metros a pies: (1m = 3,28ft)-->


</xsl:stylesheet>