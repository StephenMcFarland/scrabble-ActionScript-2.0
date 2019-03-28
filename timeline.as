stop();
_root.arrow2.gotoAndStop("vacio");
//loadVariablesNum("scrabble_instruct.myf", 0);
//Frame Name correspondence to Face Card A-Z
LettersArray = ["a","a","a","a","a","a","a","a","a","b","b","c","c","d","d","d","d","e","e","e","e","e","e","e","e","e","e","e","e","f","f","g","g","g","h","h","i","i","i","i","i","i","i","i","i","j","k","l","l","l","l","m","m","n","n","n","n","n","n","o","o","o","o","o","o","o","o","p","p","q","r","r","r","r","r","r","s","s","s","s","t","t","t","t","t","t","u","u","u","u","v","v","w","w","x","y","y","z","bl","bl"];
TilesArray = [1,1,1,1,1,1,1,1,1,2,2,3,3,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,6,6,7,7,7,8,8,9,9,9,9,9,9,9,9,9,10,11,12,12,12,12,13,13,14,14,14,14,14,14,15,15,15,15,15,15,15,15,16,16,17,18,18,18,18,18,18,19,19,19,19,20,20,20,20,20,20,21,21,21,21,22,22,23,23,24,25,25,26,27,27];
//Define variables for Board Coordinates
var col:Number;
var row:Number;
var num:Number = 0;
//X coords
var colA:Number = 290;
var colB:Number = 340;
var colC:Number = 390;
var colD:Number = 430;
var colE:Number = 480;
var colF:Number = 530;
var colG:Number = 580;
var colH:Number = 630;
var colI:Number = 680;
var colJ:Number = 730;
var colK:Number = 770;
var colL:Number = 820;
var colM:Number = 870;
var colN:Number = 920;
var colO:Number = 960;

//Y coords
var rowA:Number = 40;
var rowB:Number = 80;
var rowC:Number = 130;
var rowD:Number = 180;
var rowE:Number = 230;
var rowF:Number = 270;
var rowG:Number = 320;
var rowH:Number = 370;
var rowI:Number = 420;
var rowJ:Number = 460;
var rowK:Number = 510;
var rowL:Number = 560;
var rowM:Number = 600;
var rowN:Number = 650;
var rowO:Number = 700;

//TValue = new Object();
//_root.iValue.text = i;
_root.tileText.text = "";
_root.DLhit._alpha = 0;
_root.TLhit._alpha = 0;
_root.DWhit._alpha = 0;
_root.TWhit._alpha = 0;
_root.SLhit._alpha = 0;

//disable HandCursor over buttons
//_root.draw_btn.useHandCursor = false;

//disable right-click options
Stage.showMenu = false;


var score1:Number = 0;
var score2:Number = 0;
var tally:Number = 0;
var DoubleW_bol:Boolean = false;
var TripleW_bol:Boolean = false;
var i:Number = 0;
var TargetX:Number;
var TargetY:Number;

/*
var myListener:Object = new Object();

myListener.onMouseUp = function(){
	//var tNum:String = "";
	_root.name_txt.text = random(10) + 1; 
	//tNum = this._name.substr(1,this._name.length - 1); 
	//scoreTile(tNum);
	
	}
	
	
Mouse.addListener(myListener);*/


onEnterFrame = function(){
_root.tallyValue.text = tally;
//_root.xValue.text = "X: " + Math.floor(_xmouse);
//_root.yValue.text = "Y: " + Math.floor(_ymouse);
}
//Add summed tally of tally to Player 1 Score
_root.submitP1.onRelease = function(){
		if(DoubleW_bol == true){
			tally*=2
			score1 += tally;
			_root.scoreP1.text = score1;
			tally = 0;
			DoubleW_bol = !DoubleW_bol;
		}
		else if(TripleW_bol == true){
			tally*=3
			score1 += tally;
			_root.scoreP1.text = score1;
			tally = 0;
			TripleW_bol = !TripleW_bol;
		}
		else{
			score1 += tally;
			_root.scoreP1.text = score1;
			tally = 0;
		}
		
		
		_root.arrow1.gotoAndStop("vacio");
		_root.arrow2.gotoAndPlay(1);
		//_root.SCOREBOX_txt.text += "Player 2 ";
	}
//Add summed tally of tally to Player 2 Score
_root.submitP2.onRelease = function(){
		if(DoubleW_bol == true){
			tally*=2
			score2 += tally;
			_root.scoreP2.text = score2;
			tally = 0;
			DoubleW_bol = !DoubleW_bol;
		}
		else if(TripleW_bol == true){
			tally*=3
			score2 += tally;
			_root.scoreP2.text = score2;
			tally = 0;
			TripleW_bol = !TripleW_bol;
		}
		else{
			score2 += tally;
			_root.scoreP2.text = score2;
			tally = 0;
		}
		
		
		_root.arrow1.gotoAndPlay(1);
		_root.arrow2.gotoAndStop("vacio");
		_root.SCOREBOX_txt.text += "Player 1 ";
	}
_root.Clear_btn.onRelease = function () {
	//_root.scoreP1.text = ""; 
	//_root.scoreP2.text = "";
	tally = 0;
}


//_root.instruct_btn.onRelease = function () {
	
	//PARAGRAPH(strInstruct);
	
//}
_root.ClearScore_btn.onRelease = function () {
	
	_root.scoreP1.text = ""; 
	_root.scoreP2.text = "";
	tally = score1 = score2 = 0;

}
//set Interval to run DrawTile function
drawTileID = setInterval(DrawTile, 150);
/*
_root.onEnterFrame = function () {
	_root["T" + i]._x += Math.abs((_root["T" + i]._x - TargetX))/5;
	_root["T" + i]._y += Math.abs((_root["T" + i]._y - TargetY))/5;
	//_root["T" + i]._rotation += random(11) + 2;
  }*/
_root.draw_btn.onRelease = function(){
	//i=35;
	DrawTile();
	}
