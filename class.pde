class readfile
{
  int num;
  int[] id;
  String[] username;
  int[] scoreT;
  int rec=5;//number of records
  int[] bestid=new int[rec];
  String[] bestusername=new String[rec];
  int[] bestscoreT=new int[rec];
  
  readfile()
  {
    num=table.getRowCount();
    id=new int[num];
    username=new String[num];
    scoreT=new int[num];
    
  }
  
  void getdata()
  {
     for (int i=0;i<num;i++)
    {
      TableRow row=table.getRow(i);
      id[i]=row.getInt("id");
      username[i]=row.getString("username");
      scoreT[i]=row.getInt("score");
    }
  }
  
  
  
  void best()
  {
    for(int t=0;t<bestscoreT.length;t++)
      {
        bestscoreT[t]= Integer.MIN_VALUE;
      }
    
    for(int i=0;i<scoreT.length;i++)
    {
      if(scoreT[i]>bestscoreT[0])
      {
        for(int n=1; n<rec; n++)
        {
          bestscoreT[rec-n]=bestscoreT[rec-(n+1)];
        }
        bestscoreT[0]=scoreT[i];
        
        for(int n=1; n<rec; n++)
        {
          bestusername[rec-n]=bestusername[rec-(n+1)];
        }
        bestusername[0]=username[i];
        
        for(int n=1; n<rec; n++)
        {
          bestid[rec-n]=bestid[rec-(n+1)];
        }
        bestid[0]=id[i]; 
      }else if(scoreT[i]>bestscoreT[1])
      {
        for(int n=1; n<rec-1; n++)
        {
          bestscoreT[rec-n]=bestscoreT[rec-(n+1)];
        }
        bestscoreT[1]=scoreT[i];
        
        for(int n=1; n<rec-1; n++)
        {
          bestusername[rec-n]=bestusername[rec-(n+1)];
        }
        bestusername[1]=username[i];
        
        for(int n=1; n<rec-1; n++)
        {
          bestid[rec-n]=bestid[rec-(n+1)];
        }
        bestid[1]=id[i]; 
      }else if(scoreT[i]>bestscoreT[2])
      {
        for(int n=1; n<rec-2; n++)
        {
          bestscoreT[rec-n]=bestscoreT[rec-(n+1)];
        }
        bestscoreT[2]=scoreT[i];
        
        for(int n=1; n<rec-2; n++)
        {
          bestusername[rec-n]=bestusername[rec-(n+1)];
        }
        bestusername[2]=username[i];
        
        for(int n=1; n<rec-2; n++)
        {
          bestid[rec-n]=bestid[rec-(n+1)];
        }
        bestid[2]=id[i]; 
      }else if(scoreT[i]>bestscoreT[3])
      {
        for(int n=1; n<rec-3; n++)
        {
          bestscoreT[rec-n]=bestscoreT[rec-(n+1)];
        }
        bestscoreT[3]=scoreT[i];
        
        for(int n=1; n<rec-3; n++)
        {
          bestusername[rec-n]=bestusername[rec-(n+1)];
        }
        bestusername[3]=username[i];
        
        for(int n=1; n<rec-3; n++)
        {
          bestid[rec-n]=bestid[rec-(n+1)];
        }
        bestid[3]=id[i]; 
      }else if(scoreT[i]>bestscoreT[4])
      {
        for(int n=1; n<rec-4; n++)
        {
          bestscoreT[rec-n]=bestscoreT[rec-(n+1)];
        }
        bestscoreT[4]=scoreT[i];
        
        for(int n=1; n<rec-4; n++)
        {
          bestusername[rec-n]=bestusername[rec-(n+1)];
        }
        bestusername[4]=username[i];
        
        for(int n=1; n<rec-1; n++)
        {
          bestid[rec-4]=bestid[rec-(n+1)];
        }
        bestid[4]=id[i]; 
      }    
    }
    
    
   }




  void display()
  {
    boolean onTheBoard=false;
    textSize(70);
    textAlign(CENTER);
    fill(255,0,0);
    text("LEADERBOARD",width/2,height/6);
    textSize(50);
    
    text(table.getRowCount()+" people played this game", width/2, height/5+20);
    
    
    for (int i=0;i<rec;i++)
    {
      fill(255,0,0);
      if(bestid[i]==user_id)
      {
        fill(0,0,255);
        onTheBoard=true;
      }
      text(bestusername[i]+"......"+bestscoreT[i],width/2,height/3+50*i);
    }
    if(!onTheBoard)
    {
      fill(255,0,0);
      text("your score is: "+score, width/2, height/3+50*7);
    }
  }

}
