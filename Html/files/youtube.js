function openYoutube(e,i,t){isApiReady&&(windowContainer.style.display="block",background.style.display="block",_createPlayer(e,t,size)),this.autoplay=i,this.startFrom=t}function _calculateContainerSize(e){var i=.8*window.innerWidth,t=.8*window.innerHeight;if(e.width>i||e.height>t){e.width/e.height;e.width>i&&(e.height*=i/e.width,e.width*=i/e.width),e.height>t&&(e.width*=t/e.height,e.height*=t/e.height)}}function _createVideoBackground(){var e=document.createElement("div");e.id="background",e.style.cssText="background-color: rgba(0, 0, 0, 0.5);z-index: 2; width: 100%; height: 100%; position: absolute; top:0; left:0;display:none;",document.body.appendChild(e),e.onclick=closeVideo}function _createContainerYT(){var e=document.createElement("div");e.id="windowContainer",e.width=size.width+"px",e.height=size.height+"px",e.style.cssText="z-index: 3; position: absolute; top:50%; left:50%;display:none;",document.body.appendChild(e);var i=document.createElement("div");i.id="player",i.width=size.width,i.height=size.height,e.appendChild(i);var t=document.createElement("div");t.id="close",e.appendChild(t),t.onclick=closeVideo,document.addEventListener?document.addEventListener("keyup",onKeyUp,!1):document.attachEvent("onkeyup",onKeyUp),t.style.cssText="top:-14px; right:-14px; z-index: 4; position: absolute; cursor:pointer;";var o=document.createElement("img");o.setAttribute("src","data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAYAAAByDd+UAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyFpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDoxODhFMjk4RkZFRUQxMUU0QUJEOEMwMkY1MDU2QUQ4MSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDoxODhFMjk5MEZFRUQxMUU0QUJEOEMwMkY1MDU2QUQ4MSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjE4OEUyOThERkVFRDExRTRBQkQ4QzAyRjUwNTZBRDgxIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjE4OEUyOThFRkVFRDExRTRBQkQ4QzAyRjUwNTZBRDgxIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+Hur39wAABdVJREFUeNq8VmtIW2cY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"),t.appendChild(o)}function onKeyUp(e){27==e.keyCode&&closeVideo()}function _createScriptTagYT(){var e=document.createElement("script");e.src="https://www.youtube.com/iframe_api";var i=document.getElementsByTagName("script")[0];i.parentNode.insertBefore(e,i)}function _createPlayer(e,i,t){player=new YT.Player("player",{videoId:e,playerVars:{start:i},height:t.height,width:t.width,events:{onReady:_onPlayerReady,onError:_onPlayerError}});var o=document.getElementById("player");windowContainer.style.margin="-"+Math.floor(o.height/2)+"px 0 0 -"+Math.floor(o.width/2)+"px"}function onYouTubeIframeAPIReady(){isApiReady=!0}function _onPlayerError(e){console.log("youtube error code: "+e.data.toString())}function _onPlayerReady(e){startFrom,autoplay&&e.target.playVideo()}function closeVideo(){null!=player&&(player.stopVideo(),player.clearVideo(),player.destroy(),delete player),windowContainer.style.display="none",background.style.display="none"}var size={width:640,height:360};_calculateContainerSize(size),_createVideoBackground(),_createContainerYT(size),_createScriptTagYT();var player=null,isApiReady=!1;