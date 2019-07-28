<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					
					<section class="tin-tuc-ct">
						<article>
							<h2>
								<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h2>
							<time>
								<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
							</time>
							<h5>
								<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</h5>
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</article>
						<div class="social-network-wrapper">
							<div class="social-network-button">
								<div class="fb-share-button" data-layout="button_count" data-size="small">
									<a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">
										Share
										<xsl:attribute name="data-href">
											<xsl:value-of select="/NewsDetail/FullUrl"></xsl:value-of>
										</xsl:attribute>
									</a>
								</div>
							</div>
							<div class="social-network-button">
								<div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-width="" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
							</div>
							<div class="social-network-button">
								<div class="fb-save" data-size="small">
									<xsl:attribute name="data-uri">
										<xsl:value-of select="/NewsDetail/FullUrl"></xsl:value-of>
									</xsl:attribute>
								</div>
							</div>
						</div>
					</section>
				</div>
				<div class="col-lg-4">
					
					<section class="news-side">
						<div class="article-title-b">
							<h2>
								<xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of>
								<span class="blue-line-short"></span>
							</h2>
						</div>
						<div class="news-side-wrapper">
							<div class="row">
								<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="news-item">
			<div class="news-image">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
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
				</div>
				<time>
					<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
				</time>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
