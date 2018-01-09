import ddf.minim.*;

Minim minim;
int speakerTimer;
AudioPlayer bgm;
AudioPlayer speaker;
AudioPlayer v001, v101, v102, v103, v104, v201, v202, v301, v302, v303, v304, v401, v402;

PImage bg, bg00, bg01, bg02, bg03, bg04;
PImage s1, s2, s3, s001, s002, s003, s004, s005, s101, s201, s202, s203, s301, s302, s401;

int background = 0;
final int background00 = 0, background01 = 1, background02 = 2, background03 = 3, background04 = 4;
int counter = 1;
int a=0;

int scene0 = 0, scene1 = 0, scene2 = 0, scene3 = 0, scene4 = 0;
final int scene001 = 1, scene002 = 2, scene003 = 3; 
final int scene101 = 1, scene102 = 2, scene103 = 3, scene104 = 4;
final int scene201 = 1, scene202 = 2;
final int scene301 = 1, scene302 = 2, scene303 = 3, scene304 = 4;
final int scene401 = 1, scene402 = 2;
boolean pic1 = false, pic2 = false, pic3 = false;

void setup(){
  frameRate(60);
  size(800, 600);
  bg00 = loadImage("img/bg00.png");
  bg01 = loadImage("img/bg01.png");
  bg02 = loadImage("img/bg02.png");
  bg03 = loadImage("img/bg03.png");
  bg04 = loadImage("img/bg04.png");
  
  s001 = loadImage("img/scene001.png");
  s002 = loadImage("img/scene002.png");
  s003 = loadImage("img/scene003.png");
  s004 = loadImage("img/scene004.png");
  s005 = loadImage("img/scene005.png");
  s101 = loadImage("img/scene101.png");
  s201 = loadImage("img/scene201.png");
  s202 = loadImage("img/scene202.png");
  s203 = loadImage("img/scene203.png");
  s301 = loadImage("img/scene301.png");
  s302 = loadImage("img/scene302.png");
  s401 = loadImage("img/scene401.png");
  
  
  minim = new Minim(this);
  bgm = minim.loadFile("music/bgm.mp3",1024);
  bgm.play();
  bgm.loop();
  
  v001 = minim.loadFile("music/v001.mp3", 128);
  v101 = minim.loadFile("music/v101.mp3", 128);
  v102 = minim.loadFile("music/v102.mp3", 128);
  v103 = minim.loadFile("music/v103.mp3", 128);
  v104 = minim.loadFile("music/v104.mp3", 128);
  v201 = minim.loadFile("music/v201.mp3", 128);
  v202 = minim.loadFile("music/v202.mp3", 128);
  v301 = minim.loadFile("music/v301.mp3", 128);
  v302 = minim.loadFile("music/v302.mp3", 128);
  v303 = minim.loadFile("music/v303.mp3", 128);
  v304 = minim.loadFile("music/v304.mp3", 128);
  v401 = minim.loadFile("music/v401.mp3", 128);
  v402 = minim.loadFile("music/v402.mp3", 128);
}

