<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="no" encoding="utf-8"/>
    <xsl:template match="/mail">
        <html>
            <body>
                <xsl:value-of select="/mail/locale/auth/mail/recover/text1" disable-output-escaping="yes"/>
                <a href="http://{@host}/recover/code/{@code}">
                    <xsl:text>http://</xsl:text>
                    <xsl:value-of select="@host"/>
                    <xsl:text>/recover/code/</xsl:text>
                    <xsl:value-of select="@code"/>
                </a>
                <xsl:value-of select="/mail/locale/auth/mail/recover/text2" disable-output-escaping="yes"/>
                <xsl:value-of select="@ttl"/>
                <xsl:value-of select="/mail/locale/auth/mail/recover/text3" disable-output-escaping="yes"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
