<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		
		<section class="ss-maria-noi-bat" id="particles-js">
			<div class="container">
				<div class="article-title-w" data-aos="fade-up" data-aos-offset="0" data-aos-delay="0" data-aos-duration="700" data-aos-easing="ease-in-out">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
						<span class="blue-line-long"></span>
					</h2>
				</div>
				<div class="strong-point-wrapper">
					<div class="strong-point-item-wrapper" data-aos="zoom-out" data-aos-offset="100" data-aos-delay="200" data-aos-duration="1000" data-aos-easing="ease-in-out">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="strong-point-item hvr-ripple-out">
			<div class="module-border-wrap">
				<div class="circle">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					
				</div>
			</div>
			<span class="caption">
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</span>
		</div>
		
	</xsl:template>
	
</xsl:stylesheet>
