<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : movies.xsl
    Created on : December 12, 2022, 1:59 PM
    Author     : 236351
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="shop">
        <html>
            <head>
                <title>shops</title>
                <style>
                    table{
                    border-collapse:collapse;
                    width:70%;
                    }
                    th, td{
                    padding:8px;
                    text-align:centre;
                    }
                    th{
                    background-color: white;
                    color: black;
                    font-family: helvetica;
                    text-align:centre;
                    font-weight:bold;
                    font-size:20px;
                    }
                    h1, h2, p{
                    background-color:#f8d3c5;
                    font-family: helvetica;
                    font-weight:bold;
                    text-align:centre;
                    width:70%;
                    color: white;
                    
                    }
                    tr:nth-child(even){background-color:#667b68;font-family: helvetica;}
                    tr:nth-child(odd){background-color:#a3b899;font-family: helvetica;}
                </style>
            </head>
            
            <body>
                <xsl:apply-templates/>
                <p class="p">Total Number of Movies: <xsl:value-of select="count(movies/movie)"/></p>
                <p class="p">Average Movie Rating: <xsl:value-of select="sum(movies/movie/rating) div count(movies/movie)" /></p>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="shop/name">
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    <xsl:template match="shop/movies"> 
           <table>
            <thead>
                <th>Title</th>
                <th>CDset</th>
                <th>Price</th>
                <th>Rating</th>
            </thead>
            <tbody>
                <xsl:apply-templates/>
            </tbody>
        </table>
    </xsl:template> 
    <xsl:template match="movie">
        <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="cdset"/></td>
            <td><xsl:value-of select="price"/></td>
           
            <td>
                <div style="width:100px;background:white;height:12px;">
                    <div style="width:{10*rating}px;background:#f8d3c5;height:12px;"></div>                    
                </div>
            </td>
<!--            <td>&#11088;</td>-->
        </tr>
    </xsl:template>  
</xsl:stylesheet>
