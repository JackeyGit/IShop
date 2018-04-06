// JavaScript Document

(function() {
	showGraph();
})();

//	个人中心页面-chart graph
function showGraph() {
	var data = [];
	
	data.push([21, 32]); 
	data.push([22, 78]); 
	data.push([23, 10]); 
	data.push([24, 26]); 
	data.push([25, 44]); 
	data.push([26, 41]);  
	data.push([27, 59]); 
	
	$('#grh-container').highcharts({
		chart: { type: 'areaspline', spacingBottom: 30},
		title: {text: null},
		legend: {enabled: false},
		xAxis: { gridLineWidth:1, labels: {format: '9-{value}', align: 'left' } },
		yAxis: { title: {//纵轴标题  
				text: null  
			},gridLineWidth:1,
			tickInterval: 20,
			labels: {
				formatter: function () {
					return this.value;
				}
			}
		},
		tooltip: {
			backgroundColor: '#01a5e0', 
			borderColor: '#01a5e0', 
			formatter: function () {
				return '<b style="width:20px;">' + this.y + '</b>'
					
			}
		}, credits: { enabled: false },exporting: {enabled:false},
		plotOptions: {
			area: {
				fillOpacity: 0.5,
				lineColor: '#01a5e0',
				lineWidth: 1,
				marker: {
					lineWidth: 2,
					lineColor: '#01a5e0',
					fillColor: 'white',
				}
			}
		},
		series: [{
			data: data,
			color: '#01a5e0',
			fillOpacity: 0.3
			
		}]
	});
	
	$('#grh-container-2').highcharts({
		chart: { type: 'areaspline', spacingBottom: 30},
		title: {text: null},
		legend: {enabled: false},
		xAxis: { gridLineWidth:1, labels: {format: '9-{value}', align: 'left' } },
		yAxis: { title: {//纵轴标题  
				text: null  
			},gridLineWidth:1,
			tickInterval: 20,
			labels: {
				formatter: function () {
					return this.value;
				}
			}
		},
		tooltip: {
			backgroundColor: '#01a5e0', 
			borderColor: '#01a5e0', 
			formatter: function () {
				return '<b style="width:20px;">' + this.y + '</b>'
					
			}
		}, credits: { enabled: false },exporting: {enabled:false},
		plotOptions: {
			area: {
				fillOpacity: 0.5,
				lineColor: '#01a5e0',
				lineWidth: 1,
				marker: {
					lineWidth: 2,
					lineColor: '#01a5e0',
					fillColor: 'white',
				}
			}
		},
		series: [{
			data: data,
			color: '#01a5e0',
			fillOpacity: 0.3
			
		}]
	});
	$('#grh-container-4').highcharts({
		chart: { type: 'areaspline', spacingBottom: 30},
		title: {text: null},
		legend: {enabled: false},
		xAxis: { gridLineWidth:1, labels: {format: '9-{value}', align: 'left' } },
		yAxis: { title: {//纵轴标题  
				text: null  
			},gridLineWidth:1,
			tickInterval: 20, 
			labels: {
				formatter: function () {
					return this.value;
				}
			}
		},
		tooltip: {
			backgroundColor: '#01a5e0', 
			borderColor: '#01a5e0', 
			formatter: function () {
				return '<b style="width:20px;">' + this.y + '</b>'
					
			}
		}, credits: { enabled: false },exporting: {enabled:false},
		plotOptions: {
			area: {
				fillOpacity: 0.5,
				lineColor: '#01a5e0',
				lineWidth: 1,
				marker: {
					lineWidth: 2,
					lineColor: '#01a5e0',
					fillColor: 'white',
				}
			}
		},
		series: [{
			data: data,
			color: '#01a5e0',
			fillOpacity: 0.3
			
		}]
	});
	$('#grh-container-5').highcharts({
		chart: { type: 'areaspline', spacingBottom: 30},
		title: {text: null},
		legend: {enabled: false},
		xAxis: { gridLineWidth:1, labels: {format: '9-{value}', align: 'left' } },
		yAxis: { title: {//纵轴标题  
				text: null  
			},gridLineWidth:1,
			tickInterval: 20,
			labels: {
				formatter: function () {
					return this.value;
				}
			}
		},
		tooltip: {
			backgroundColor: '#01a5e0', 
			borderColor: '#01a5e0', 
			formatter: function () {
				return '<b style="width:20px;">' + this.y + '</b>'
					
			}
		}, credits: { enabled: false },exporting: {enabled:false},
		plotOptions: {
			area: {
				fillOpacity: 0.5,
				lineColor: '#01a5e0',
				lineWidth: 1,
				marker: {
					lineWidth: 2,
					lineColor: '#01a5e0',
					fillColor: 'white',
				}
			}
		},
		series: [{
			data: data,
			color: '#01a5e0',
			fillOpacity: 0.3
			
		}]
	});
	
	$('#grh-container-3').highcharts({
		chart: { type: 'column', spacingBottom: 30},
		title: {text: null},
		legend: {enabled: false},
		xAxis: { 
			categories: [
                '9-21',
               	'9-22',
				'9-23',
				'9-24',
				'9-25',
				'9-26',
				'9-27'
            ],
			gridLineWidth:1,
            crosshair: true
		},
		yAxis: { title: {//纵轴标题  
				text: null  
			},gridLineWidth:1,
			tickInterval: 10, 
			labels: {
				formatter: function () {
					return this.value;
				}
			}
		},
		tooltip: {
			backgroundColor: '#01a5e0', 
			borderColor: '#01a5e0', 
			formatter: function () {
				return '<b style="width:20px;">' + this.y + '</b>'
					
			}
		}, credits: { enabled: false },exporting: {enabled:false},
		plotOptions: {
			area: {
				fillOpacity: 0.5,
				lineColor: '#01a5e0',
				lineWidth: 1,
				marker: {
					lineWidth: 2,
					lineColor: '#01a5e0',
					fillColor: 'white',
				}
			}
		},
		series: [{
			color: '#e4214a',
			pointWidth: 40,
			pointPadding: 0.2,
			groupPadding: 0.1,
            data: [49.9, 71.5, 86.4, 69.2, 54.0, 66.0, 35.6]
        },{
			color: '#01a5e0',
			pointWidth: 40,
			pointPadding: 0.2,
			groupPadding: 0.1,
            data: [83.6, 78.8, 88.5, 63.4, 76.0, 44.5, 25.0]
        }]
	});
	
	$('#grh-container-6').highcharts({
		chart: { type: 'column', spacingBottom: 30},
		title: {text: null},
		legend: {enabled: false},
		xAxis: { 
			categories: [
                '9-21',
               	'9-22',
				'9-23',
				'9-24',
				'9-25',
				'9-26',
				'9-27'
            ],
			gridLineWidth:1,
            crosshair: true
		},
		yAxis: { title: {//纵轴标题  
				text: null  
			},gridLineWidth:1,
			tickInterval: 10,
			labels: {
				formatter: function () {
					return this.value;
				}
			}
		},
		tooltip: {
			backgroundColor: '#01a5e0', 
			borderColor: '#01a5e0', 
			formatter: function () {
				return '<b style="width:20px;">' + this.y + '</b>'
					
			}
		}, credits: { enabled: false },exporting: {enabled:false},
		plotOptions: {
			area: {
				fillOpacity: 0.5,
				lineColor: '#01a5e0',
				lineWidth: 1,
				marker: {
					lineWidth: 2,
					lineColor: '#01a5e0',
					fillColor: 'white',
				}
			}
		},
		series: [{
			color: '#e4214a',
			pointWidth: 40,
			pointPadding: 0.2,
			groupPadding: 0.1,
            data: [49.9, 71.5, 86.4, 69.2, 54.0, 66.0, 35.6]
        },{
			color: '#01a5e0',
			pointWidth: 40,
			pointPadding: 0.2,
			groupPadding: 0.1,
            data: [83.6, 78.8, 88.5, 63.4, 76.0, 44.5, 25.0]
        }]
	});
	$('#grh-container-7').highcharts({
		chart: { type: 'column', spacingBottom: 30},
		title: {text: null},
		legend: {enabled: false},
		xAxis: { 
			categories: [
                '9-21',
               	'9-22',
				'9-23',
				'9-24',
				'9-25',
				'9-26',
				'9-27'
            ],
			gridLineWidth:1,
            crosshair: true
		},
		yAxis: { title: {//纵轴标题  
				text: null  
			},gridLineWidth:1,
			tickInterval: 10,
			labels: {
				formatter: function () {
					return this.value;
				}
			}
		},
		tooltip: {
			backgroundColor: '#01a5e0', 
			borderColor: '#01a5e0', 
			formatter: function () {
				return '<b style="width:20px;">' + this.y + '</b>'
					
			}
		}, credits: { enabled: false },exporting: {enabled:false},
		plotOptions: {
			area: {
				fillOpacity: 0.5,
				lineColor: '#01a5e0',
				lineWidth: 1,
				marker: {
					lineWidth: 2,
					lineColor: '#01a5e0',
					fillColor: 'white',
				}
			}
		},
		series: [{
			color: '#e4214a',
			pointWidth: 40,
			pointPadding: 0.2,
			groupPadding: 0.1,
            data: [49.9, 71.5, 86.4, 69.2, 54.0, 66.0, 35.6]
        },{
			color: '#01a5e0',
			pointWidth: 40,
			pointPadding: 0.2,
			groupPadding: 0.1,
            data: [83.6, 78.8, 88.5, 63.4, 76.0, 44.5, 25.0]
        }]
	});
	
	
	//======================== spline ======================
	$('#grh-container-spline').highcharts({
		chart: { type: 'spline', spacingTop: 30, spacingBottom: 10},
		title: {text: null},
		legend: {enabled: false},
		xAxis: { type: 'datetime', gridLineWidth:1, labels: {format: '{value}', align:'left' } },
		yAxis: { title: {//纵轴标题  
				text: null 
			}, gridLineWidth:1,  
			labels: {
				formatter: function () {
					return this.value;
				}
			}
		},
		tooltip: {
			backgroundColor: '#01a5e0', 
			borderColor: '#01a5e0', 
			formatter: function () {
				return '<b style="width:20px;">' + this.y + '</b>'
					
			}
		}, credits: { enabled: false },exporting: {enabled:false},
		plotOptions: {
			area: {
				fillOpacity: 0.5,
				lineColor: '#01a5e0',
				lineWidth: 1,
				marker: {
					lineWidth: 2,
					lineColor: '#01a5e0',
					fillColor: 'white',
				}
			}
		},
		series: [{
			data: [['01', 15],['02', 100],['03', 220],['04', 9000],['05', 15],['06', 15],['07', 15],['08', 15],['09', 15],['10', 15],
				['11', 15],['12', 15],['13', 15],['14', 15],['15', 400],['16', 590],['17', 340],['18', 15],['19', 15],['20', 15],
				['21', 15],['22', 15],['23', 15],['24', 15],['25', 15],['26', 15],['27', 15],['28', 15],['29', 15],['30', 15],['31', 15]],
			color: '#01a5e0',
			fillOpacity: 0.3
		}]
	});
	
	//======================== bar ======================
	$('#grh-container-bar').highcharts({
		chart: { type: 'column', spacingTop: 30, spacingBottom: 10},
		title: {text: null},
		legend: {enabled: false},
		xAxis: { type: 'datetime', gridLineWidth:1, labels: {format: '{value}号', align:'left', rotation:-45, y:30 } },
		yAxis: { title: {//纵轴标题  
				text: null 
			}, gridLineWidth:1,  
			labels: {
				formatter: function () {
					return this.value;
				}
			}
		},
		tooltip: {
			backgroundColor: '#01a5e0', 
			borderColor: '#01a5e0', 
			formatter: function () {
				return '<b style="width:20px;">' + this.y + '</b>'
					
			}
		}, credits: { enabled: false },exporting: {enabled:false},
		plotOptions: {
			area: {
				fillOpacity: 0.5,
				lineColor: '#01a5e0',
				lineWidth: 1,
				marker: {
					lineWidth: 2,
					lineColor: '#01a5e0',
					fillColor: 'white',
				}
			}
		},
		series: [{
			data: [['01', 15],['02', 100],['03', 220],['04', 9000],['05', 15],['06', 15],['07', 15],['08', 15],['09', 15],['10', 15],
				['11', 15],['12', 15],['13', 15],['14', 15],['15', 400],['16', 590],['17', 340],['18', 15],['19', 15],['20', 15],
				['21', 15],['22', 15],['23', 15],['24', 15],['25', 15],['26', 15],['27', 15],['28', 15],['29', 15],['30', 15],['31', 15]],
			color: '#01a5e0',
			fillOpacity: 0.3
		}]
	});
}