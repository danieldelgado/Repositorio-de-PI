<div class="REC_Responsive_3_2_2" id="main-content" role="main">
	#if (false)
		<table class="portlet-layout">
		<tr>
			<td class="aui-w33 portlet-column portlet-column-first" id="column-1">
				$processor.processColumn("column-1", "portlet-column-content portlet-column-content-first")
			</td>
			<td class="aui-w33 portlet-column" id="column-2">
				$processor.processColumn("column-2", "portlet-column-content")
			</td>
			<td class="aui-w33 portlet-column portlet-column-last" id="column-3">
				$processor.processColumn("column-3", "portlet-column-content portlet-column-content-last")
			</td>
		</tr>
		</table>

		<table class="portlet-layout">
		<tr>
			<td class="aui-w50 portlet-column portlet-column-first" id="column-4">
				$processor.processColumn("column-4", "portlet-column-content portlet-column-content-first")
			</td>
			<td class="aui-w50 portlet-column portlet-column-last" id="column-5">
				$processor.processColumn("column-5", "portlet-column-content portlet-column-content-last")
			</td>
		</tr>
		</table>

		<table class="portlet-layout">
		<tr>
			<td class="aui-w50 portlet-column portlet-column-first" id="column-6">
				$processor.processColumn("column-6", "portlet-column-content portlet-column-content-first")
			</td>
			<td class="aui-w50 portlet-column portlet-column-last" id="column-7">
				$processor.processColumn("column-7", "portlet-column-content portlet-column-content-last")
			</td>
		</tr>
		</table>
	#else
		<div class="portlet-layout">
			<div class="aui-w33 portlet-column col-xs-12 col-sm-12 col-md-4 col-lg-4" id="column-1">
				$processor.processColumn("column-1", "portlet-column-content portlet-column-content-first")
			</div>

			<div class="aui-w33 portlet-column col-xs-12 col-sm-12 col-md-4 col-lg-4" id="column-2">
				$processor.processColumn("column-2", "portlet-column-content")
			</div>

			<div class="aui-w33 portlet-column col-xs-12 col-sm-12 col-md-4 col-lg-4" id="column-3">
				$processor.processColumn("column-3", "portlet-column-content portlet-column-content-last")
			</div>
		</div>

		<div class="portlet-layout">
			<div class="aui-w50 portlet-column col-xs-12 col-sm-12 col-md-6 col-lg-6" id="column-4">
				$processor.processColumn("column-4", "portlet-column-content portlet-column-content-first")
			</div>

			<div class="aui-w50 portlet-column col-xs-12 col-sm-12 col-md-6 col-lg-6" id="column-5">
				$processor.processColumn("column-5", "portlet-column-content portlet-column-content-last")
			</div>
		</div>

		<div class="portlet-layout">
			<div class="aui-w50 portlet-column col-xs-12 col-sm-12 col-md-6 col-lg-6" id="column-6">
				$processor.processColumn("column-6", "portlet-column-content portlet-column-content-first")
			</div>

			<div class="aui-w50 portlet-column col-xs-12 col-sm-12 col-md-6 col-lg-6" id="column-7">
				$processor.processColumn("column-7", "portlet-column-content portlet-column-content-last")
			</div>
		</div>
	#end
</div>