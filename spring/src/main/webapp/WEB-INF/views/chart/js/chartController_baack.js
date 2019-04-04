/**
 * 
 */
$("document").ready(function() {
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
	
	function test(baseYm){
		var barChartData = {
			labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
			datasets: [{
				label: 'Dataset 1',
				backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
				borderColor: window.chartColors.red,
				borderWidth: 1,
				data: [
					baseYm,
					30000,
					50,
					100,
					70,
					50,
					60
				]
			}, {
				label: 'Dataset 2',
				backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
				borderColor: window.chartColors.blue,
				borderWidth: 1,
				data: [
					100,
					70,
					50,
					60,
					10,
					30,
					50
					
				]
			}]
		};
		return barChartData;
	}
	$("#doSearch").click(function() {
		var baseYm = $("#rank_year").val();
		if($("#rank_year").val() == ""){
			alert("조회기준을 선택해주세요.");
		}
		
		// 업종 소분류별 cnt
		traUpjong(baseYm);
		
	});

// 업종 소분류별 cnt
function traUpjong(baseYm){
    $.ajax({
        type : "GET",
        url : "/ajaxSuccess/"+1,
        error : function(){
            alert('통신실패!!');
        },
        success : function(data){
     	   alert('통신성공!!' + baseYm);
        }
    });
    $("#canvas").remove();
	$("#canvasReset").html('<canvas height="176" width="995" id="canvas" style="padding: 10px 0px 0px; display: block; width: 995px; height: 176px;"></canvas>');
	var ctx = document.getElementById('canvas').getContext('2d');
		window.myBar = new Chart(ctx, {
			type: 'bar',
			data: test(baseYm),
			options: {
				responsive: true,
				legend: {
					position: 'top',
				},
				title: {
					display: true,
					text: 'Chart.js Bar Chart'
				}
			}
		});
	}
});