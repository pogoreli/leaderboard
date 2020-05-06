PImage background;//background image
Table table;
readfile rf;

int user_id=3;
int score=243;
  
  

void setup()
{
 size(800,800);
  background=loadImage("bvf.jpg"); 
  table = loadTable("leaderboard.csv", "header");
  rf=new readfile();
}



void draw()
{
  back();
  rf.getdata();
  rf.best();
  rf.display();
}

void back()//displaying the background
{
  background(200);
  tint(200,200,200);
  image(background,0,height/5,width,height); 
}
