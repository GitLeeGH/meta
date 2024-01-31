/*********************************************************
 * TUI.GRID Language
 ******************************************************** */
tui.Grid.setLanguage('ko');

/*********************************************************
 * TUI.GRID Height
 ******************************************************** */
const tuiHeaderHeight = 35;
const tuiMinRowHeight = 32;
const tuiRowHeight = 32;

/*********************************************************
 * TUI.GRID Event
 ******************************************************** */
function setGridEvent(grid) {
	var selectedRowKey = null;
	grid.on('focusChange', function (ev) {
		if (selectedRowKey != null) {
			grid.removeRowClassName(selectedRowKey, 'currentRow');
		}
		selectedRowKey = ev.rowKey;
		grid.addRowClassName(selectedRowKey, 'currentRow');
	});
	
	grid.on('dblclick', function (ev) {
		return;
	});
	
	//성공, 실패와 관계 없이 응답을 받았을 경우 실행
	grid.on('response', function(ev) {
		//console.log('성공, 실패와 관계 없이 응답을 받았을 경우 실행');
	});
	
	grid.on('beforeRequest', function(ev) {
		//console.log('요청을 보내기 전 실행');
	});
			
	grid.on('successResponse', function(ev) {
		//console.log('결과가 true인 경우');
	});
	
	grid.on('failResponse', function(ev) {
		try {
			var responseObj = JSON.parse(ev.xhr.response);
			if (responseObj.message) { 
				confirmDialog({message:responseObj.message}); 
			}
		} catch (error) {
			confirmDialog({message:'요청처리를 실패하였습니다.'});
		}
	});
	
	grid.on('errorResponse', function(ev) {
		confirmDialog({message:'요청처리를 실패하였습니다.'});
	});
	
	//그리드 데이터의 변경이 있는경우 실행
	grid.on('afterChange', function (e) {
		if (e.changes != null && e.origin == 'cell') {
			if (grid.getRow(e.changes[0].rowKey) != null 
				&& grid.getRow(e.changes[0].rowKey).crud == 'R') 
			{ grid.setValue(e.changes[0].rowKey, 'crud', 'U'); }
		}
	});
}

/* ********************************************************
 * Grid Delete Row
 ******************************************************** */
function setDeleteRow(grid) {
	var selectedData = getSelectedRow(grid);
	if (selectedData == null) {
		confirmDialog({message:'해당 데이터가 없습니다.'});
	} else {
		if (selectedData.crud == 'D') {
			grid.setValue(grid.getFocusedCell()['rowKey'], 'crud', 'R');
		} else if (selectedData.crud == 'C') {
			grid.removeRow(selectedData.rowKey);
		} else {
			grid.setValue(grid.getFocusedCell()['rowKey'], 'crud', 'D');
		}
	}
}

/* ********************************************************
 * Grid Append Row
 ******************************************************** */
function setAppendRow(grid, data) {
	data.crud = 'C';
	var optionsOpt = {extendPrevRowSpan:false, focus:true};
	grid.appendRow(data, optionsOpt);
}

/* ********************************************************
 * Grid Append File Row
 ******************************************************** */
function setAppendFileRow(grid, data, maxCount) {
	if (grid.getRowCount() >= maxCount) {
		confirmDialog({message:maxCount + '개를 초과하여 첨부할 수 없습니다.'});
		return;
	}
	var optionsOpt = {extendPrevRowSpan:false, focus:true};
	grid.appendRow(data, optionsOpt);
}

/*********************************************************
 * TUI.GRID datasource
 ******************************************************** */
function setReadData(url) {
	var datasource = {
		contentType: 'application/x-www-form-urlencoded',
		api: { 
			readData: { url: url, method: 'POST' }
		},
		hideLoadingBar: true,
		initialRequest: false 
	};
	return datasource;
}

/*********************************************************
* Hierarchy MenuList delete empty folder
******************************************************** */
function getHierarchyMenuList(array, filter) {
	array.forEach(function(data, idx) {
		if (data['_children'].length > 0) {
			getHierarchyMenuList(data['_children'], filter);
		} else {
			delete data['_children'];			
		}
	});
}

/* ********************************************************
 * Grid Checkbox Header Renderer
 ******************************************************** */
 var CustomHeaderCheckBox = function(props)  {
	const el = document.createElement('input');
	el.id = String(props.rowKey);
	el.type = 'checkbox';
	el.checked = props.grid.getRow(props.rowKey).useAt == "Y" ? true : false;
	el.onchange = function (e) { 
		props.grid.setValue(props.rowKey, "useAt", this.checked ? "Y" : "N"); 
	};
	this.el = el;
	this.render(props);
};
CustomHeaderCheckBox.prototype.getElement = function() { return this.el; }
CustomHeaderCheckBox.prototype.render = function(props) { 
	this.el.checked = props.grid.getRow(props.rowKey).useAt == "Y" ? true : false;
}
	
