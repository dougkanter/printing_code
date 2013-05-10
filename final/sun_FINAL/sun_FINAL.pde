import geomerative.*;
import org.apache.batik.svggen.font.table.*;
import org.apache.batik.svggen.font.*;
import processing.pdf.*;
import org.json.*;

ArrayList<DexcomObject> dexcomList = new ArrayList();
ArrayList<ArrayList> dexcomListApril = new ArrayList();

int totalApril=0;

JSON parsed;
int pbg = 100;
int totalCount =0;

void setup(){
  size(500,700, PDF, "October.pdf");
  RG.init(this);
  background(10);
  importJSON();
  gatherApril();
  renderApril();
}


void draw(){
  exit();
}


void importJSON(){
  //import everything
  String json [] = loadStrings("recordsDexcom2.json");
  //add a comma after each entry
  String giantBlob= join(json, ",");
  //add brackets at the beginning and end
  String validJSON = "[" + giantBlob + "]";
  //parse the total file into individual entries
  
  parsed = JSON.parse(validJSON);
  int totalData = parsed.length();
  
  for (int i=0; i < totalData; i++) {
    JSON currentObj = parsed.getObject(i);

    try {
      DexcomObject dO = new DexcomObject();
      dO.type = currentObj.getString("type");

      //get time values
      JSON time_struct = currentObj.getObject("time_struct");    
      dO.year = time_struct.getInt("year");
      dO.month = time_struct.getInt("month");
      dO.day = time_struct.getInt("day");
      dO.hour = time_struct.getInt("hour");
      dO.minute = time_struct.getInt("minute");
      dO.second = time_struct.getInt("second");
      
      dO.timeInMinutes =  (dO.hour * 60) + dO.minute;      

      //get type
      dO.type = currentObj.getString("type");
      
      //get value
      JSON value_field = currentObj.getObject("fields");
      String bg_field = value_field.getString("blood_glucose");
      dO.value = int(bg_field);
      
      //add to ArrayList dexcomList
      dexcomList.add(dO);
    }
    catch (Exception e){
    }
}
}  


void gatherApril()
{
  int curDay = 0;
  for(DexcomObject dO:dexcomList)
  {
     // if the month is april
     if(dO.month == 10)
     {  
       // if this is a new day
       if(dO.day > curDay)
       {
         dexcomListApril.add( new ArrayList<DexcomObject>() );
         curDay = dO.day;
       }
       dexcomListApril.get(dexcomListApril.size() - 1).add(dO);
     }
  }
}



void renderApril(){
   translate(width/2,height/2 - 65);
  //loop through all the April readings
  // loop through all the day arraylists
  for(int i = 0; i < dexcomListApril.size(); i++)
  {
//   println("The day changed to " + (i + 1));  
   noStroke();
   fill(255, 20);
  rotate(radians(-90));  
     RShape graph = new RShape();
   
    // loop through every item in the day arraylist
    for(int j = 0; j < dexcomListApril.get(i).size(); j++)
    {
      DexcomObject curObject = (DexcomObject) dexcomListApril.get(i).get(j);
       println(curObject.value);      

      // time is the X pos
      //minutes in a day
      int totatTime = 1440;
      //map the minute relative to the time in the day
      float mappedTime = map(curObject.timeInMinutes, 0, totatTime, 0, width);
      float currDeg = map(curObject.timeInMinutes, 0, totatTime, 0, 360);
      
      float x = mappedTime;
      
      //convert from x, y to circle 
      float xCircle = cos(radians(currDeg)) * (60 + (curObject.value / 3));
      float yCircle = sin(radians(currDeg)) * (60 + (curObject.value / 3));     
      
      if(j == 0) graph.addMoveTo(xCircle, yCircle);
      else graph.addLineTo(xCircle, yCircle);
    }
    
    //graph.draw();    
    RShape innerGraph = new RShape();
    for(int j = 0; j < 360; j+= 10)
    {
      float xCircle = cos(radians(j)) *  100;
      float yCircle = sin(radians(j)) *  100;     
      if(j == 0) graph.addMoveTo(xCircle, yCircle);
      else graph.addLineTo(xCircle, yCircle);
    }
    innerGraph.addClose();
    //innerGraph.draw();
    RShape result = graph.xor(innerGraph);
    result.draw();
  }
}
