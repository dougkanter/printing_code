import processing.pdf.*;
import org.json.*;

ArrayList<DexcomObject> dexcomList = new ArrayList();
ArrayList<ArrayList> dexcomListApril = new ArrayList();
int totalApril=0;


JSON parsed;
int pbg = 100;
int totalCount =0;

void setup(){
  size(1000,1300, PDF, "geneticsPurpleAugSept.pdf");
  background(121,79,173);
  importJSON();
  gatherApril();
  genetics();
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
     if(dO.month == 8 || dO.month == 9)
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

void genetics(){
  translate(0,20);
  noStroke();
  
  // loop through all the day arraylists
  for(int i = 0; i < dexcomListApril.size(); i++)
  {
    for(int j = 0; j < dexcomListApril.get(i).size(); j++) {
      DexcomObject curObject = (DexcomObject) dexcomListApril.get(i).get(j);
      // draw something for every reading

      int totatTime = 1440;

      //map the minute relative to the time in the day
      float mappedTime = map(curObject.timeInMinutes, 0, totatTime, 50, width-50);
      float x = mappedTime;

      float y = (((curObject.month - 8)*30) + curObject.day) * 20 +2;
      float r = sqrt(curObject.value);
      float opacity = curObject.value;

      //in range readings
      if(curObject.value >= 80 && curObject.value<=140){
      noFill();
//      rect(x,y,10,20,5,5,5,5);
      ellipse(x,y,r,r);
      
      //low blood sugar
      } else if (curObject.value < 80){
        
      float lbsOpacity = map(curObject.value,40,79,100,5);
      float lbsSize = map(curObject.value,40,79,22,6);
      fill (225,lbsOpacity);      
      ellipse(x,y,lbsSize,lbsSize);
       
       } else if (curObject.value > 140){
      float hbsOpacity = map(curObject.value,141,300,5,100);
      float hbsSize = map(curObject.value,141,300,6,22);         
      fill (0,hbsOpacity);
      ellipse(x,y,hbsSize,hbsSize);
      }          
    }
  }
}

