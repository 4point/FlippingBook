<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" indent="no" omit-xml-declaration="yes" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" />
	<xsl:template match="/Book">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>
          <xsl:value-of select="Title"/>
        </title>
		<xsl:text disable-output-escaping="yes"><![CDATA[
		<meta http-equiv="Content-Type" content="text/html; charset=]]></xsl:text>
	    <xsl:value-of select="CharSet"/>
		<xsl:text disable-output-escaping="yes"><![CDATA[" > ]]></xsl:text>
        <script type="text/javascript" language="javascript">
          <xsl:text disable-output-escaping="yes"><![CDATA[
			PAGES_FOLDER = "pages/"
			DEFAULT_PAGE_THUMB = "page0001_s.jpg";
			LINK = "../../../index.html";
			
			DEFAULT_PAGE_EXTENTION = "_s";
			function fill4Zero(i) 
			{
				if (i < 1000) {
					var zeros = (Math.pow(10, 4 - (i.toString().length))).toString().slice(1);
					return zeros + i.toString();
				} else {
					return i.toString();
				}
			}
			
			
		        function extractExtention(pos, value) 
			{
				var low = value.toLowerCase();
				if(low != "s") {
					return "page"+fill4Zero(pos)+DEFAULT_PAGE_EXTENTION+(low == 'j' ? ".jpg" : ".png");
				} else {
					return "pagestub.png";
				}
			}
	
			function gup( name ) 
			{ 
				name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]"); 
				var regexS = "[\\?&]"+name+"=([^&]*)"; 
				var regex = new RegExp( regexS ); 
				var results = regex.exec( decodeURIComponent(window.location.href) ); 
				if( results == null ) 
					return ""; 
				else 
					return results[1]; 
			}
			

				var position = parseInt(gup("p"));
				
				var f = gup("f");
				var src;
				if (isNaN(position)) {
					if (f.length==0) {
						src = DEFAULT_PAGE_THUMB;
					} else { 
						src = extractExtention(1, f);
					}
				} else {
					if(f.length==0) {
						f = "j";
					}
					src = extractExtention(position, f);
				}

				function onLoad() {
                    if (document.readyState != "complete") {
                        return;
                    }

                    document.getElementById("PagePrv").src = PAGES_FOLDER + src;

                    var link = gup("link");
                    if (link.length==0) link = LINK;

                    document.getElementById("PageLnk").href = link;

                    var ver = getInternetExplorerVersion();

                    if(ver == -1 || ver >= 9){
                        return;
                    }

                    var hover = document.getElementById("fbHover");
                    var embed = document.getElementById("fbEmbed");

                    if(ver < 8) {
                        document.getElementById("PageTitle").style.display = "block";
                        document.getElementById("PageTitle").style.padding = "6 6 6 6";
                        document.getElementById("PageTitle").style.backgroundColor = "rgb(65,65,65)";
                        document.getElementById("bottomLink").style.backgroundColor = "rgb(65,65,65)";
                        document.getElementById("column").style.borderLeft = "";
                    }

                    function mouseover() {
                        hover.style.zIndex = '100';
                    }
                    hover.style.zIndex = '-100';

                    embed.attachEvent("onmouseover", mouseover);
                    function mouseout() {
                        hover.style.zIndex = '-10';
                    }

                    embed.attachEvent("onmouseout", mouseout);
                }

                if (document.readyState == "complete") {
                    onLoad();
                } else {
                    if (document.addEventListener) {
                        document.addEventListener("readystatechange", onLoad, false);
                    } else {
                        document.attachEvent("onreadystatechange", onLoad);
                    }
                }

            function getInternetExplorerVersion()
// Returns the version of Windows Internet Explorer or a -1
// (indicating the use of another browser).
            {
                var rv = -1; // Return value assumes failure.
                if (navigator.appName == 'Microsoft Internet Explorer')
                {
                    var ua = navigator.userAgent;
                    var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
                    if (re.exec(ua) != null)
                        rv = parseFloat( RegExp.$1 );
                }
                return rv;
            }


        ]]></xsl:text>
        </script>
        <link rel="stylesheet" type="text/css" href="embed/embed-hover.css" />
    </head>
	<body>
		<div class="fbEmbed" id="fbEmbed">
			<a id="PageLnk" target="_blank" href="">
				<xsl:element name="img">
					<xsl:attribute name="id">
                        <xsl:text>PagePrv</xsl:text>
                    </xsl:attribute>
                </xsl:element>
                <div class="fbHover" id="fbHover">
					<div id="column">
						<p class="subs"><span class="topTitle" id="PageTitle"><xsl:value-of select="Title"/></span></p>
					</div>
                    <h4 class="bottomLink" id="bottomLink">Click to view</h4>
                </div>
            </a>
            <table class="shadow">
				<tr>
					<td id="lefts"><xsl:text disable-output-escaping="yes"><![CDATA[<!--c-->]]></xsl:text></td>
					<td id="mids"><xsl:text disable-output-escaping="yes"><![CDATA[<!--c-->]]></xsl:text></td>
					<td id="rights"><xsl:text disable-output-escaping="yes"><![CDATA[<!--c-->]]></xsl:text></td>
				</tr>
			</table>
          </div>
      </body>
   </html>
    
    
    </xsl:template>
</xsl:stylesheet>
