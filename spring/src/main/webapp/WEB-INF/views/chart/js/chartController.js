/**
 * 
 */
$("document").ready(function() {
	var baseYm = "201902"
	$("#rank_year")[0][1].selected = true;
	traUpjong(baseYm);
	
	window.chartColors = {
			red: 'rgb(255, 99, 132)',
			orange: 'rgb(255, 159, 64)',
			yellow: 'rgb(255, 205, 86)',
			green: 'rgb(75, 192, 192)',
			blue: 'rgb(54, 162, 235)',
			purple: 'rgb(153, 102, 255)',
			grey: 'rgb(201, 203, 207)'
		};
	
	var color = Chart.helpers.color;
	
		var barChartData = {
			labels: [],
			datasets: [{
				label: ' 소분류',
				backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
				borderColor: window.chartColors.red,
				borderWidth: 1,
				data: []
			}]
		};
	$("#doSearch").click(function() {
		var baseYm = $("#rank_year").val();
		if($("#rank_year").val() == ""){
//			alert("조회기준을 선택해주세요.");
		}
		
		// 업종 소분류별 cnt
		traUpjong(baseYm);
		
	});
	
// 업종 소분류별 cnt
//var traUpjong = function(baseYm){
	function traUpjong(baseYm){
    $.ajax({
        type : "GET",
        url : "/test/" + baseYm,
        error : function(){
            alert('통신실패!!');
        },
        success : function(data){
        	barChartData.datasets[0].data = [];
        	barChartData.labels = [];
     	   for(var i = 0; i < data.length; i++){
     		   barChartData.datasets[0].data.push(data[i].upCnt);
     		   barChartData.labels.push(data[i].upNm);
     	   }
     	   traUpjongFn();
        }
    });
}
	
var traUpjongFn = function(){
	$("#canvas").remove();
	$("#canvasReset").html('<canvas height="176" width="995" id="canvas" style="padding: 10px 0px 0px; display: block; width: 995px; height: 176px;"></canvas>');
	var ctx = document.getElementById('canvas').getContext('2d');
		window.myBar = new Chart(ctx, {
			type: 'bar',
			data: barChartData,
			options: {
				responsive: true,
				legend: {
					position: 'right',
				},
				title: {
					display: true
				},
				tooltips : {
  					callbacks: {
	              		title : function(tooltipItems) {
	              			
	                		return "sadf";
	                	},
	                	label : function(s){
	                		return "dd";
	                	}
  					}
  				}
			}
		});
}
//setInterval(traUpjong,1000);

	
});