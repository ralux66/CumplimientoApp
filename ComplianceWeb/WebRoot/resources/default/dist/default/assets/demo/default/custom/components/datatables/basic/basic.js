"use strict";var DatatablesBasicBasic={init:function(){var e;(e=$("#k_table_1")).DataTable({responsive:!0,dom:"<'row'<'col-sm-12'tr>>\n\t\t\t<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7 dataTables_pager'lp>>",lengthMenu:[5,10,25,50],pageLength:10,language:{lengthMenu:"Display _MENU_"},order:[[1,"desc"]],headerCallback:function(e,a,t,n,s){e.getElementsByTagName("th")[0].innerHTML='\n                    <label class="k-checkbox k-checkbox--single k-checkbox--solid">\n                        <input type="checkbox" value="" class="k-group-checkable">\n                        <span></span>\n                    </label>'},columnDefs:[{targets:0,width:"30px",className:"dt-right",orderable:!1,render:function(e,a,t,n){return'\n                        <label class="k-checkbox k-checkbox--single k-checkbox--solid">\n                            <input type="checkbox" value="" class="k-checkable">\n                            <span></span>\n                        </label>'}},{targets:-1,title:"Actions",orderable:!1,render:function(e,a,t,n){return'\n                        <span class="dropdown">\n                            <a href="#" class="btn btn-hover-brand btn-icon btn-pill" data-toggle="dropdown" aria-expanded="true">\n                              <i class="la la-ellipsis-h"></i>\n                            </a>\n                            <div class="dropdown-menu dropdown-menu-right">\n                                <a class="dropdown-item" href="#"><i class="la la-edit"></i> Edit Details</a>\n                                <a class="dropdown-item" href="#"><i class="la la-leaf"></i> Update Status</a>\n                                <a class="dropdown-item" href="#"><i class="la la-print"></i> Generate Report</a>\n                            </div>\n                        </span>\n                        <a href="#" class="btn btn-hover-brand btn-icon btn-pill" title="View">\n                          <i class="la la-edit"></i>\n                        </a>'}},{targets:8,render:function(e,a,t,n){var s={1:{title:"Pending",class:"k-badge--brand"},2:{title:"Delivered",class:" k-badge--metal"},3:{title:"Canceled",class:" k-badge--primary"},4:{title:"Success",class:" k-badge--success"},5:{title:"Info",class:" k-badge--info"},6:{title:"Danger",class:" k-badge--danger"},7:{title:"Warning",class:" k-badge--warning"}};return void 0===s[e]?e:'<span class="k-badge '+s[e].class+' k-badge--inline k-badge--pill">'+s[e].title+"</span>"}},{targets:9,render:function(e,a,t,n){var s={1:{title:"Online",state:"danger"},2:{title:"Retail",state:"primary"},3:{title:"Direct",state:"accent"}};return void 0===s[e]?e:'<span class="k-badge k-badge--'+s[e].state+' k-badge--dot"></span>&nbsp;<span class="k-font-bold k-font-'+s[e].state+'">'+s[e].title+"</span>"}}]}),e.on("change",".k-group-checkable",function(){var e=$(this).closest("table").find("td:first-child .k-checkable"),a=$(this).is(":checked");$(e).each(function(){a?($(this).prop("checked",!0),$(this).closest("tr").addClass("active")):($(this).prop("checked",!1),$(this).closest("tr").removeClass("active"))})}),e.on("change","tbody tr .k-checkbox",function(){$(this).parents("tr").toggleClass("active")})}};jQuery(document).ready(function(){DatatablesBasicBasic.init()});