function DrawTile() {
//_root.T.onRelease = function(){
	//clearInterval(drawTileID);
	//drawTileID2 = setInterval(DrawTile, 1100);
	//}
//_root.T.onRelease = function(){
	if(i==13){
		clearInterval(drawTileID);
		//removeMovieClip(_root["T" + i]);
		_root.iValue.text = "";
		}
		if(i==99){
		_root.draw_btn._visible = false;
		}
	
		++i;

		//TValue = new Object();
		x = random(TilesArray.length);
		if(i<7){
		TargetX = random(100) + 50
		TargetY = random(100) + 300;
		}
		_root.attachMovie("Tiles", "T" + i, i);
		
		//duplicateMovieClip(_root.A, "T" + i, i);
		//move to frame label for given letter
		_root["T" + i].gotoAndStop(TilesArray[x]);
		
		//assign Tile its literal letter value
		_root["T" + i].LValue = LettersArray[x];
		
		//ASSIGN TILE VALUE TO GENERATED TILE:  1,5,9,12,14,15,18,19,20,21  6,8,22,23,25
		if((TilesArray[x]==1)||(TilesArray[x]==5)||(TilesArray[x]==9)||(TilesArray[x]==12)||(TilesArray[x]==14)||(TilesArray[x]==15)||(TilesArray[x]==18)||(TilesArray[x]==19)||(TilesArray[x]==20)||(TilesArray[x]==21)){
				_root["T" + i].TValue = 1;
		}
		else if((TilesArray[x]==4)||(TilesArray[x]==7)){
				_root["T" + i].TValue = 2;
		}
		else if((TilesArray[x]==2)||(TilesArray[x]==3)||(TilesArray[x]==13)||(TilesArray[x]==16)){
				_root["T" + i].TValue = 3;
		}
		else if((TilesArray[x]==6)||(TilesArray[x]==8)||(TilesArray[x]==22)||(TilesArray[x]==23)||(TilesArray[x]==25)){
				_root["T" + i].TValue = 4;
		}
		else if(TilesArray[x]==11){
				_root["T" + i].TValue = 5;
		}
		else if((TilesArray[x]==10)||(TilesArray[x]==24)){
				_root["T" + i].TValue = 8;
		}
		else if((TilesArray[x]==17)||(TilesArray[x]==26)){
				_root["T" + i].TValue = 10;
		}else{
			_root["T" + i].TValue = 0;
			}
		//_root.iValue.text = i + "   " + TilesArray[x];
		
		TilesArray.splice(x, 1);
		LettersArray.splice(x, 1);
		_root["T" + i]._x = TargetX;//random(500) - 450;
		_root["T" + i]._y = TargetY;//random(500) - 450;
		//_root["T" + i]._rotation = 275;
		
	if(i>=7 && i<14){
		TargetX = random(100) + 50;
		TargetY = random(100) + 520;
	}		
	if(i>=14 && i<=100){
		TargetX = random(20)+ 100;
		TargetY = random(10)+ 200;
		//_root["T" + i]._alpha = 10;
		}

}
_global.scoreTile = function(s:Number){

var xVal:Number = 0; 
var yVal:Number = 0;
var r:Number = 20;

xVal = _root["T" + s]._x + 20;
yVal = _root["T" + s]._y + 20;

//switch(xVal){
	//case colD:
		//tally += _root["T" + s].TValue*2;
		//break;
	
//score Double letter
	if(xVal > (colD - r) && xVal < (colD + r) && yVal > (rowA - r) && yVal < (rowA + r)){
	//if(_root["T" + s].hitTest(colD, rowA)){
		tally += _root["T" + s].TValue*2;
		//changeHitXY(colD,rowA);
		colD = colA;
		rowA = rowB;
		}
else if(xVal > (colL - r) && xVal < (colL + r) && yVal > (rowA - r) && yVal < (rowA + r)){		
	//else if(_root["T" + s].hitTest(colL, rowA)){
		tally += _root["T" + s].TValue*2;
		colL = colA;
		rowA = rowB;
		}
else if(xVal > (colG - r) && xVal < (colG + r) && yVal > (rowC - r) && yVal < (rowC + r)){
	//else if(_root["T" + s].hitTest(colG, rowC)){
		tally += _root["T" + s].TValue*2;
		colG = colA;
		rowC = rowB;
		}
else if(xVal > (colI - r) && xVal < (colI + r) && yVal > (rowC - r) && yVal < (rowC + r)){
	//else if(_root["T" + s].hitTest(colI, rowC)){
		tally += _root["T" + s].TValue*2;
		colI = colA;
		rowC = rowB;
		}
else if(xVal > (colA - r) && xVal < (colA + r) && yVal > (rowD - r) && yVal < (rowD + r)){
	//else if(_root["T" + s].hitTest(colA, rowD)){
		tally += _root["T" + s].TValue*2;
		colA = colA;
		rowD = rowB;
		}
else if(xVal > (colH - r) && xVal < (colH + r) && yVal > (rowD - r) && yVal < (rowD + r)){
	//else if(_root["T" + s].hitTest(colH, rowD)){
		tally += _root["T" + s].TValue*2;
		colH = colA;
		rowD = rowB;
		}
else if(xVal > (colO - r) && xVal < (colO + r) && yVal > (rowD - r) && yVal < (rowD + r)){
	//else if(_root["T" + s].hitTest(colO, rowD)){
		tally += _root["T" + s].TValue*2;
		colO = colA;
		rowD = rowB;
		}
else if(xVal > (colC - r) && xVal < (colC + r) && yVal > (rowG - r) && yVal < (rowG + r)){
	//else if(_root["T" + s].hitTest(colC, rowG)){
		tally += _root["T" + s].TValue*2;
		colC = colA;
		rowG = rowB;
		}
else if(xVal > (colG - r) && xVal < (colG + r) && yVal > (rowG - r) && yVal < (rowG + r)){	
	//else if(_root["T" + s].hitTest(colG, rowG)){
		tally += _root["T" + s].TValue*2;
		colG = colA;
		rowG = rowB;
		}
else if(xVal > (colI - r) && xVal < (colI + r) && yVal > (rowG - r) && yVal < (rowG + r)){
	//else if(_root["T" + s].hitTest(colI, rowG)){
		tally += _root["T" + s].TValue*2;
		colI = colA;
		rowG = rowB;
		}
else if(xVal > (colM - r) && xVal < (colM + r) && yVal > (rowG - r) && yVal < (rowG + r)){
	//else if(_root["T" + s].hitTest(colM, rowG)){
		tally += _root["T" + s].TValue*2;
		colM = colA;
		rowG = rowB;
		}
else if(xVal > (colD - r) && xVal < (colD + r) && yVal > (rowH - r) && yVal < (rowH + r)){
	//else if(_root["T" + s].hitTest(colD, rowH)){
		tally += _root["T" + s].TValue*2;
		colD = colA;
		rowH = rowB;
		}
else if(xVal > (colL - r) && xVal < (colL + r) && yVal > (rowH - r) && yVal < (rowH + r)){
	//else if(_root["T" + s].hitTest(colL, rowH)){
		tally += _root["T" + s].TValue*2;
		colL = colA;
		rowH = rowB;
		}
else if(xVal > (colC - r) && xVal < (colC + r) && yVal > (rowI - r) && yVal < (rowI + r)){
	//else if(_root["T" + s].hitTest(colC, rowI)){
		tally += _root["T" + s].TValue*2;
		colC = colA;
		rowI = rowB;
		}
else if(xVal > (colG - r) && xVal < (colG + r) && yVal > (rowI - r) && yVal < (rowI + r)){
	//else if(_root["T" + s].hitTest(colG, rowI)){
		tally += _root["T" + s].TValue*2;
		colG = colA;
		rowI = rowB;
		}
else if(xVal > (colI - r) && xVal < (colI + r) && yVal > (rowI - r) && yVal < (rowI + r)){
	//else if(_root["T" + s].hitTest(colI, rowI)){
		tally += _root["T" + s].TValue*2;
		colI = colA;
		rowI = rowB;
		}
else if(xVal > (colM - r) && xVal < (colM + r) && yVal > (rowI - r) && yVal < (rowI + r)){
	//else if(_root["T" + s].hitTest(colM, rowI)){
		tally += _root["T" + s].TValue*2;
		colM = colA;
		rowI = rowB;
		}
else if(xVal > (colA - r) && xVal < (colA + r) && yVal > (rowL - r) && yVal < (rowL + r)){
	//else if(_root["T" + s].hitTest(colA, rowL)){
		tally += _root["T" + s].TValue*2;
		colA = colA;
		rowL = rowB;
		}
else if(xVal > (colH - r) && xVal < (colH + r) && yVal > (rowL - r) && yVal < (rowL + r)){
	//else if(_root["T" + s].hitTest(colH, rowL)){
		tally += _root["T" + s].TValue*2;
		colH = colA;
		rowL = rowB;
		}
else if(xVal > (colO - r) && xVal < (colO + r) && yVal > (rowL - r) && yVal < (rowL + r)){
	//else if(_root["T" + s].hitTest(colO, rowL)){
		tally += _root["T" + s].TValue*2;
		colO = colA;
		rowL = rowB;
		}
else if(xVal > (colG - r) && xVal < (colG + r) && yVal > (rowM - r) && yVal < (rowM + r)){
	//else if(_root["T" + s].hitTest(colG, rowM)){
		tally += _root["T" + s].TValue*2;
		colG = colA;
		rowM = rowB;
		}
else if(xVal > (colI - r) && xVal < (colI + r) && yVal > (rowM - r) && yVal < (rowM + r)){
	//else if(_root["T" + s].hitTest(colI, rowM)){
		tally += _root["T" + s].TValue*2;
		colI = colA;
		rowM = rowB;
		}
else if(xVal > (colD - r) && xVal < (colD + r) && yVal > (rowO - r) && yVal < (rowO + r)){
	//else if(_root["T" + s].hitTest(colD, rowO)){
		tally += _root["T" + s].TValue*2;
		colD = colA;
		rowO = rowB;
		}
else if(xVal > (colL - r) && xVal < (colL + r) && yVal > (rowO - r) && yVal < (rowO + r)){
	//else if(_root["T" + s].hitTest(colL, rowO)){
		tally += _root["T" + s].TValue*2;
		colL = colA;
		rowO = rowB;
		}
		
	
//score Double word
else if(xVal > (colB - r) && xVal < (colB + r) && yVal > (rowB - r) && yVal < (rowB + r)){
	//else if(_root["T" + s].hitTest(colB, rowB)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colB = colA;
	rowB = rowB;
} 	
else if(xVal > (colC - r) && xVal < (colC + r) && yVal > (rowC - r) && yVal < (rowC + r)){
//else if(_root["T" + s].hitTest(colC, rowC)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colC = colA;
	rowC = rowB;
} 
else if(xVal > (colD - r) && xVal < (colD + r) && yVal > (rowD - r) && yVal < (rowD + r)){
//else if(_root["T" + s].hitTest(colD, rowD)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colD = colA;
	rowD = rowB;
} 
else if(xVal > (colE - r) && xVal < (colE + r) && yVal > (rowE - r) && yVal < (rowE + r)){
//else if(_root["T" + s].hitTest(colE, rowE)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colE = colA;
	rowE = rowB;
} 
else if(xVal > (colH - r) && xVal < (colH + r) && yVal > (rowH - r) && yVal < (rowH + r)){
//else if(_root["T" + s].hitTest(colH, rowH)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colH = colA;
	rowH = rowB;
} 
else if(xVal > (colK - r) && xVal < (colK + r) && yVal > (rowK - r) && yVal < (rowK + r)){
//else if(_root["T" + s].hitTest(colK, rowK)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colK = colA;
	rowK = rowB;
} 
else if(xVal > (colL - r) && xVal < (colL + r) && yVal > (rowL - r) && yVal < (rowL + r)){
//else if(_root["T" + s].hitTest(colL, rowL)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colL = colA;
	rowL = rowB;
} 
else if(xVal > (colM - r) && xVal < (colM + r) && yVal > (rowM - r) && yVal < (rowM + r)){
//else if(_root["T" + s].hitTest(colM, rowM)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colM = colA;
	rowM = rowB;
} 
else if(xVal > (colN - r) && xVal < (colN + r) && yVal > (rowN - r) && yVal < (rowN + r)){
//else if(_root["T" + s].hitTest(colN, rowN)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colN = colA;
	rowN = rowB;
} 
else if(xVal > (colB - r) && xVal < (colB + r) && yVal > (rowN - r) && yVal < (rowN + r)){
//else if(_root["T" + s].hitTest(colB, rowN)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colB = colA;
	rowN = rowB;
} 
else if(xVal > (colC - r) && xVal < (colC + r) && yVal > (rowM - r) && yVal < (rowM + r)){
//else if(_root["T" + s].hitTest(colC, rowM)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colC = colA;
	rowM = rowB;
} 
else if(xVal > (colD - r) && xVal < (colD + r) && yVal > (rowL - r) && yVal < (rowL + r)){
//else if(_root["T" + s].hitTest(colD, rowL)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colD = colA;
	rowL = rowB;
} 
else if(xVal > (colE - r) && xVal < (colE + r) && yVal > (rowK - r) && yVal < (rowK + r)){
//else if(_root["T" + s].hitTest(colE, rowK)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colE = colA;
	rowK = rowB;
} 
else if(xVal > (colN - r) && xVal < (colN + r) && yVal > (rowB - r) && yVal < (rowB + r)){
//else if(_root["T" + s].hitTest(colN, rowB)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colN = colA;
	rowB = rowB;
} 
else if(xVal > (colM - r) && xVal < (colM + r) && yVal > (rowC - r) && yVal < (rowC + r)){
//else if(_root["T" + s].hitTest(colM, rowC)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colM= colA;
	rowC = rowB;
} 
else if(xVal > (colL - r) && xVal < (colL + r) && yVal > (rowD - r) && yVal < (rowD + r)){
//else if(_root["T" + s].hitTest(colL, rowD)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colL = colA;
	rowD = rowB;
} 
else if(xVal > (colK - r) && xVal < (colK + r) && yVal > (rowE - r) && yVal < (rowE + r)){
//else if(_root["T" + s].hitTest(colK, rowE)){
	tally += _root["T" + s].TValue*1;
	DoubleW_bol = !DoubleW_bol;
	
	colK = colA;
	rowE = rowB;
}
//score Triple letter
else if(xVal > (colF - r) && xVal < (colF + r) && yVal > (rowB - r) && yVal < (rowB + r)){
//else if(_root["T" + s].hitTest(colF, rowB)){
	tally += _root["T" + s].TValue*3;
	colF = colA;
	rowB = rowB;
} 
else if(xVal > (colJ - r) && xVal < (colJ + r) && yVal > (rowB - r) && yVal < (rowB + r)){
//else if(_root["T" + s].hitTest(colJ, rowB)){
	tally += _root["T" + s].TValue*3;
	colJ = colA;
	rowB = rowB;
} 
else if(xVal > (colB - r) && xVal < (colB + r) && yVal > (rowF - r) && yVal < (rowF + r)){
//else if(_root["T" + s].hitTest(colB, rowF)){
	tally += _root["T" + s].TValue*3;
	colB = colA;
	rowF = rowB;
} 
else if(xVal > (colF - r) && xVal < (colF + r) && yVal > (rowF - r) && yVal < (rowF + r)){
//else if(_root["T" + s].hitTest(colF, rowF)){
	tally += _root["T" + s].TValue*3;
	colF = colA;
	rowF = rowB;
} 
else if(xVal > (colJ - r) && xVal < (colJ + r) && yVal > (rowF - r) && yVal < (rowF + r)){
//else if(_root["T" + s].hitTest(colJ, rowF)){
	tally += _root["T" + s].TValue*3;
	colJ = colA;
	rowF = rowB;
} 
else if(xVal > (colN - r) && xVal < (colN + r) && yVal > (rowF - r) && yVal < (rowF + r)){
//else if(_root["T" + s].hitTest(colN, rowF)){
	tally += _root["T" + s].TValue*3;
	colN = colA;
	rowF = rowB;
} 
else if(xVal > (colB - r) && xVal < (colB + r) && yVal > (rowJ - r) && yVal < (rowJ + r)){
//else if(_root["T" + s].hitTest(colB, rowJ)){
	tally += _root["T" + s].TValue*3;
	colB = colA;
	rowJ = rowB;
} 
else if(xVal > (colF - r) && xVal < (colF + r) && yVal > (rowJ - r) && yVal < (rowJ + r)){
//else if(_root["T" + s].hitTest(colF, rowJ)){
	tally += _root["T" + s].TValue*3;
	colF = colA;
	rowJ = rowB;
} 
else if(xVal > (colJ - r) && xVal < (colJ + r) && yVal > (rowJ - r) && yVal < (rowJ + r)){
//else if(_root["T" + s].hitTest(colJ, rowJ)){
	tally += _root["T" + s].TValue*3;
	colJ = colA;
	rowJ = rowB;
} 
else if(xVal > (colN - r) && xVal < (colN + r) && yVal > (rowJ - r) && yVal < (rowJ + r)){
//else if(_root["T" + s].hitTest(colN, rowJ)){
	tally += _root["T" + s].TValue*3;
	colN = colA;
	rowJ = rowB;
} 
else if(xVal > (colF - r) && xVal < (colF + r) && yVal > (rowN - r) && yVal < (rowN + r)){
//else if(_root["T" + s].hitTest(colF, rowN)){
	tally += _root["T" + s].TValue*3;
	colF = colA;
	rowN = rowB;
} 
else if(xVal > (colJ - r) && xVal < (colJ + r) && yVal > (rowN - r) && yVal < (rowN + r)){
//else if(_root["T" + s].hitTest(colJ, rowN)){
	tally += _root["T" + s].TValue*3;
	colJ = colA;
	rowN = rowB;
} 
//score Triple word 
else if(xVal > (colA - r) && xVal < (colA + r) && yVal > (rowA - r) && yVal < (rowA + r)){
//else if(_root["T" + s].hitTest(colA, rowA)){
	tally += _root["T" + s].TValue*1;
	TripleW_bol = !TripleW_bol;
	
	colA = colA;
	rowA = rowB;
}
else if(xVal > (colA - r) && xVal < (colA + r) && yVal > (rowH - r) && yVal < (rowH + r)){
//else if(_root["T" + s].hitTest(colA, rowH)){
	tally += _root["T" + s].TValue*1;
	TripleW_bol = !TripleW_bol;
	
	colA = colA;
	rowH = rowB;
}
else if(xVal > (colA - r) && xVal < (colA + r) && yVal > (rowO - r) && yVal < (rowO + r)){
//else if(_root["T" + s].hitTest(colA, rowO)){
	tally += _root["T" + s].TValue*1;
	TripleW_bol = !TripleW_bol;
	
	colA = colA;
	rowO = rowB;
}
else if(xVal > (colH - r) && xVal < (colH + r) && yVal > (rowO - r) && yVal < (rowO + r)){
//else if(_root["T" + s].hitTest(colH, rowO)){
	tally += _root["T" + s].TValue*1;
	TripleW_bol = !TripleW_bol;
	
	colH = colA;
	rowO = rowB;
}
else if(xVal > (colO - r) && xVal < (colO + r) && yVal > (rowA - r) && yVal < (rowA + r)){
//else if(_root["T" + s].hitTest(colO, rowA)){
	tally += _root["T" + s].TValue*1;
	TripleW_bol = !TripleW_bol;
	
	colO = colA;
	rowA = rowB;
}
else if(xVal > (colO - r) && xVal < (colO + r) && yVal > (rowH - r) && yVal < (rowH + r)){
//else if(_root["T" + s].hitTest(colO, rowH)){
	tally += _root["T" + s].TValue*1;
	TripleW_bol = !TripleW_bol;
	
	colO = colA;
	rowH = rowB;
}
else if(xVal > (colO - r) && xVal < (colO + r) && yVal > (rowO - r) && yVal < (rowO + r)){
//else if(_root["T" + s].hitTest(colO, rowO)){
	tally += _root["T" + s].TValue*1;
	TripleW_bol = !TripleW_bol;
	
	colO = colA;
	rowO = rowB;
}

//score Single letter
	//if(xVal > (colD - r) && xVal < (colD + r) && yVal > (rowA - r) && yVal < (rowA + r)){
//else if((_root["T" + s].hitTest(_root.SLhit)) || (_root["T" + s].hitTest(colA, rowB))){
			//tally += _root["T" + s].TValue*1;
			//_root.SCOREBOX_txt.text += _root["T" + s].LValue;
			//}
	else {
				tally += _root["T" + s].TValue*1;
			}
	//_root.tileText.text = tally;
	//_root.SCOREBOX_txt.text += _root["T" + s].LValue;
	//_root.name_txt.text += _root["T" + s]._name.substr(1,3) + " ";
	}

