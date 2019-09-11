<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="ss-maria-news">
			<div class="article-title-b" data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="600" data-aos-offset="0">
				<h2>
					<xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
					<span class="blue-line-short"></span>
				</h2>
				<div class="watch-more">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneUrlSelected"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="/NewsList/ViewAllText"></xsl:value-of>
					</a>
				</div>
			</div>
			<div class="news-wrapper" data-aos="fade-right" data-aos-offset="250" data-aos-delay="200" data-aos-duration="700" data-aos-easing="ease-in-out">
				<div class="news-item big">
					<xsl:apply-templates select="/NewsList/News" mode="BigNews"></xsl:apply-templates>
				</div>
				<xsl:apply-templates select="/NewsList/News" mode="Others"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="BigNews">
		<xsl:if test="position()= 1">
			<div class="news-image">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>

					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>

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
			</div>
			<div class="news-caption">
				<time>
					<xsl:value-of select="CreatedDate"></xsl:value-of>
				</time>
				<hr class="dash-color"></hr>
				<div class="caption">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</a>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Others">
		<xsl:if test="position() > 1">
			<div class="news-item">
				<div class="news-image">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
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
				</div>
				<div class="news-caption">
					<time>
						<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
					</time>
					<hr class="dash-color"></hr>
					<div class="caption">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
