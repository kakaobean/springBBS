var map, layer;
var daumMap = new OpenLayers.Layer.Daum(); // 지도관련lib DaumMap
var mapnik = new OpenLayers.Layer.OSM(); // 지도관련lib? ollehmap으로 대체할것임
function init() {
	map = new OpenLayers.Map('map');
	layer = new OpenLayers.Layer.OSM("Simple OSM Map");
	map.addLayer(daumMap);
	 map.zoomToExtent(
	            new OpenLayers.Bounds(
	            		195725.7981815, 453422.25002345, 200989.01157, 448844.53255
	            ).transform(map.displayProjection, map.projection)
	        );
	 // 지역비교로 초기값
	 searchToggle(1);
	 // 최초 로딩시 시도 리스트 가져옴
	 $.ajax({
	        type : "GET",
	        url : "/getSidoList",
	        error : function(){
	            alert('통신실패!!');
	        },
	        success : function(data){
	        	var sidoOption = "";
	        	sidoOption = '<option value="">::시도선택::</option>';
	        	for(i=0; i<data.length; i++){
	        		sidoOption += '<option value="'+ data[i].sidoCd +'">'+ data[i].sidoNm +'</option>';
	        	}
	        	$("#selectSido").html(sidoOption);
	        	
	        	$("#selectAdmdong").html('<option value="">::읍면동 선택::</option>');
	        	
	        	// value 값으로 선택(jQuery)
	        	// $("#selectSido").val("11").prop("selected", true);
	        	
	        	// OR option 순서값으로 선택(jQuery)
	        	$("#selectSido option:eq(1)").prop("selected", true);
	        	
	        	// OR option 순서값으로 선택(JS)
	        	// document.getElementById("selectSido").options[1].selected = true;
	        	
	        	doSggSet(data[0].sidoCd);
	        }
	    });
}

function doSidoSet(sidoCd){
	alert("선택한 option은"+sidoCd);
}


// 결과보기 버튼 클릭시
function doSearch(){
	var param = {
			baseYm : null
			,sidoCd : $("#selectSido").val()
			,sggCd : $("#selectSgg").val()
			,admdongCd : $("#selectAdmdong").val()
	};
	
	if($("#selectSgg").val() == "" || $("#selectAdmdong").val() == ""){
		alert("기준지역을 선택해주세요.");
	}else{
		alert("년월 : "+param.baseYm + "\n시도 : "+param.sidoCd +  "\n시군구 : "+param.sggCd + "\n읍면동 : "+ param.admdongCd);
	}
	
}



//common// common// common// common// common// common// common// common// common// common// common// common// common
//시군구 가져오기
function doSggSet(sidoCd){
	if($("#selectSido").val() == ""){
		$("#selectSgg").html('<option value="">::시군구 선택::</option>');
		$("#selectAdmdong").html('<option value="">::읍면동 선택::</option>');
	}else{
		$.ajax({
			type : "GET",
			url : "/getSggList/" + sidoCd,
			error : function(){
				alert("호출실패");
			},
			success : function(d){
				console.log(d);
				var sggOption = "";
				sggOption = '<option value="">::시군구 선택::</option>';
				for(i=0; i<d.length; i++){
					sggOption += '<option value="'+ d[i].sggCd +'">'+ d[i].sggNm +'</option>';
				}
				$("#selectSgg").html(sggOption);
				$("#selectAdmdong").html('<option value="">::읍면동 선택::</option>');
				// 초기값 0번째로 설정시 주석 해제
//				$("#selectSgg option:eq(1)").prop("selected", true);
//	        	doAdmdongSet(d[0].sggCd);
			}
		});
	}
}
// 읍면동 가져오기
function doAdmdongSet(sggCd){
	if($("#selectSgg").val() == ""){
		$("#selectAdmdong").html('<option value="">::읍면동 선택::</option>');
	}else{
		$.ajax({
			type : "GET",
			url : "/getAdmdongList/" + sggCd,
			error : function(){
				alert("호출실패");
			},
			success : function(d){
				console.log(d);
				var admdongOption = "";
				admdongOption = '<option value="">::읍면동 선택::</option>';
				for(i=0; i<d.length; i++){
					admdongOption += '<option value="'+ d[i].admdongCd +'">'+ d[i].admdongNm +'</option>';
				}
				$("#selectAdmdong").html(admdongOption);
				// 초기값 0번째로 설정시 주석 해제
//				$("#selectAdmdong option:eq(1)").prop("selected", true);
			}
		});
	}
}

function allCheck(type){
	switch(type){
		case 'sex' :
			if(document.getElementsByName("tadmin.pSex")[0].checked == true){
				document.getElementsByName("tadmin.pSex")[1].checked = true;
				document.getElementsByName("tadmin.pSex")[2].checked = true;
			}else{
				for(i=1; i<document.getElementsByName("tadmin.pSex").length; i++){
					document.getElementsByName("tadmin.pSex")[i].checked = false;
				}
			}
			break;
		case 'eweek' :
			if(document.getElementsByName("tadmin.pDay")[0].checked == true){
				document.getElementsByName("tadmin.pDay")[1].checked = true;
				document.getElementsByName("tadmin.pDay")[2].checked = true;
			}else{
				for(i=1; i<document.getElementsByName("tadmin.pDay").length; i++){
					document.getElementsByName("tadmin.pDay")[i].checked = false;
				}
			}
			break;
		case 'age' :
			var list = document.getElementsByName("tadmin.pAge");
			if(list[0].checked == true){
				for(i=1; i<list.length; i++){
					list[i].checked = true;
				}
			}else{
				for(i=1; i<list.length; i++){
					list[i].checked = false;
				}
			}
			break;
		case 'time' :
			var list = document.getElementsByName("tadmin.pTime")
			if(list[0].checked == true){
				for(i=1; i<list.length; i++){
					list[i].checked = true;
				}
			}else{
				for(i=1; i<list.length; i++){
					list[i].checked = false;
				}
			}
			break;
	}
}

// var searchToggle = function(value){} 이랑 호출 순서 확인
function searchToggle(value){
	if(value == '1'){
		$("#rightMonth2").hide(); 
		$("#rightMonth").hide();
	}else{
		$("#rightMonth2").show(); 
		$("#rightMonth").show();
	}
}

//common// common// common// common// common// common// common// common// common// common// common// common// common