//x=40;
//yLevel = 100;
//b1 = _root.b1;

//AREA1 = _root.col_btn;


//continue scoreTile function()

function changeHitXY(column, row){
	column = 290;
	row    =  80;
	}

var t = 1;

var myString:String = new String;
var	myStringArr:Array = new Array();





	

//INSERT SIDE-LINE PARAGRAPH(S) FORMATTED WITH DESIRED FONT
function PARAGRAPH(myString){
	pageNum = 1000;
	pageDepth = 1500;
	letterDepth = 1601;
	xAlign = 0;
	yLevel = 0;
	t = 1;
	
	//myString = myStringsArr[index].toString;
	
	for(s=0; s < myString.length; s++){
		x = myString.charAt(s);
		if(x=="."){
			myStringArr.push('>');
		}
		else if(x==" "){
			myStringArr.push('sp');
		}
		else if(x=="0"){
			myStringArr.push('n0');
		}
		else if(x==":"){
			myStringArr.push('colon');
		}
		else if(x=="—"){
			myStringArr.push('-');
		}
		else if(x=="]"){
			myStringArr.push(')');
		}
		else if(x=="["){
			myStringArr.push('(');
		}
		/*else if(x=="a"){
			myStringArr.push('la');
		}
		else if(x=="b"){
			myStringArr.push('lb');
		}
		else if(x=="c"){
			myStringArr.push('lc');
		}
		else if(x=="d"){
			myStringArr.push('ld');
		}
		else if(x=="e"){
			myStringArr.push('le');
		}
		else if(x=="f"){
			myStringArr.push('lf');
		}
		else if(x=="g"){
			myStringArr.push('lg');
		}
		else if(x=="h"){
			myStringArr.push('lh');
		}
		else if(x=="i"){
			myStringArr.push('li');
		}
		else if(x=="j"){
			myStringArr.push('lj');
		}
		else if(x=="k"){
			myStringArr.push('lk');
		}
		else if(x=="l"){
			myStringArr.push('ll');
		}
		else if(x=="m"){
			myStringArr.push('lm');
		}
		else if(x=="n"){
			myStringArr.push('ln');
		}
		else if(x=="o"){
			myStringArr.push('lo');
		}
		else if(x=="p"){
			myStringArr.push('lp');
		}
		else if(x=="q"){
			myStringArr.push('lq');
		}
		else if(x=="r"){
			myStringArr.push('lr');
		}
		else if(x=="s"){
			myStringArr.push('ls');
		}
		else if(x=="t"){
			myStringArr.push('lt');
		}
		else if(x=="u"){
			myStringArr.push('lu');
		}
		else if(x=="v"){
			myStringArr.push('lv');
		}
		else if(x=="w"){
			myStringArr.push('lw');
		}
		else if(x=="x"){
			myStringArr.push('lx');
		}
		else if(x=="y"){
			myStringArr.push('ly');
		}
		else if(x=="z"){
			myStringArr.push(lz);
		}*/
		else{
			myStringArr.push(x);
		}
	}
//CLEAR THE STRING VARIABLE OF ALL CONTENTS BEFORE PASSING A NEW STRING'ED PARAGRAPH
	myString = "";
//BRING PAPER TO STAGE AND DEFINE ATTRIBUTES
	
	//removeMovieClip(_root.sideNoteBox.P1);
	removeMovieClip(sideNoteBox);
	_root.createEmptyMovieClip("sideNoteBox", getNextHighestDepth() + 2000);
	//_root.sideNoteBox.attachMovie("PAPER", "P" + pageNum, pageDepth);
		//_root["P" + pageNum].pageNum_txt.text = "p.  " + (pageNum + 1);
		//_root["P" + pageNum]._xscale = 101; 
		//_root["P" + pageNum]._yscale = 101;
		//_root["P" + i]._rotation = random(21) + 340;
		_root.sideNoteBox._x = 280;
		_root.sideNoteBox._y = 30;
	    //START DRAG FOR SIDE NOTE WINDOW
		_root.sideNoteBox.onPress = function(){			
				//_root.sideNoteBox.swapDepths(getNextHighestDepth());
				//_root.sideNoteBox.startDrag();
				removeMovieClip(sideNoteBox);
		}
		_root.sideNoteBox.onRelease = function(){			
		stopDrag();
		}

		
//START LOOPING THROUGH CHARACTERS
		
		for(t=0;t<myStringArr.length;t++){
		//x = random(letterBody.length);
		_root.sideNoteBox.attachMovie("Tiles", "L" + t, letterDepth);
		//duplicateMovieClip(_root.A, "T" + i, i);
		_root.sideNoteBox["L" + t].gotoAndStop(myStringArr[t]);
		//TilesArray.splice(x, 1);
		//BRING LETTER TO STAGE AND POSITION ACCORDINGLY
		_root.sideNoteBox["L" + t]._xscale = 50; 
		_root.sideNoteBox["L" + t]._yscale = 50;
		_root.sideNoteBox["L" + t]._rotation = random(20) + 350;
		_root.sideNoteBox["L" + t]._x = xAlign;
		_root.sideNoteBox["L" + t]._y = yLevel;
		xAlign += _root.sideNoteBox["L" + t]._width;
//		if(i>0){
		//_root["P" + pageNum]["L" + i]._x = _root["P" + pageNum]["L" + (i - 1)]._x + _root["P" + pageNum]["L" + (i - 1)]._width;
		//_root["P" + pageNum]["L" + i]._y = yLevel;
		//}
		x = myStringArr[t];
		if((x=='sp')&&(_root.sideNoteBox["L" + t]._x > 300)){
			_root.sideNoteBox["L" + t]._y = yLevel;
			xAlign = 0;
			yLevel += 30;
			
			//_root.sideNoteBox["L" + i]._x = xAlign;
			}
			
/*IF THE END OF THE PAGE IS REACHED, GO TO THE NEXT PAGE
		if(yLevel > (_root["P" + pageNum]._height - 30)){
			++pageNum;
			--pageDepth;
		_root.attachMovie("PAPER_MC", "P" + pageNum, pageDepth);
//CHANG THE PAGE NUMBER IN THE UPPER RIGHT-HAND CORNER
		_root["P" + pageNum].pageNum_txt.text = "p.  " + (pageNum + 1);
//POSITION THE NEXT PAGE WITH RESPECT TO THE PREVIOUS PAGE
			_root["P" + pageNum]._x = _root["P" + (pageNum - 1)]._x + 10;
			_root["P" + pageNum]._y = _root["P" + (pageNum - 1)]._y + 5;
			yLevel = 38;
//START POSITIONING LETTERS
			_root["P" + pageNum]["L" + i]._y = yLevel;
			_root["P" + pageNum]["L" + i]._x = 29;
			y = myStringArr[i];
			if((y==' ')&&(_root["P" + pageNum]["L" + i]._x > 450)){
				yLevel += 16;
				_root["P" + pageNum]["L" + i]._y = yLevel;
				_root["P" + pageNum]["L" + i]._x = xAlign;
			}
			
		}
		//++i;
			/*
    	if(i==myStringArr.length){
			clearInterval(drawTileID);
			}*/
	++letterDepth;
	
	}//END FOR LOOP THRU LETTERS
	
	myStringArr = [];
	//_root.sideNoteBox.P1._x -= 7;
	//_root.sideNoteBox._rotation = 350 + random(15);
	//_root.sideNoteBox._alpha = 80;
	//_root.sideNoteBox.P1._alpha = 95;
	
	//_root.sideNoteBox._height = yLevel + 30;
}//END PARAGRAPH FORMATTING


		//REMOVAL OF FACE VALUE MULTIPLIERS ONCE COVERED FUNCTION (EX: Double Letter Score, Triple Word Score)
