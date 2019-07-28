<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		
		<section class="home-swiper-banner">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
					
					
				</div>
				
			</div>
			<div class="next-section-arrow">
				<a href="#particles-js">
					<em class="lnr lnr-chevron-down"></em>
				</a>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="swiper-media">
					
					<xsl:if test="Title != ''">
						<div class="play">
							<div class="play__icon"></div>
							<video muted="" loop="" onclick="this.controls=false;">
								<source src="./img/sample.mp4" type="video/mp4">
									<xsl:attribute name="src">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
								</source>
							</video>
							
						</div>
					</xsl:if>
					<xsl:if test="Title = ''">
						<img>
							
							<xsl:attribute name="alt">
								<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							
						</img>
					</xsl:if>
				</div>
				<div class="swiper-caption">
					<h2 class="title" data-aos="fade-down" data-aos-offset="0" data-aos-delay="50" data-aos-duration="1000" data-aos-easing="ease-in-out">
						<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
					</h2>
					<p class="caption" data-aos="fade-up" data-aos-offset="0" data-aos-delay="50" data-aos-duration="1000" data-aos-easing="ease-in-out">
						<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
					</p>
					
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
