<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="ss-maria-facility" id="section-5">
			<div class="container">
				<div class="article-title-w center" data-aos="fade-up" data-aos-offset="200" data-aos-delay="50" data-aos-duration="1000">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
						<span class="blue-line-short-mb"></span>
					</h2>
				</div>
				<div class="facility-tab-nav" data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="300" data-aos-offset="200" data-aos-duration="700">
					<ul>
						<xsl:apply-templates select="/NewsList/News" mode="Nav"></xsl:apply-templates>
					</ul>
				</div>
				<div class="facility-tab-content" data-aos="fade-in" data-aos-offset="200" data-aos-delay="0" data-aos-duration="1000">
					<xsl:apply-templates select="/NewsList/News" mode="Item"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="Nav">
		<li>
			<a href="javascript:void(0)">
				<xsl:attribute name="data-type">
					<xsl:text>Item-MB</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="News" mode="Item">
		<xsl:if test="position() =1">
			<div class="facility-tab-item lightgallery active">

				<xsl:attribute name="id">
					<xsl:text>Item-MB</xsl:text>

					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>

				</xsl:attribute>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>

				</a>

				<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
			</div>
		</xsl:if>
		<xsl:if test="position() >1">
			<div class="facility-tab-item lightgallery">

				<xsl:attribute name="id">
					<xsl:text>Item-MB</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>

				</xsl:attribute>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>

				</a>

				<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="NewsImages">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>

		</a>

	</xsl:template>
</xsl:stylesheet>
