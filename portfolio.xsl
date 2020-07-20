<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Lee_jisu</title>
      <link rel="stylesheet" href="menu.css"/>
      <link rel="stylesheet" href="subMenu.css"/>
      <link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css"/>
    	<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css"/>
    	<link rel="stylesheet" type="text/css" href="ribbon.css"/>
    	<link rel="stylesheet" type="text/css" href="ribbon-icon.css"/>
    	<script type="text/javascript" src="easyui/jquery.min.js"></script>
    	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
    	<script type="text/javascript" src="jquery.ribbon.js"></script>
      <script type="text/javascript">
    		var data = {
    			selected:0,
    			tabs:[{
    				title:'Home',
    				groups:[{
    					title:'Clipboard',
    					tools:[{
    						type:'splitbutton',
    						name:'paste',
    						text:'Paste',
    						iconCls:'icon-paste-large',
    						iconAlign:'top',
    						size:'large',
    						menuItems:[{
    							name:'paste',
    							text:'Paste',
    							iconCls:'icon-paste'
    						},{
    							name:'paste-special',
    							text:'Paste Special...',
    							iconCls:'icon-paste'
    						}]
    					},{
    						type:'toolbar',
    						dir:'v',
    						tools:[{
    							name:'cut',
    							text:'Cut',
    							iconCls:'icon-cut'
    						},{
    							name:'copy',
    							text:'Copy',
    							iconCls:'icon-copy'
    						},{
    							name:'format',
    							text:'Format',
    							iconCls:'icon-format'
    						}]
    					}]
    				},{
    					title:'Font', /*폰트*/
    					tools:[{
    						type:'toolbar',
    						tools:[{
    							type:'combobox',
    							valueField:'text',
    							textField:'text',
    							data:[{text:'Arial',selected:true},{text:'Century'},{text:'Tahoma'}],
    							width:100,
    							panelHeight:'auto',
    							editable:false
    						},{
    							type:'combobox',
    							valueField:'text',
    							textField:'text',
    							data:[{text:'8'},{text:'12',selected:true},{text:'14'}],
    							width:60,
    							panelHeight:'auto',
    							editable:false
    						}]
    					},{
    						type:'toolbar',
    						style:{marginLeft:'5px'},
    						tools:[{
    							name:'increase-font',
    							iconCls:'icon-increase-font'
    						},{
    							name:'decrease-font',
    							iconCls:'icon-decrease-font'
    						}]
    					},{
    						type:'toolbar',
    						style:{clear:'both',marginTop:'2px'},
    						tools:[{
    							name:'bold',
    							iconCls:'icon-bold',
    							toggle:true
    						},{
    							name:'italic',
    							iconCls:'icon-italic',
    							toggle:true
    						},{
    							name:'underline',
    							iconCls:'icon-underline',
    							toggle:true
    						},{
    							name:'strikethrough',
    							iconCls:'icon-strikethrough',
    							toggle:true
    						},{
    							name:'superscript',
    							iconCls:'icon-superscript',
    							toggle:true
    						},{
    							name:'subscript',
    							iconCls:'icon-subscript',
    							toggle:true
    						}]
    					},{
    						type:'toolbar',
    						style:{clear:'both'},
    						tools:[{
    							name:'case-font',
    							iconCls:'icon-case-font'
    						},{
    							name:'grow-font',
    							iconCls:'icon-grow-font'
    						},{
    							name:'shrink-font',
    							iconCls:'icon-shrink-font'
    						}]
    					}]
    				},{
    					title:'Paragraph', /*요기*/
    					dir:'v',
    					tools:[{
    						type:'toolbar',
    						tools:[{
    							name:'slign-left',
    							iconCls:'icon-align-left',
    							toggle:true,
    							group:'p1'
    						},{
    							name:'align-center',
    							iconCls:'icon-align-center',
    							toggle:true,
    							group:'p1'
    						},{
    							name:'align-right',
    							iconCls:'icon-align-right',
    							toggle:true,
    							group:'p1'
    						},{
    							name:'align-justify',
    							iconCls:'icon-align-justify',
    							toggle:true,
    							group:'p1'
    						}]
    					},{
    						type:'toolbar',
    						style:{marginTop:'2px'},
    						tools:[{
    							name:'bullets',
    							iconCls:'icon-bullets'
    						},{
    							name:'numbers',
    							iconCls:'icon-numbers'
    						}]
    					}]
    				},{
    					title:'Editing',
    					dir:'v',
    					tools:[{
    						type:'splitbutton',
    						name:'find',
    						text:'Find',
    						iconCls:'icon-find',
    						menuItems:[{
    							name:'find',
    							text:'Find',
    							iconCls:'icon-find'
    						},{
    							name:'go',
    							text:'Go to...',
    							iconCls:'icon-go'
    						}]
    					},{
    						name:'replace',
    						text:'Replace',
    						iconCls:'icon-replace'
    					},{
    						type:'menubutton',
    						name:'select',
    						text:'Select',
    						iconCls:'icon-select',
    						menuItems:[{
    							name:'selectall',
    							text:'Select All',
    							iconCls:'icon-selectall'
    						},{
    							name:'select-object',
    							text:'Select Objects',
    							iconCls:'icon-select'
    						}]
    					}]
    				}]
    			},{
    				title:'Insert',
    				groups:[{
    					title:'Table',
    					tools:[{
    						type:'menubutton',
    						name:'table',
    						text:'Table',
    						iconCls:'icon-table-large',
    						iconAlign:'top',
    						size:'large'
    					}]
    				},{
    					title:'Illustrations',
    					tools:[{
    						name:'picture',
    						text:'Picture',
    						iconCls:'icon-picture-large',
    						iconAlign:'top',
    						size:'large'
    					},{
    						name:'clipart',
    						text:'Clip Art',
    						iconCls:'icon-clipart-large',
    						iconAlign:'top',
    						size:'large'
    					},{
    						type:'menubutton',
    						name:'shapes',
    						text:'Shapes',
    						iconCls:'icon-shapes-large',
    						iconAlign:'top',
    						size:'large'
    					},{
    						name:'smartart',
    						text:'SmartArt',
    						iconCls:'icon-smartart-large',
    						iconAlign:'top',
    						size:'large'
    					},{
    						name:'chart',
    						text:'Chart',
    						iconCls:'icon-chart-large',
    						iconAlign:'top',
    						size:'large'
    					}]
    				}]
    			}]
    		};

    		$(function(){
    			$('#rr').ribbon({
    				data:data
    			});
    		});
    	</script>
      <style>
      #m {
        width: 600px;
        margin-left: 20px;
      }
      button {
        left: 50%;
        margin-top: 20px;
        width: 100px;
        height: 40px;
        background-color: black;
        color: white;
      }
      #a {
        position:relative;
      }
    /*  #a2 {
        position:absolute;
        left:400px; top:520px;
      }*/
      #o1 {
        width: 500px;
        text-align:center;
        margin-left: 75px;
      }
      #qq {
        margin-top: 5px;
      }
      </style>
    </head>
  <body>
    <a href="home.html"><img src="images/logo1.png" alt="home_logo" style="width:300px; height:100px;"/></a>
      <ul style="background:black;text-transform: uppercase;list-style:none;">
        <li style="float:left;"><a style="color : white;" href = "introdu.html">introduction</a></li>
        <li style="float:left;"><a style="color : gray;" href = "study_j.html">study(JavaScript)</a></li>
        <li style="float:left;"><a style="color : gray;" href = "board.html">Study_Board</a></li>
        <li style="float:left;"><a style="color : gray;" href = "timetable.html">2020 TimeTable</a></li>
    </ul>
    <div id="o1">
      <h1 style="text-align:center;">포트폴리오 수정하기</h1>
      <div id="o2" class="easyui-ribbon" style="width:500px;">
        <div title="Home">
          <div class="ribbon-group">
            <div class="ribbon-toolbar">
              <a href="#" class="easyui-menubutton" data-options="name:'paste',iconCls:'icon-paste-large',iconAlign:'top',size:'large'">Paste</a>
            </div>
            <div class="ribbon-toolbar">
              <a href="#" class="easyui-linkbutton" data-options="name:'cut',iconCls:'icon-cut',plain:true">Cut</a><br/>
              <a href="#" class="easyui-linkbutton" data-options="name:'copy',iconCls:'icon-copy',plain:true">Copy</a><br/>
              <a href="#" class="easyui-linkbutton" data-options="name:'format',iconCls:'icon-format',plain:true">Format</a>
            </div>
            <div class="ribbon-group-title">Clipboard</div>
          </div>
          <div class="ribbon-group-sep"></div>
          <div class="ribbon-group">
            <div class="ribbon-toolbar">
              <a href="#" class="easyui-combobox" data-options="valueField:'text',textField:'text',width:60,panelHeight:'auto',editable:false"></a>
              <!--data-options = "data:[{text:'8'},{text:'12',selected:true},{text:'14'}]," 넣을 수 있는 방법 찾아야함-->
            </div>
            <div class="ribbon-boolbar">
              <a href="#" class="easyui-linkbutton" data-options="name:'increase-font',iconCls:'icon-increase-font',plain:true"></a>
              <a href="#" class="easyui-linkbutton" data-options="name:'decrease-font',iconCls:'icon-decrease-font',plain:true"></a><br/>
            </div><br/>
            <div class="ribbon-toolbar">
              <a href="#" class="easyui-linkbutton" data-options="name:'bold',iconCls:'icon-bold',plain:true,toggle:true"></a>
              <a href="#" class="easyui-linkbutton" data-options="name:'italic',iconCls:'icon-italic',plain:true,toggle:true"></a>
              <a href="#" class="easyui-linkbutton" data-options="name:'underline',iconCls:'icon-underline',plain:true,toggle:true"></a>
              <a href="#" class="easyui-linkbutton" data-options="name:'strikethrough',iconCls:'icon-strikethrough',plain:true,toggle:true"></a>
            </div>
            <div class="ribbon-group-title">Font</div>
          </div>
          <div class="ribbon-group-sep"></div>
          <div class="ribbon-group">
            <div class="ribbon-boolbar">
              <a href="#" class="easyui-linkbutton" data-options="name:'slign-left',iconCls:'icon-align-left',plain:true,group:'p1'"></a>
              <a href="#" class="easyui-linkbutton" data-options="name:'align-center',iconCls:'icon-align-center',plain:true,group:'p1'"></a>
              <a href="#" class="easyui-linkbutton" data-options="name:'align-right',iconCls:'icon-align-right',plain:true,group:'p1'"></a>
              <a href="#" class="easyui-linkbutton" data-options="name:'align-justify',iconCls:'icon-align-justify',plain:true,group:'p1'"></a><br/>
            </div><br/>
            <div class="ribbon-toolbar">
              <a href="#" class="easyui-linkbutton" data-options="name:'bullets',iconCls:'icon-bullets',plain:true"></a>
              <a href="#" class="easyui-linkbutton" data-options="name:'numbers',iconCls:'icon-numbers',plain:true"></a>
            </div>
            <div class="ribbon-group-title">Paragraph</div>
          </div>
            <div class="ribbon-group-sep"></div>
            <div class="ribbon-group">
              <div class="ribbon-toolbar">
                <a href="#" class="easyui-linkbutton" data-options="name:'find',iconCls:'icon-find',plain:true">Find</a>
              </div>
              <div class="ribbon-group-title">Editing</div>
            </div>
        </div>
      </div>
      <div style="border:1px solid" id="qq">
          <xsl:for-each select="datalists/data">
            <b><xsl:value-of select="title" /></b><br/>
            <xsl:value-of select="summary" /><br/>
          </xsl:for-each>
          <xsl:for-each select="datalists/data/date">
              개발 기간 : <xsl:value-of select="start" /> -
              <xsl:value-of select="end" /><br/>
          </xsl:for-each>
          <xsl:for-each select="datalists/data">
             개발 내용 : <xsl:value-of select="content" />,
                <xsl:value-of select="content[2]" />,
                <xsl:value-of select="content[3]" />,
                <xsl:value-of select="content[4]" /><br/>
            완 성 도 : <xsl:value-of select="completeness" /><br/>
            <xsl:value-of select="tools" />
          </xsl:for-each>
      </div>
      <button type="button" name="ok">확인</button>
      <a href="introdu2.html"><button type="button" name="no">취소</button></a>
    </div>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
