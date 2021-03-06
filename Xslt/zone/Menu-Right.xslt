<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<ul class="navigation-wrapper navigation-header-2">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

		</ul>
	</xsl:template>
	<xsl:template match="Zone">
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:text>#section-</xsl:text>
					<xsl:value-of select="position() + 4"></xsl:value-of>
				</xsl:attribute>
				<!-- <xsl:attribute name="href">
					<xsl:text>#</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="substring-after(substring-after (substring-after( substring-after (Url,'/'),'/'),'/'),'/')"></xsl:value-of>
				</xsl:attribute> -->
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>