void draw(){
  if(counter == 1){
    background = background00;
    scene0 = scene001;
    if(mousePressed){
      if(mouseX >= 280 && mouseY >= 470 && mouseX <= 413 && mouseY <= 530){
        scene0 = scene001;
        counter ++;
        mousePressed = false;
      }
    }
  }else if(counter == 2){
    scene0 = scene002;
    speaker = v001;
    if(speakerTimer == 0){
      speaker.play();
    }else if(speakerTimer == 960){
      speaker.pause();
      speaker.rewind();
      scene0 = scene003;
      counter ++;
      speakerTimer = 0;
    }
    speakerTimer++;
    if(speakerTimer >= 720){
      scene0 = scene003;
    }
    
    
  }else if(counter == 3){
    background = background01;
    scene1 = scene101;
    speaker = v101;
    if(speakerTimer == 1){
      speaker.play();
    }else if(speakerTimer == 690){
      speaker.pause();
      speaker.rewind();
      counter ++;
      speakerTimer = 0;
    }
    speakerTimer++;
    
  }else if(counter == 4){
    scene1 = scene102;
    speaker = v102;
    if(speakerTimer == 1){
      speaker.play();
    }else if(speakerTimer == 840){
      speaker.pause();
      speaker.rewind();
      counter ++;
      speakerTimer = 0;
    }
    speakerTimer++;
    
  }else if(counter == 5){
    scene1 = scene103;
    speaker = v103;
    if(speakerTimer == 1){
      speaker.play();
    }else if(speakerTimer == 320){
      speaker.pause();
      speaker.rewind();
      counter ++;
      speakerTimer = 0;
    }
    speakerTimer++;
    
  }else if(counter == 6){
    scene1 = scene104;
    speaker = v104;
    if(speakerTimer == 1){
      speaker.play();
    }else if(speakerTimer == 450){
      speaker.pause();
      speaker.rewind();
      counter ++;
      speakerTimer = 0;
    }
    speakerTimer++;
    
  }else if(counter == 7){
    background = background02;
    scene2 = scene201;
    speaker = v201;
    if(speakerTimer == 1){
      speaker.play();
    }else if(speakerTimer == 580){
      speaker.pause();
      speaker.rewind();
      counter ++;
      speakerTimer = 0;
    }
    speakerTimer++;
    
  }else if(counter == 8){
    scene2 = scene202;
    speaker = v202;
    if(speakerTimer == 1){
      speaker.play();
    }else if(speakerTimer == 520){
      speaker.pause();
      speaker.rewind();
      counter ++;
      speakerTimer = 0;
    }
    speakerTimer++;
    
  }else if(counter == 9){
    background = background03;
    scene3 = scene301;
    speaker = v301;
    if(speakerTimer == 1){
      speaker.play();
    }else if(speakerTimer == 720){
      speaker.pause();
      speaker.rewind();
      counter ++;
      speakerTimer = 0;
    }
    speakerTimer++;
    
  }else if(counter == 10){
    scene3 = scene302;
    speaker = v302;
    if(speakerTimer == 1){
      speaker.play();
    }else if(speakerTimer ==450){
      speaker.pause();
      speaker.rewind();
      counter ++;
      speakerTimer = 0;
    }
    speakerTimer++;
    
  }else if(counter == 11){
    background = background03;
    scene3 = scene303;
    speaker = v303;
    if(speakerTimer == 1){
      speaker.play();
    }else if(speakerTimer == 450){
      speaker.pause();
      speaker.rewind();
      counter ++;
      speakerTimer = 0;
    }
    speakerTimer++;
    
  }else if(counter == 12){
    background = background03;
    scene3 = scene304;
    speaker = v304;
    if(speakerTimer == 1){
      speaker.play();
    }else if(speakerTimer == 690){
      speaker.pause();
      speaker.rewind();
      counter ++;
      speakerTimer = 0;
    }
    speakerTimer++;
    

  }else if(counter == 13){
    background = background04;
    scene4 = scene401;
    speaker = v401;
    if(speakerTimer == 1){
      speaker.play();
    }else if(speakerTimer == 960){
      speaker.pause();
      speaker.rewind();
      counter ++;
      speakerTimer = 0;
    }
    speakerTimer++;
    
    }else if(counter == 14){
    scene4 = scene402;
    speaker = v402;
    if(speakerTimer == 1){
      speaker.play();
    }else if(speakerTimer == 200){
      speaker.pause();
      speaker.rewind();
      counter ++;
      speakerTimer = 0;
    }
    speakerTimer++;
  }
  
  switch(background){
    case background00:
      bg = bg00;
      switch(scene0){
        case scene001:
        pic1 = true;
        pic2 = true;
        s1 = s001;
        if(mouseX >= 280 && mouseY >= 470 && mouseX <= 413 && mouseY <= 530){
          s2 = s005;
        }else{
          s2 = s004;
        }
        break;
        
        case scene002:
        pic2 = false;
        s1 = s002;
        break;
        
        case scene003:
        pic2 = true;
        s2 = s003;
        break;
      }
      break;
      
    case background01:
      bg = bg01;
      pic2 = false;
      switch(scene1){
        case scene101:
        pic1 = true;
        s1 = s101;
        break;
        
        case scene102:
        s1 = s101;
        break;
        
        case scene103:
        s1 = s101;
        break;
        
        case scene104:
        s1 = s101;
        break;
      }
      break;
    
    case background02:
      bg = bg02;
      switch(scene2){
        case scene201:
        s1 = s201;
        break;
        
        case scene202:
        pic2 = true;
        s2 = s202;
        pic3 = true;
        s3 = s203;
        break;
      }
      break;

    case background03:
      bg = bg03;
      pic3 = false;
      switch(scene3){
        case scene301:
        pic2 = false;
        s1 = s301;
        break;
        
        case scene302:
        pic2 = true;
        s1 = s301;
        s2 = s302;
        break;
        
        case scene303:
        s1 = s301;
        s2 = s302;
        break;
        
        case scene304:
        s1 = s301;
        s2 = s302;
        break;
      }
      break;
      
    case background04:
      bg = bg04;
      pic2 = false;
      switch(scene4){
        case scene401:
        s1 = s401;
        break;
        
        case scene402:
        s1 = s401;
        break;
      }
      break;
    
  }
  println(speakerTimer);
  image(bg, 0, 0, 800, 600);
  if(pic1){
    image(s1, 0, 0, 800, 600);
  }
  if(pic2){
    image(s2, 0, 0, 800, 600);
  }
  if(pic3){
    image(s3, 0, 0, 800, 600);
  }
 
}
