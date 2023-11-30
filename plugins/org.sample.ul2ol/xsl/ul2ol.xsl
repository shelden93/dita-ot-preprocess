<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:template match="* | @* | comment() | processing-instruction() | text()">
        <xsl:copy>
            <xsl:apply-templates select="* | @* | comment() | processing-instruction() | text()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="*[contains(@class, ' topic/ul ')]">
        <ol class="- topic/ol ">
            <xsl:copy-of select="* | @* except @class"/>
        </ol>
    </xsl:template>
</xsl:stylesheet>