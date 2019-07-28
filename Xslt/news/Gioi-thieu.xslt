<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		
		<section class="ss-marina-introduce" id="gioi-thieu">
			<div class="container">
				<div class="article-title-b" data-aos="fade-down" data-aos-offset="100" data-aos-delay="0" data-aos-duration="700" data-aos-easing="ease-in-out">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
						<span class="blue-line-begin"></span>
					</h2>
				</div>
				<div class="introduce-caption">
					<xsl:apply-templates select="/NewsList/News" mode="Caption"></xsl:apply-templates>
				</div>
			</div>
			<div class="container-14">
				<div class="row introduce-galerry-wrapper no-gutters">
					<div class="col-lg-3">
						<div>
							<div class="introduce-galerry-item" data-aos="zoom-out" data-aos-offset="100" data-aos-delay="0" data-aos-duration="500" data-aos-easing="ease-in-out">
								<xsl:apply-templates select="/NewsList/News" mode="Image1"></xsl:apply-templates>
							</div>
							<div class="introduce-galerry-item" data-aos="zoom-out" data-aos-offset="0" data-aos-delay="300" data-aos-duration="600" data-aos-easing="ease-in-out">
								<xsl:apply-templates select="/NewsList/News" mode="Image2"></xsl:apply-templates>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="introduce-galerry-item" data-aos="zoom-out" data-aos-offset="100" data-aos-delay="600" data-aos-duration="500" data-aos-easing="ease-in-out">
							<xsl:apply-templates select="/NewsList/News" mode="Image3"></xsl:apply-templates>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="row no-gutters">
							<div class="col-6">
								<div class="introduce-galerry-item" data-aos="zoom-out" data-aos-offset="100" data-aos-delay="900" data-aos-duration="500" data-aos-easing="ease-in-out">
									<xsl:apply-templates select="/NewsList/News" mode="Image4"></xsl:apply-templates>
								</div>
							</div>
							<div class="col-6">
								<div class="introduce-galerry-item" data-aos="zoom-out" data-aos-offset="100" data-aos-delay="1200" data-aos-duration="500" data-aos-easing="ease-in-out">
									<xsl:apply-templates select="/NewsList/News" mode="Image5"></xsl:apply-templates>
								</div>
							</div>
							<div class="col-12">
								<div class="introduce-galerry-item" data-aos="zoom-out" data-aos-offset="0" data-aos-delay="1500" data-aos-duration="500" data-aos-easing="ease-in-out">
									<xsl:apply-templates select="/NewsList/News" mode="Image6"></xsl:apply-templates>
								</div>
							</div>
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
	<xsl:template match="News" mode="Image1">
		<xsl:if test="position() = 2">
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			<img class="medium-zoom">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Image2">
		<xsl:if test="position() = 3">
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			
			<img class="medium-zoom">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Image3">
		<xsl:if test="position() = 4">
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			
			<img class="medium-zoom">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Image4">
		<xsl:if test="position() =5">
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			
			<img class="medium-zoom">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Image5">
		<xsl:if test="position() = 6">
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			
			<img class="medium-zoom">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Image6">
		<xsl:if test="position() = 7">
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			
			<img class="medium-zoom">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</xsl:if>
	</xsl:template>
	
	
</xsl:stylesheet>
