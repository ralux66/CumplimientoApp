var KWizardDemo=function(){var e,t,n;return{init:function(){var r;KUtil.get("k_wizard_v1"),e=$("#k_form"),(n=new KWizard("k_wizard_v1",{startStep:1})).on("beforeNext",function(e){!0!==t.form()&&e.stop()}),n.on("change",function(e){setTimeout(function(){KUtil.scrollTop()},500)}),t=e.validate({ignore:":hidden",rules:{username:{required:!0},email:{required:!0,email:!0},password:{required:!0},name:{required:!0},contact:{required:!0},accept:{required:!0}},messages:{accept:{required:"You must accept the Terms and Conditions agreement!"}},invalidHandler:function(e,t){KUtil.scrollTop(),swal({title:"",text:"There are some errors in your submission. Please correct them.",type:"error",confirmButtonClass:"btn btn-secondary m-btn m-btn--wide"})},submitHandler:function(e){}}),(r=e.find('[data-kwizard-action="action-submit"]')).on("click",function(n){n.preventDefault(),t.form()&&(mApp.progress(r),e.ajaxSubmit({success:function(){mApp.unprogress(r),swal({title:"",text:"The application has been successfully submitted!",type:"success",confirmButtonClass:"btn btn-secondary"})}}))})}}}();jQuery(document).ready(function(){KWizardDemo.init()});