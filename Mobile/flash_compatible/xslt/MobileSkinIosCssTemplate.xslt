<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="text" indent="yes"/>
	<xsl:template match="root">
		#bgDiv {
		background-color: #525252;
		}
		.topToolbar,
		#helpOver .helpCategory {
		background: url('../.././bg_top_toolbar.png') left top repeat, #000000;
		}
		.bottomToolbar:after {
		opacity: 0.8;
		background: url('../.././background.png') left top repeat repeat, -webkit-gradient(linear, left top, right top, color-stop(0, rgba(0, 0, 0, 0.5)), color-stop(0.5, rgba(0, 0, 0, 0.2)), color-stop(1, rgba(0, 0, 0, 0.5))), -webkit-gradient(linear, left top, left bottom, color-stop(0, #525252), color-stop(1, #525252));
		}
		.popover.tablet {
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0, rgba(255, 255, 255, 0)), color-stop(1, rgba(0, 0, 0, 0.37))), -webkit-gradient(linear, left top, left bottom, color-stop(0, #161616), color-stop(1, #161616));
		}
		.popover .triangle {
		background: url('../../../../../mobile/styles/triangle.png') center top no-repeat, -webkit-gradient(linear, left top, left bottom, color-stop(0, rgba(255, 255, 255, 0.7)), color-stop(1, rgba(255, 255, 255, 0.4))), -webkit-gradient(linear, left top, left bottom, color-stop(0, #161616), color-stop(1, #161616));
		}
		.popover.mobile {
		background: url('../.././bg_popover_m.png') left top repeat, -webkit-gradient(linear, left top, left bottom, color-stop(0, #343434), color-stop(1, #343434));
		}
		.popover.tablet .subMenu,
		.popover.tablet .searchResultsLabel + .contentInner {
		background-color: #ffffff;
		}
		.sliderBar {
		background-image: -webkit-gradient(linear, left top, right top, from(rgba(233, 233, 233, 0.85)), color-stop(0.01, rgba(0, 0, 0, 0)), to(rgba(0, 0, 0, 0)));
		}
		.sliderLabel {
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0, #707070), color-stop(0.95, #000000), color-stop(1, #000000));
		}
		.mobile .sliderThumb:before {
		color: #000000;
		}
		.popover.tablet .startSearchField {
		background: url('../.././bg_top_toolbar.png') left top repeat, #000000;
		}
		.searchResultsLabel {
		background-color: rgba(0, 0, 0, 0.85);
		color: #cccccc;
		}
		#helpOver {
		background: #e7e7e3;
		}
		#helpOver .contentLabel {
		-webkit-box-shadow: inset 0px -0.1em 0px 0px #7681a4;
		}
		#helpOver > .contentLabel > .labelCloseButton:before {
		background: url('../../../../../mobile/styles/buttons/exit.png') center no-repeat, -webkit-gradient(linear, left top, left bottom, color-stop(0, rgba(0, 0, 0, 0)), color-stop(1, rgba(0, 0, 0, 0.4))), -webkit-gradient(linear, left top, left bottom, color-stop(0, #000000), color-stop(1, #000000));
		}
		.toolbar,
		.bottomToolbar > .slideShowField,
		#searchToolbar .button {
		color: #dcdcdc;
		}
		.popover.tablet .subMenu {
		color: #000000;
		}
		.popover.mobile .subMenu {
		color: #ffffff;
		}
		.popover.tablet .contentLabel {
		color: #f2f2f2;
		}
		.popover.mobile .contentLabel {
		color: #f2f2f2;
		}
		#helpOver .contentLabel,
		#helpOver .helpElement {
		color: #343434;
		}
		#helpOver .helpCategory {
		color: #e9e9e9;
		}
		.cr {
		color: #adada1;
		}
		#pagerField > .pagerFont,
		#searchToolbar > .resultField {
		color: #e9e9e9;
		}
		#pagerField.sliderLabel > .pagerFont {
		color: #e9e9e9;
		}
	</xsl:template>
</xsl:stylesheet>
