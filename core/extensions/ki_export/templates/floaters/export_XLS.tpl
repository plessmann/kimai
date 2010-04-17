{literal}    
    <script type="text/javascript"> 
        
        $(document).ready(function() {
            $('#help').hide();
            $('#floater input#timeformat').attr('value',$('#xp_ext_timeformat').attr('value'));
            $('#floater input#dateformat').attr('value',$('#xp_ext_dateformat').attr('value'));
            $('#floater input#default_location').attr('value',$('#default_location').attr('value'));
            $('#floater input#axValue').attr('value',filterUsr.join(":")+'|'+filterKnd.join(":")+'|'+filterPct.join(":"));
            $('#floater input#filter_cleared').attr('value',$('#xp_ext_tab_filter_cleared').attr('value'));
            $('#floater input#filter_type').attr('value',$('#xp_ext_tab_filter_type').attr('value'));
            $('#floater input#axColumns').attr('value',xp_enabled_columns());
            $('#floater_content fieldset label').css('width','200px');

        }); 
        
    </script>
{/literal}


<div id="floater_innerwrap">

    <div id="floater_handle">
        <span id="floater_title">{$kga.lang.xp_ext.exportXLS}</span>
        <div class="right">
            <a href="#" class="close" onClick="floaterClose();">{$kga.lang.close}</a>
            <!-- <a href="#" class="help" onClick="$(this).blur(); $('#help').slideToggle();">{$kga.lang.help}</a> -->
			<!-- <a href="#" class="options down" onClick="floaterOptions();">{$kga.lang.options}</a> -->
        </div>  
    </div>

    <div id="help">
        <div class="content">
        </div>
    </div>


    <div id="floater_content"><div id="floater_dimensions">

        <form id="xp_ext_form_export_XLS" action="../extensions/ki_export/processor.php" method="post"> 
            <fieldset>
                   
				<ul>
                
                   <li>
                       <label for="print_comments">{$kga.lang.xp_ext.decimal_separator}:</label>
                       <input type="text" value="," name="decimal_separator" id="decimal-separator" size="1"/>
                   </li>

			        <li>
				 		{$kga.lang.xp_ext.dl_hint}
					</li>
				</ul>

{* -------------------------------------------------------------------- *} 

                <!-- <input name="id" type="hidden" value="" /> -->
                <input name="axAction" type="hidden" value="export_xls" />
                <input name="axValue" id="axValue" type="hidden" value="" />
                <input name="axColumns"  id="axColumns" type="hidden" value=""/>
                <input name="timeformat" id="timeformat" type="hidden" value=""/>
                <input name="dateformat" id="dateformat" type="hidden" value=""/>
                <input name="default_location" id="default_location" type="hidden" value=""/>
                <input name="filter_cleared" id="filter_cleared" type="hidden" value=""/>
                <input name="filter_type" id="filter_type" type="hidden" value=""/>

                <div id="formbuttons">
                    <input class='btn_norm' type='button' value='{$kga.lang.cancel}' onClick='floaterClose(); return false;' />
                    <input class='btn_ok' type='submit' value='{$kga.lang.submit}' onClick="floaterClose();"/>
                </div>

{* -------------------------------------------------------------------- *} 

            </fieldset>
        </form>

    </div></div>
</div>