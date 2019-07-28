<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		
		<section class="ss-maria-convenient" id="tien-ich">
			<div class="container-16">
				<div class="container">
					<div class="article-title-b">
						<h2 data-aos="fade-down" data-aos-offset="100" data-aos-delay="0" data-aos-duration="1000" data-aos-easing="ease-in-out">
							<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
							<span class="blue-line-short-ti"></span>
						</h2>
						<span class="caption" data-aos="fade-up" data-aos-offset="100" data-aos-delay="0" data-aos-duration="1000" data-aos-easing="ease-in-out">
							<xsl:apply-templates select="/NewsList/News" mode="Caption"></xsl:apply-templates>
						</span>
					</div>
					<div class="convenient-display-wrapper">
						<div class="row">
							<xsl:apply-templates select="/NewsList/News" mode="Item"></xsl:apply-templates>
							
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="Caption">
		<xsl:if test="position() = 1">
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Item">
		<xsl:if test="position()> 1 and position() &lt; 8 ">
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			<figure class="col-lg" data-aos="fade-right" data-aos-offset="250" data-aos-delay="200" data-aos-duration="900" data-aos-easing="ease-in-out">
				<div class="figure-image shine">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<figcaption>
					<h3>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h3>
					<p>
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</xsl:if>
		
	</xsl:template>
	
</xsl:stylesheet>
