<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.og/2001/XMLSchema"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns="http://www.loc.gov/mods/v3"
    xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd"
    exclude-result-prefixes="xs"
    xpath-default-namespace="http://www.loc.gov/mods/v3"
    version="2.0">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="text()">
        <xsl:value-of select="normalize-space(.)"/>
    </xsl:template>

    <xsl:template match="relatedItem[@displayLabel='Project']"/>

    <xsl:template match="relatedItem[@displayLabel='Collection']"/>
    
    <xsl:template match='mods'>
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <relatedItem displayLabel="Project" type="host">
                <titleInfo>
                    <title>Dr. Charles S. Boyd Photograph Collection</title>
                </titleInfo>
            </relatedItem>
            <relatedItem displayLabel="Collection" type="host">
                <titleInfo>
                    <title>Dr. Charles S. Boyd Photograph Collection</title>
                </titleInfo>
                <identifier>MS-2129</identifier>
            </relatedItem>
        </xsl:copy>
    </xsl:template>
    
    <xsl:strip-space elements="*"/>
</xsl:stylesheet>