//Change_Multiplier_Coords
function REMOVE_MULT(col,row){
	col = colA;
	row = rowB;
	
}

/*	
_root.T1.onRollOver = function(){

	_root.name_txt.text = this.name;
	_root.T1._name = "_root.G1";
	//++num;
	updateAfterEvent();
	
}
_root.T1.onRollOut = function(){

	_root.name_txt.text = "";
	updateAfterEvent();
	
}
_root.T1.onPress = function(){
	this.startDrag();
	updateAfterEvent();
	
}
_root.T1.onRelease = function(){
	stopDrag();
	scoreTile(1);
	
}
//_root.T2.onRollOver = function(){
	//_root.name_txt.text = this._name;
	//updateAfterEvent();
	
//}
_root.T2.onPress = function(){
	this.startDrag();
	updateAfterEvent();
}
_root.T2.onRelease = function(){
	stopDrag();
	scoreTile(2);
	
}
_root.T3.onPress = function(){
	this.startDrag();
		updateAfterEvent();
	
}
_root.T3.onRelease = function(){
	stopDrag();
	scoreTile(3);
	
}

_root.T4.onPress = function(){
	this.startDrag();
		updateAfterEvent();
	
}
_root.T4.onRelease = function(){
	stopDrag();
	scoreTile(4);
	
}

_root.T5.onPress = function(){
	this.startDrag();
		updateAfterEvent();
	
}
_root.T5.onRelease = function(){
	stopDrag();
	scoreTile(5);
}
_root.T6.onPress = function(){
	this.startDrag();
		updateAfterEvent();
	
}
_root.T6.onRelease = function(){
	stopDrag();
	scoreTile(6);
}

_root.T7.onPress = function(){
	this.startDrag();
		updateAfterEvent();
	
}
_root.T7.onRelease = function(){
	stopDrag();
	scoreTile(7);
	
}

_root.T8.onPress = function(){
	this.startDrag();
		updateAfterEvent();
	
}
_root.T8.onRelease = function(){
	stopDrag();
	scoreTile(8);
}

_root.T9.onPress = function(){
	this.startDrag();
		updateAfterEvent();
	
}
_root.T9.onRelease = function(){
	stopDrag();
	scoreTile(9);
}

_root.T10.onPress = function(){
	this.startDrag();
		updateAfterEvent();
	
}
_root.T10.onRelease = function(){
	stopDrag();
	scoreTile(10);
}
_root.T11.onPress = function(){
	this.startDrag();
		updateAfterEvent();
	
}
_root.T11.onRelease = function(){
	stopDrag();
	scoreTile(11);
}

_root.T12.onPress = function(){
	this.startDrag();
		updateAfterEvent();
	
}
_root.T12.onRelease = function(){
	stopDrag();
	scoreTile(12);
}
_root.T13.onPress = function(){
	this.startDrag();
		updateAfterEvent();
	
}
_root.T13.onRelease = function(){
	stopDrag();
	scoreTile(13);
}

_root.T14.onPress = function(){
	this.startDrag();
	
}
_root.T14.onRelease = function(){
	stopDrag();
	scoreTile(14);
}

_root.T15.onPress = function(){
	this.startDrag();
	
}
_root.T15.onRelease = function(){
	stopDrag();
	scoreTile(15);
}
_root.T16.onPress = function(){
	this.startDrag();
	
}
_root.T16.onRelease = function(){
	stopDrag();
	scoreTile(16);
}

_root.T17.onPress = function(){
	this.startDrag();
	
}
_root.T17.onRelease = function(){
	stopDrag();
	scoreTile(17);
}

_root.T18.onPress = function(){
	this.startDrag();
	
}
_root.T18.onRelease = function(){
	stopDrag();
	scoreTile(18);
}

_root.T19.onPress = function(){
	this.startDrag();
	
}
_root.T19.onRelease = function(){
	stopDrag();
	scoreTile(19);
}

_root.T20.onPress = function(){
	this.startDrag();
	
}
_root.T20.onRelease = function(){
	stopDrag();
	scoreTile(20);
}
_root.T21.onPress = function(){
	this.startDrag();
	
}
_root.T21.onRelease = function(){
	stopDrag();
	scoreTile(21);
}

_root.T22.onPress = function(){
	this.startDrag();
	
}
_root.T22.onRelease = function(){
	stopDrag();
	scoreTile(22);
}

_root.T23.onPress = function(){
	this.startDrag();
	
}
_root.T23.onRelease = function(){
	stopDrag();
	scoreTile(23);
}

_root.T24.onPress = function(){
	this.startDrag();
	
}
_root.T24.onRelease = function(){
	stopDrag();
	scoreTile(24);
}

_root.T25.onPress = function(){
	this.startDrag();
	
}
_root.T25.onRelease = function(){
	stopDrag();
	scoreTile(25);
}
_root.T26.onPress = function(){
	this.startDrag();
	
}
_root.T26.onRelease = function(){
	stopDrag();
	scoreTile(26);
}

_root.T27.onPress = function(){
	this.startDrag();
	
}
_root.T27.onRelease = function(){
	stopDrag();
	scoreTile(27);
}

_root.T28.onPress = function(){
	this.startDrag();
	
}
_root.T28.onRelease = function(){
	stopDrag();
	scoreTile(28);
}

_root.T29.onPress = function(){
	this.startDrag();
	
}
_root.T29.onRelease = function(){
	stopDrag();
	scoreTile(29);
}

_root.T30.onPress = function(){
	this.startDrag();
	
}
_root.T30.onRelease = function(){
	stopDrag();
	scoreTile(30);
}
_root.T31.onPress = function(){
	this.startDrag();
	
}
_root.T31.onRelease = function(){
	stopDrag();
	scoreTile(31);
}

_root.T32.onPress = function(){
	this.startDrag();
	
}
_root.T32.onRelease = function(){
	stopDrag();
	scoreTile(32);
}

_root.T33.onPress = function(){
	this.startDrag();
	
}
_root.T33.onRelease = function(){
	stopDrag();
	scoreTile(33);
}

_root.T34.onPress = function(){
	this.startDrag();
	
}
_root.T34.onRelease = function(){
	stopDrag();
	scoreTile(34);
}

_root.T35.onPress = function(){
	this.startDrag();
	
}
_root.T35.onRelease = function(){
	stopDrag();
	scoreTile(35);
}
_root.T36.onPress = function(){
	this.startDrag();
	
}
_root.T36.onRelease = function(){
	stopDrag();
	scoreTile(36);
}

_root.T37.onPress = function(){
	this.startDrag();
	
}
_root.T37.onRelease = function(){
	stopDrag();
	scoreTile(37);
}

_root.T38.onPress = function(){
	this.startDrag();
	
}
_root.T38.onRelease = function(){
	stopDrag();
	scoreTile(38);
}

_root.T39.onPress = function(){
	this.startDrag();
	
}
_root.T39.onRelease = function(){
	stopDrag();
	scoreTile(39);
}

_root.T40.onPress = function(){
	this.startDrag();
	
}
_root.T40.onRelease = function(){
	stopDrag();
	scoreTile(40);
}
_root.T41.onPress = function(){
	this.startDrag();
	
}
_root.T41.onRelease = function(){
	stopDrag();
	scoreTile(41);
}

_root.T42.onPress = function(){
	this.startDrag();
	
}
_root.T42.onRelease = function(){
	stopDrag();
	scoreTile(42);
}

_root.T43.onPress = function(){
	this.startDrag();
	
}
_root.T43.onRelease = function(){
	stopDrag();
	scoreTile(43);
}

_root.T44.onPress = function(){
	this.startDrag();
	
}
_root.T44.onRelease = function(){
	stopDrag();
	scoreTile(44);
}

_root.T45.onPress = function(){
	this.startDrag();
	
}
_root.T45.onRelease = function(){
	stopDrag();
	scoreTile(45);
}
_root.T46.onPress = function(){
	this.startDrag();
	
}
_root.T46.onRelease = function(){
	stopDrag();
	scoreTile(46);
}

_root.T47.onPress = function(){
	this.startDrag();
	
}
_root.T47.onRelease = function(){
	stopDrag();
	scoreTile(47);
}

_root.T48.onPress = function(){
	this.startDrag();
	
}
_root.T48.onRelease = function(){
	stopDrag();
	scoreTile(48);
}

_root.T49.onPress = function(){
	this.startDrag();
	
}
_root.T49.onRelease = function(){
	stopDrag();
	scoreTile(49);
}

_root.T50.onPress = function(){
	this.startDrag();
	
}
_root.T50.onRelease = function(){
	stopDrag();
	scoreTile(50);
}
_root.T51.onPress = function(){
	this.startDrag();
	
}
_root.T51.onRelease = function(){
	stopDrag();
	scoreTile(51);
}
_root.T52.onPress = function(){
	this.startDrag();
	}
_root.T52.onRelease = function(){
	stopDrag();
	scoreTile(52);
}
_root.T53.onPress = function(){
	this.startDrag();
	}
_root.T53.onRelease = function(){
	stopDrag();
	scoreTile(53);
}
_root.T54.onPress = function(){
	this.startDrag();
	}
_root.T54.onRelease = function(){
	stopDrag();
	scoreTile(54);
}
_root.T55.onPress = function(){
	this.startDrag();
	}
_root.T55.onRelease = function(){
	stopDrag();
	scoreTile(55);
}
_root.T56.onPress = function(){
	this.startDrag();
	}
_root.T56.onRelease = function(){
	stopDrag();
	scoreTile(56);
}
_root.T57.onPress = function(){
	this.startDrag();
	}
_root.T57.onRelease = function(){
	stopDrag();
	scoreTile(57);
}
_root.T58.onPress = function(){
	this.startDrag();
	}
_root.T58.onRelease = function(){
	stopDrag();
	scoreTile(58);
}
_root.T59.onPress = function(){
	this.startDrag();
	
}
_root.T59.onRelease = function(){
	stopDrag();
	scoreTile(59);
}
_root.T60.onPress = function(){
	this.startDrag();
	
}
_root.T60.onRelease = function(){
	stopDrag();
	scoreTile(60);
}
_root.T61.onPress = function(){
	this.startDrag();
	}
_root.T61.onRelease = function(){
	stopDrag();
	scoreTile(61);
}
_root.T62.onPress = function(){
	this.startDrag();
	}
_root.T62.onRelease = function(){
	stopDrag();
	scoreTile(62);
}
_root.T63.onPress = function(){
	this.startDrag();
	}
_root.T63.onRelease = function(){
	stopDrag();
	scoreTile(63);
}
_root.T64.onPress = function(){
	this.startDrag();
	}
_root.T64.onRelease = function(){
	stopDrag();
	scoreTile(64);
}
_root.T65.onPress = function(){
	this.startDrag();
	}
_root.T65.onRelease = function(){
	stopDrag();
	scoreTile(65);
}
_root.T66.onPress = function(){
	this.startDrag();
	}
_root.T66.onRelease = function(){
	stopDrag();
	scoreTile(66);
}
_root.T67.onPress = function(){
	this.startDrag();
	}
_root.T67.onRelease = function(){
	stopDrag();
	scoreTile(67);
}
_root.T68.onPress = function(){
	this.startDrag();
	}
_root.T68.onRelease = function(){
	stopDrag();
	scoreTile(68);
}
_root.T69.onPress = function(){
	this.startDrag();
	}
_root.T69.onRelease = function(){
	stopDrag();
	scoreTile(69);
}
_root.T70.onPress = function(){
	this.startDrag();
	}
_root.T70.onRelease = function(){
	stopDrag();
	scoreTile(70);
}
_root.T71.onPress = function(){
	this.startDrag();
	}
_root.T71.onRelease = function(){
	stopDrag();
	scoreTile(71);
}
_root.T72.onPress = function(){
	this.startDrag();
	}
_root.T72.onRelease = function(){
	stopDrag();
	scoreTile(72);
}
_root.T73.onPress = function(){
	this.startDrag();
	}
_root.T73.onRelease = function(){
	stopDrag();
	scoreTile(73);
}
_root.T74.onPress = function(){
	this.startDrag();
	}
_root.T74.onRelease = function(){
	stopDrag();
	scoreTile(74);
}
_root.T75.onPress = function(){
	this.startDrag();
	}
_root.T75.onRelease = function(){
	stopDrag();
	scoreTile(75);
}
_root.T76.onPress = function(){
	this.startDrag();
	}
_root.T76.onRelease = function(){
	stopDrag();
	scoreTile(76);
}
_root.T77.onPress = function(){
	this.startDrag();
	}
_root.T77.onRelease = function(){
	stopDrag();
	scoreTile(77);
}
_root.T78.onPress = function(){
	this.startDrag();
	}
_root.T78.onRelease = function(){
	stopDrag();
	scoreTile(78);
}
_root.T79.onPress = function(){
	this.startDrag();
	}
_root.T79.onRelease = function(){
	stopDrag();
	scoreTile(79);
}
_root.T80.onPress = function(){
	this.startDrag();
	}
_root.T80.onRelease = function(){
	stopDrag();
	scoreTile(80);
}
_root.T81.onPress = function(){
	this.startDrag();
	}
_root.T81.onRelease = function(){
	stopDrag();
	scoreTile(81);
}
_root.T82.onPress = function(){
	this.startDrag();
	}
_root.T82.onRelease = function(){
	stopDrag();
	scoreTile(82);
}
_root.T83.onPress = function(){
	this.startDrag();
	}
_root.T83.onRelease = function(){
	stopDrag();
	scoreTile(83);
}
_root.T84.onPress = function(){
	this.startDrag();
	}
_root.T84.onRelease = function(){
	stopDrag();
	scoreTile(84);
}
_root.T85.onPress = function(){
	this.startDrag();
	}
_root.T85.onRelease = function(){
	stopDrag();
	scoreTile(85);
}
_root.T86.onPress = function(){
	this.startDrag();
	}
_root.T86.onRelease = function(){
	stopDrag();
	scoreTile(86);
}
_root.T87.onPress = function(){
	this.startDrag();
	}
_root.T87.onRelease = function(){
	stopDrag();
	scoreTile(87);
}
_root.T88.onPress = function(){
	this.startDrag();
	}
_root.T88.onRelease = function(){
	stopDrag();
	scoreTile(88);
}
_root.T89.onPress = function(){
	this.startDrag();
	}
_root.T89.onRelease = function(){
	stopDrag();
	scoreTile(89);
}
_root.T90.onPress = function(){
	this.startDrag();
	}
_root.T90.onRelease = function(){
	stopDrag();
	scoreTile(90);
}
_root.T91.onPress = function(){
	this.startDrag();
	}
_root.T91.onRelease = function(){
	stopDrag();
	scoreTile(91);
}
_root.T92.onPress = function(){
	this.startDrag();
	}
_root.T92.onRelease = function(){
	stopDrag();
	scoreTile(92);
}
_root.T93.onPress = function(){
	this.startDrag();
	}
_root.T93.onRelease = function(){
	stopDrag();
	scoreTile(93);
}
_root.T94.onPress = function(){
	this.startDrag();
	}
_root.T94.onRelease = function(){
	stopDrag();
	scoreTile(94);
}
_root.T95.onPress = function(){
	this.startDrag();
	}
_root.T95.onRelease = function(){
	stopDrag();
	scoreTile(95);
}
_root.T96.onPress = function(){
	this.startDrag();
	}
_root.T96.onRelease = function(){
	stopDrag();
	scoreTile(96);
}
_root.T97.onPress = function(){
	this.startDrag();
	}
_root.T97.onRelease = function(){
	stopDrag();
	scoreTile(97);
}
_root.T98.onPress = function(){
	this.startDrag();
	}
_root.T98.onRelease = function(){
	stopDrag();
	scoreTile(98);
}
_root.T99.onPress = function(){
	this.startDrag();
	}
_root.T99.onRelease = function(){
	stopDrag();
	scoreTile(99);
}
_root.T100.onPress = function(){
	this.startDrag();
	}
_root.T100.onRelease = function(){
	stopDrag();
	scoreTile(100);
	}*/

