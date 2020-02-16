<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/staff-list">
<html>
<body>
    <table>
        <tr>
            <th>first-name</th>
            <th>last-name</th>
            <th>contract-id</th>
            <th>contract-start</th>
            <th>contract-end</th>
            <th>is vervanging voor contract</th>
            
        </tr>
    

        <xsl:for-each select="person"> 
        <xsl:for-each select="position/contract">
            <tr>
                <td><xsl:value-of select="../../first-name" /></td>
                <td><xsl:value-of select="../../last-name" /></td>
                <td><xsl:value-of select="id" /></td>
                <td><xsl:value-of select="started-at" /></td>
                <td><xsl:value-of select="ended-at"/></td>
                
                <td>is vervanging voor 
                    <xsl:value-of select="replacement-for-contract/description" />
                    (<xsl:value-of select="replacement-for-contract/id" />)
                </td>
            </tr>
        </xsl:for-each>
            
        </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>