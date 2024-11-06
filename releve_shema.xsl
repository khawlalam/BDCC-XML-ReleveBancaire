<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Releves Bancaire</title>
            </head>
            <body>
                <h1>Liste des Releves bancaire</h1>
                <h3>RIB: <xsl:value-of select="/releve/@RIB"></xsl:value-of></h3>
                <h3>Date Releve <xsl:value-of select="/releve/dateReleve"></xsl:value-of></h3>
                <h3> Solde : <xsl:value-of select="/releve/solde"></xsl:value-of></h3>
                <table border="1" width="80%">
                    <tr>
                        <th> Date</th>
                        <th> Type</th>
                        <th> Montant</th>
                        <th> Description</th>                 
                    </tr>
                    <xsl:for-each select="releve/operations/operation[@type='CREDIT']">
                        <tr>                     
                            <td><xsl:value-of select="@date"></xsl:value-of></td>
                            <td><xsl:value-of select="@type"></xsl:value-of></td>
                            <td><xsl:value-of select="@montant"></xsl:value-of></td>
                            <td><xsl:value-of select="@description"></xsl:value-of></td>                         
                        </tr>
                    </xsl:for-each>
                    <tr>
                        <td colspan="2"> Total Debit</td>
                        <td><xsl:value-of select="sum(releve/operations/operation[@type='DEBIT']/@montant)"></xsl:value-of></td>
                    </tr>
                    <tr>
                        <td colspan="2"> Total Credit</td>
                        <td><xsl:value-of select="sum(releve/operations/operation[@type='CREDIT']/@montant)"></xsl:value-of></td>
                    </tr>
                    <tr>
                        <td colspan="2"> Total Operations</td>
                        <td><xsl:value-of select="sum(releve/operations/operation/@montant)"></xsl:value-of></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>