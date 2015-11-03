<div class="REC_Responsive_1_1" id="main-content" role="main">
	#if (false)
		<table class="portlet-layout">
		<tr>
			<td class="aui-w100 portlet-column portlet-column-only" id="column-1">
				$processor.processColumn("column-1", "portlet-column-content portlet-column-content-only")
			</td>
		</tr>
		</table>

		<table class="portlet-layout">
		<tr>
			<td class="aui-w100 portlet-column portlet-column-only" id="column-2">
				$processor.processColumn("column-2", "portlet-column-content portlet-column-content-only")
			</td>
		</tr>
		</table>
	#else
		<div class="portlet-layout">
			<div class="aui-w100 portlet-column col-xs-12 col-sm-12 col-md-12 col-lg-12" id="column-1">
				$processor.processColumn("column-1", "portlet-column-content portlet-column-content-only")
			</div>
		</div>

		<div class="portlet-layout">
			<div class="aui-w100 portlet-column col-xs-12 col-sm-12 col-md-12 col-lg-12" id="column-2">
				$processor.processColumn("column-2", "portlet-column-content portlet-column-content-only")
			</div>
		</div>
	#end
</div>