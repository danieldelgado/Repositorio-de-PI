<div class="REC_Responsive_1_2_2" id="main-content" role="main">
	#if (false)
		<table class="portlet-layout">
		<tr>
			<td class="aui-w30 portlet-column portlet-column-first" id="column-1">
				$processor.processColumn("column-1", "portlet-column-content portlet-column-content-first")
			</td>
			<td class="aui-w70 portlet-column portlet-column-last" id="column-2">
				$processor.processColumn("column-2", "portlet-column-content portlet-column-content-last")
			</td>
		</tr>
		</table>

		<table class="portlet-layout">
		<tr>
			<td class="aui-w50 portlet-column portlet-column-first" id="column-3">
				$processor.processColumn("column-3", "portlet-column-content portlet-column-content-first")
			</td>
			<td class="aui-w50 portlet-column portlet-column-last" id="column-4">
				$processor.processColumn("column-4", "portlet-column-content portlet-column-content-last")
			</td>
		</tr>
		</table>
	#else
		<div class="portlet-layout">
			<div class="aui-w30 portlet-column col-xs-12 col-sm-4 col-md-3 col-lg-3 " id="column-1">
				$processor.processColumn("column-1", "portlet-column-content portlet-column-content-first")
			</div>

			<div class="aui-w70 portlet-column col-xs-12 col-sm-8 col-md-9 col-lg-9 " id="column-2">
				$processor.processColumn("column-2", "portlet-column-content portlet-column-content-last")
			</div>
		</div>

		<div class="portlet-layout">
			<div class="aui-w30 portlet-column col-xs-12 col-sm-4 col-md-3 col-lg-3 " id="column-3">
				$processor.processColumn("column-3", "portlet-column-content portlet-column-content-first")
			</div>

			<div class="aui-w70 portlet-column col-xs-12 col-sm-8 col-md-9 col-lg-9 " id="column-4">
				$processor.processColumn("column-4", "portlet-column-content portlet-column-content-last")
			</div>
		</div>
	#end
</div>