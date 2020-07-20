<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html lang="en" dir="ltr">
    <head>
      <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
      <link rel="stylesheet" href="menu.css"/>
      <script type="text/javascript" src="drag.js"></script>
      <title>Lee_jisu</title>
      <script type="text/javascript">
  			window.onload = function () {
  				REDIPS.drag.init();
  				REDIPS.drag.drop_option = 'single';
  				REDIPS.drag.hover_color = '#9BB3DA';
  				REDIPS.drag.trash_ask = false;
  			}
  		</script>
      <script language="javascript">
        /*오픈소스개발*/
      function newBackgroundColor1(color)
      {
        var table = document.getElementById("open");
        if (table) {
           table.style.background = event.target.value;
         }
         //document.colorBack.selectedcolor.value = color;
      }

      function newFontColor1(color)
      {
        var table = document.getElementById("open");
        if (table) {
           table.style.color = event.target.value;
         }
         //document.colorFont.selectedcolor.value = color;
      }
        /*운영체제실무*/
      function newBackgroundColor2(color)
      {
        var table = document.getElementById("os");
        if (table) {
           table.style.background = event.target.value;
         }
         //document.colorBack.selectedcolor.value = color;
      }

      function newFontColor2(color)
      {
        var table = document.getElementById("os");
        if (table) {
           table.style.color = event.target.value;
         }
         //document.colorFont.selectedcolor.value = color;
      }
        /*모바일프로그래밍*/
        function newBackgroundColor3(color)
        {
          var table = document.getElementById("mobile");
          if (table) {
             table.style.background = event.target.value;
           }
           //document.colorBack.selectedcolor.value = color;
        }

        function newFontColor3(color)
        {
          var table = document.getElementById("mobile");
          if (table) {
             table.style.color = event.target.value;
           }
           //document.colorFont.selectedcolor.value = color;
        }
        /*웹표준프레임워크*/
        function newBackgroundColor4(color)
        {
          var table = document.getElementById("web");
          if (table) {
             table.style.background = event.target.value;
           }
           //document.colorBack.selectedcolor.value = color;
        }

        function newFontColor4(color)
        {
          var table = document.getElementById("web");
          if (table) {
             table.style.color = event.target.value;
           }
           //document.colorFont.selectedcolor.value = color;
        }
      </script>
    </head>
    <body>
      <a href="home.html"><img src="images/logo1.png" alt="home_logo" style="width:300px; height:100px;"/></a>
        <ul style="background:black;text-transform: uppercase;list-style:none;">
      		<li style="float:left;"><a style="color : gray;" href = "introdu.html">introduction</a></li>
      		<li style="float:left;"><a style="color : gray;" href = "study_j.html">study(JavaScript)</a></li>
      		<li style="float:left;"><a style="color : gray;" href = "board.html">Study_Board</a></li>
      		<li style="float:left;"><a style="color : white;" href = "timetable.html">2020 TimeTable</a></li>
    	</ul>
      <h2 style="text-align:center; margin-top: 30px;">2020년도 4학년 시간표</h2>
      <div id="main_container">
  			<div id="drag">

  				<div id="left">
  					<table id="table1">
  						<colgroup>
  							<col width="100"/>
  						</colgroup>
  						<tbody>
    							<tr><td class="dark"><div id="open" class="drag green clone"><xsl:value-of select="datalists/timetable/mon/name"/></div></td></tr>
    							<tr><td class="dark"><div id="os" class="drag green clone"><xsl:value-of select="datalists/timetable/thu/name"/></div></td></tr>
    							<tr><td class="dark"><div id="mobile" class="drag green clone" style="font-size:10px;"><xsl:value-of select="datalists/timetable[4]/mon/name"/></div></td></tr>
    							<tr><td class="dark"><div id="web" class="drag green clone" style="font-size:10px;"><xsl:value-of select="datalists/timetable[4]/thu/name"/></div></td></tr>
  							<tr><td class="trash" title="Trash">Trash</td></tr>
  						</tbody>
  					</table>
  				</div>

  				<div id="right">
  					<table id="table2">
  						<colgroup>
  							<col width="90"/>
  							<col width="100"/>
  							<col width="100"/>
  							<col width="100"/>
  							<col width="100"/>
  							<col width="100"/>
  						</colgroup>
  						<tbody>
  							<tr>
                  <td class="mark dark"></td>
                  <td class="mark dark">Monday</td>
  								<td class="mark dark">Tuesday</td>
  								<td class="mark dark">Wednesday</td>
  								<td class="mark dark">Thursday</td>
  								<td class="mark dark">Friday</td>

  							</tr>
  							<tr>
  								<td class="mark dark">9:00 - 9:50</td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  							</tr>
  							<tr>
  								<td class="mark dark">10:00 - 10:50</td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  							</tr>
  							<tr>
  								<td class="mark dark">11:00 - 11:50</td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  							</tr>
  							<tr>
  								<td class="mark dark">12:00 - 12:50</td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  							</tr>
  							<tr>
  								<td class="mark dark">13:00 - 13:50</td>
  								<td class="mark lunch" colspan="5">Lunch</td>
  							</tr>
  							<tr>
  								<td class="mark dark">14:00 - 14:50</td>
                  <td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  							</tr>
  							<tr>
  								<td class="mark dark">15:00 - 15:50</td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  							</tr>
  							<tr>
  								<td class="mark dark">16:00 - 16:50</td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  							</tr>
  							<tr>
  								<td class="mark dark">17:00 - 17:50</td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  								<td></td>
  							</tr>
  						</tbody>
  					</table>
  				</div>
  			</div>
  		</div>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
