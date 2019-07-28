<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		
		<section class="ss-maria-library">
			<div class="article-title-b" data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="600" data-aos-offset="0">
				<h2>
					<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
					<span class="blue-line-short-tv"></span>
				</h2>
			</div>
			<div class="library-wrapper" data-aos="fade-left" data-aos-offset="250" data-aos-delay="200" data-aos-duration="700" data-aos-easing="ease-in-out">
				<xsl:apply-templates select="/NewsList/News" mode="Library"></xsl:apply-templates>
				
				
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="Library">
		<xsl:if test="position()=1">
			<div class="library-item">
				<div class="wrapper">
					<div class="play">
						<div class="play__icon"></div>
						<video muted="" loop="" onclick="this.controls=false;">
							<source src="./img/sample.mp4" type="video/mp4">
								<xsl:attribute name="src">
									<xsl:value-of select="FullContent"></xsl:value-of>
								</xsl:attribute>
							</source>
						</video>
					</div>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position() >1">
			<div class="library-item">
				<div class="wrapper lightgallery">
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
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages">
		<xsl:if test="position() > 1 ">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<div class="library-image library-image-fit">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				
			</a>
		</xsl:if>
		
	</xsl:template>
</xsl:stylesheet>
