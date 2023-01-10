<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : test.xsl
    Created on : December 22, 2022, 9:59 AM
    Author     : 236351
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    
    
    <xsl:template match="output">
        <html>
            <head>
                <title>test.xsl</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="log">
        <html>
            <head>
                <title>test.xsl</title>
            </head>
            <body>
                Log count = <xsl:value-of select="count(output/log)"/>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
