var KLib={initMiniChart:function(e,t,i,o,a,n){if(0!=e.length){a=void 0!==a&&a,n=void 0!==n&&n;var r={type:"line",data:{labels:["January","February","March","April","May","June","July","August","September","October"],datasets:[{label:"",borderColor:i,borderWidth:o,pointHoverRadius:4,pointHoverBorderWidth:4,pointBackgroundColor:Chart.helpers.color("#000000").alpha(0).rgbString(),pointBorderColor:Chart.helpers.color("#000000").alpha(0).rgbString(),pointHoverBackgroundColor:KApp.getColor("brand"),pointHoverBorderColor:Chart.helpers.color("#000000").alpha(.1).rgbString(),fill:a,backgroundColor:i,data:t}]},options:{title:{display:!1},tooltips:{enabled:n,intersect:!1,mode:"nearest",xPadding:10,yPadding:10,caretPadding:10,backgroundColor:KApp.getColor("brand"),titleFontColor:"#ffffff",bodySpacing:4,cornerRadius:4,bodyFontFamily:"Poppins",titleFontFamily:"Poppins"},legend:{display:!1,labels:{usePointStyle:!1}},responsive:!1,maintainAspectRatio:!0,hover:{mode:"index"},scales:{xAxes:[{display:!1,gridLines:!1,scaleLabel:{display:!1,labelString:"Month"}}],yAxes:[{display:!1,gridLines:!1,scaleLabel:{display:!1,labelString:"Month"}}]},elements:{line:{tension:.5},point:{radius:2,borderWidth:4}},layout:{padding:{left:6,right:0,top:4,bottom:0}}}};new Chart(e,r)}},initMediumChart:function(e,t,i,o){if(document.getElementById(e)){var a=document.getElementById(e).getContext("2d"),n=a.createLinearGradient(0,0,0,100);n.addColorStop(0,Chart.helpers.color(o).alpha(.3).rgbString()),n.addColorStop(1,Chart.helpers.color(o).alpha(0).rgbString());var r={type:"line",data:{labels:["January","February","March","April","May","June","July","August","September","October"],datasets:[{label:"My First dataset",borderColor:o,borderWidth:2,backgroundColor:n,pointBackgroundColor:KApp.getColor("brand"),data:t}]},options:{responsive:!0,maintainAspectRatio:!1,title:{display:!1,text:"Chart.js Line Chart - Stacked Area"},tooltips:{intersect:!1,mode:"nearest",xPadding:10,yPadding:10,caretPadding:10,backgroundColor:KApp.getColor("brand"),titleFontColor:"#ffffff",bodySpacing:4,cornerRadius:4,bodyFontFamily:"Poppins",titleFontFamily:"Poppins"},legend:{display:!1,labels:{usePointStyle:!1}},hover:{mode:"index"},scales:{xAxes:[{display:!1,scaleLabel:{display:!1,labelString:"Month"},ticks:{display:!1,beginAtZero:!0}}],yAxes:[{display:!1,scaleLabel:{display:!1,labelString:"Value"},gridLines:{color:"#eef2f9",drawBorder:!1,offsetGridLines:!0,drawTicks:!1},ticks:{max:i,display:!1,beginAtZero:!0}}]},elements:{point:{radius:0,borderWidth:0,hoverRadius:0,hoverBorderWidth:0}},layout:{padding:{left:0,right:0,top:0,bottom:0}}}},l=new Chart(a,r);KUtil.addResizeHandler(function(){l.update()})}}},KQuickPanel=function(){var e=KUtil.get("k_quick_panel"),t=KUtil.get("k_quick_panel_tab_notifications"),i=KUtil.get("k_quick_panel_tab_actions"),o=KUtil.get("k_quick_panel_tab_settings"),a=function(){var t=KUtil.find(e,".k-quick-panel__nav");KUtil.find(e,".k-quick-panel__content");return parseInt(KUtil.getViewPort().height)-parseInt(KUtil.actualHeight(t))-2*parseInt(KUtil.css(t,"padding-top"))-10};return{init:function(){new KOffcanvas(e,{overlay:!0,baseClass:"k-quick-panel",closeBy:"k_quick_panel_close_btn",toggleBy:"k_quick_panel_toggler_btn"}),KUtil.scrollInit(t,{disableForMobile:!0,resetHeightOnDestroy:!0,handleWindowResize:!0,height:function(){return a()}}),KUtil.scrollInit(i,{disableForMobile:!0,resetHeightOnDestroy:!0,handleWindowResize:!0,height:function(){return a()}}),KUtil.scrollInit(o,{disableForMobile:!0,resetHeightOnDestroy:!0,handleWindowResize:!0,height:function(){return a()}}),$(e).find('a[data-toggle="tab"]').on("shown.bs.tab",function(e){KUtil.scrollUpdate(t),KUtil.scrollUpdate(i),KUtil.scrollUpdate(o)})}}}();$(document).ready(function(){KQuickPanel.init()});