/* ********************************************************
 * Grid Checkbox Renderer
 ******************************************************** */
 var CustomCheckBox = function(props)  {
	const el = document.createElement('input');
	el.type = 'checkbox';
	el.disabled = props.value == "D" ? true : false;
	el.checked = props.value == "Y" ? true : false;
	el.onchange = function (e) { props.grid.setValue(props.rowKey, props.columnInfo.name, this.checked ? "Y" : "N"); };
	this.el = el;
};
CustomCheckBox.prototype.getElement = function() { return this.el; }
CustomCheckBox.prototype.render = function(props) { 
	this.el.checked = props.value == "Y" ? true : false;
}

/* ********************************************************
 * Grid Button Renderer
 ******************************************************** */
var CustomButton = function(props)  {
	var val = (props.value==null) ? null : props.value;
	const el = document.createElement('input');
	el.type = 'button';
	el.className = 'gridButton';
	el.value = val;
	el.onclick = function (e) { gridButtonClick(val,props.grid.getRow(props.rowKey),props.rowKey); };
	this.el = el;
}
CustomButton.prototype.getElement = function() { return this.el; }

/* ********************************************************
 * Grid Formatter Custom CRUD Image
 ******************************************************** */
var CustomCRUD = function(props) {
	var className = '';
	switch (props.row.crud) {
		case 'C': className = 'created_row'; break;
		case 'U': className = 'updated_row'; break;
		case 'D': className = 'deleted_row'; break;
	}
	var html = '<div class="'+className+'"></div>';
    return html;
};

/* ********************************************************
 * Grid Formatter Custom Uploader
 ******************************************************** */
var CustomUploader = function(props)  {
	var val = (props.value==null) ? null : props.value;
	var html = '';
	html += '<label class="gridFileButton" for="file_'+props.row.rowKey+'">';
	html += 'Uploader';
	html += '<input class="gridUploader" type="file" ';
	html += 'id="file_'+props.row.rowKey+'" ';
	html += 'name='+props.row.rowKey+' ';
	html += 'accept="image/gif, image/png, image/jpeg, .pdf" ';
	html += 'onchange="setFileInfo(this, '+val+','+props.row.rowKey+')" ';
	html += 'align="center" style="display:none">';
	html += '</lable>';
    return html;
};

/* ********************************************************
 * Grid Formatter Custom Upload / Download
 ******************************************************** */
var CustomUpDownload = function(props)  {
	var val = (props.value==null) ? null : props.value;
	var html = '';
	if (props.row.atchFileId == null || props.row.atchFileId == '') {
		html += '<label class="gridFileButton" for="file_'+props.row.rowKey+'">';
		html += 'Uploader';
		html += '<input class="gridUploader" type="file" ';
		html += 'id="file_'+props.row.rowKey+'" ';
		html += 'name='+props.row.rowKey+' ';
		html += 'accept="image/gif, image/png, image/jpeg, .pdf" ';
		html += 'onchange="'+val[1]+'.setFileInfo(this, '+val[0]+','+props.row.rowKey+')" ';
		html += 'align="center" style="display:none">';
		html += '</lable>';
	} else {
		html += '<input class="gridButton" type="button" ';
		html += 'onclick="'+val[1]+'.fileDownload('+props.row.rowKey+')" ';
		html += 'align="center" value="Download">';
	}
    return html;
};

/* ********************************************************
 * Grid File Download Popup
 ******************************************************** */
function fileDownloadOpen(url, data) {
	var dform = document.createElement("form");
	dform.setAttribute("method", "post");
	dform.setAttribute("action", url);
	dform.setAttribute("target", "_blank");
	for (var key in data) {
		if (typeof data[key] == 'string') {
			var input = document.createElement('input');
			input.type = 'hidden';
			input.name = key;
			input.value = data[key];
			dform.appendChild(input);		
		}
	}
	document.body.appendChild(dform);
	dform.submit();
	document.body.removeChild(dform);
}

/* ********************************************************
 * Grid Excel Import
 ******************************************************** */
function gridExcelImport(event){
	var input = event.target;
	var reader = new FileReader();
	reader.onload = function(){
		var fileData = reader.result;
		var wb = XLSX.read(fileData, {type : 'binary'});
		wb.SheetNames.forEach(function(sheetName){
			var rowObj = XLSX.utils.sheet_to_json(wb.Sheets[sheetName]);
			for(var key in rowObj) {
				mainGrid.appendRow(renameExcelColumn(rowObj[key]));
			}
		})
	};
	reader.readAsBinaryString(input.files[0]);
	event.target.value="";
}

/* ********************************************************
 * Grid Excel Header Rename
 ******************************************************** */
function renameExcelColumn(data) {
	for (var key in data) {
		data[mainGrid.getColumns().find(function (item) { return item.header === key; }).name] = data[key];
		delete data[key];
	}
	return data
}

/* ********************************************************
 * Grid Selected Row
 ******************************************************** */
function getSelectedRow(grid) {
	return grid.getRow(grid.getFocusedCell()['rowKey']);
}

/* ********************************************************
 * Grid Selected Row Find Sample
 ******************************************************** */
//function setSendData(jarr) {
//	for(idx in jarr) {
//		jarr[idx].uniqId = grid.getRow(grid.getFocusedCell()['rowKey'])['uniqId'];
//	}
//	return jarr;
//}