<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		
		<section class="ss-maria-structure" id="thiet-ke">
			<div class="article-title-w center" data-aos="zoom-in-up" data-aos-offset="150" data-aos-delay="0" data-aos-duration="700" data-aos-easing="ease-in-out">
				<h2>
					<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
					<span class="blue-line-begin"></span>
				</h2>
			</div>
			<div class="swiper-container" data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="300" data-aos-offset="0" data-aos-duration="700">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
			<div class="navigation-wrapper">
				<div class="nav-prev"></div>
				<div class="nav-next"></div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="swiper-image">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="swiper-caption">
					<p>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
		
	</xsl:template>
	
</xsl:stylesheet>
