<div id="menu">
<div class="preview-includes"><style>
#cssmenu
{
    padding-left:5%;
    padding-right:5%;
}
#cssmenu ul,
#cssmenu ul li,
#cssmenu ul li a,
#cssmenu #menu-button {
  margin: 0;
  padding: 0;
  border: 0;
  list-style: none;
  line-height: 1;
  display: block;
  position: relative;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
#cssmenu:after,
#cssmenu > ul:after {
  content: ".";
  display: block;
  clear: both;
  visibility: hidden;
  line-height: 0;
  height: 0;
}
#cssmenu #menu-button {
  display: none;
}
#cssmenu {
  z-index: 999;
  width: auto;
  font-family: 'Open Sans', Helvetica, sans-serif;
  background: #424242;
  background: -moz-linear-gradient(top, #515151 0%, #2e2e2e 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #515151), color-stop(100%, #2e2e2e));
  background: -webkit-linear-gradient(top, #515151 0%, #2e2e2e 100%);
  background: -o-linear-gradient(top, #515151 0%, #2e2e2e 100%);
  background: -ms-linear-gradient(top, #515151 0%, #2e2e2e 100%);
  background: linear-gradient(to bottom, #515151 0%, #2e2e2e 100%);
}
#cssmenu > ul {
  box-shadow: inset 0 -3px 0 rgba(0, 0, 0, 0.05);
}
#cssmenu.align-right > ul > li {
  float: right;
}
#cssmenu > ul > li {
  float: left;
  display: inline-block;
}
#cssmenu.align-center > ul {
  float: none;
  text-align: center;
  font-size: 0;
}
#cssmenu.align-center > ul > li {
  float: none;
}
#cssmenu.align-center ul ul {
  text-align: left;
}
#cssmenu > ul > li > a {
  padding: 11px 10px 8px 14px;
  border-right: 1px solid rgba(80, 80, 80, 0.12);
  text-decoration: none;
  font-size: 21px;
  /*font-weight: 600;*/
  color: #ffffff;
 <!-- text-transform: uppercase;-->
  letter-spacing: 2px;
}
#cssmenu > ul > li:hover > a,
#cssmenu > ul > li > a:hover,
#cssmenu > ul > li.active > a {
  color: #ffffff;
  background: #CB4335;
}
#cssmenu > ul > li.activea > a {
  color: #ffffff;
  background: #31B404;
}
#cssmenu > ul > li.has-sub > a {
  padding-right: 15px;
}
 /*#cssmenu > ul > li.has-sub > a::after {
  content: "";
  position: absolute;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-top-color: #ffffff;
  right: 5px;
  top: 18px;
} */
#cssmenu > ul > li.has-sub.active > a::after,
#cssmenu > ul > li.has-sub:hover > a {
  border-top-color: #ffffff;
}
#cssmenu ul ul {
  position: absolute;
  left: -9999px;
  top: 60px;
  z-index: 9999;
  padding-top: 5px;
  font-size: 18px;
  opacity: 0;
  -webkit-transition: top 0.2s ease, opacity 0.2s ease-in;
  -moz-transition: top 0.2s ease, opacity 0.2s ease-in;
  -ms-transition: top 0.2s ease, opacity 0.2s ease-in;
  -o-transition: top 0.2s ease, opacity 0.2s ease-in;
  transition: top 0.2s ease, opacity 0.2s ease-in;
}
#cssmenu.align-right ul ul {
  text-align: right;
}
#cssmenu > ul > li > ul::after {
  content: "";
  position: absolute;
  width: 0;
  height: 0;
  border: 5px solid transparent;
  border-bottom-color: #424242;
  top: -4px;
  left: 20px;
}
#cssmenu.align-right > ul > li > ul::after {
  left: auto;
  right: 20px;
}
#cssmenu ul ul ul::after {
  content: "";
  position: absolute;
  width: 0;
  height: 0;
  border: 5px solid transparent;
  border-right-color: #424242;
  top: 11px;
  left: -4px;
}
#cssmenu.align-right ul ul ul::after {
  border-right-color: transparent;
  border-left-color: #424242;
  left: auto;
  right: -4px;
}
#cssmenu > ul > li > ul {
  top: 120px;
}
#cssmenu > ul > li:hover > ul {
  top: 40px;  /* submenu change */
  left: 0;
  opacity: 1;
}
#cssmenu.align-right > ul > li:hover > ul {
  left: auto;
  right: 0;
}
#cssmenu ul ul ul {
  padding-top: 0;
  padding-left: 6px;
}
#cssmenu.align-right ul ul ul {
  padding-right: 6px;
}
#cssmenu ul ul > li:hover > ul {
  left: 180px;
  top: 0;
  opacity: 1;
}
#cssmenu.align-right ul ul > li:hover > ul {
  left: auto;
  right: 100%;
  opacity: 1;
}
#cssmenu ul ul li a {
  text-decoration: none;
  font-weight: 400;
  padding: 6px 20px;
  width: 180px;
  color: #ffffff;
  background: #424242;
  box-shadow: 0 2px 2px rgba(0, 0, 0, 0.1), 1px 1px 1px rgba(0, 0, 0, 0.1), -1px 1px 1px rgba(0, 0, 0, 0.1);
}
#cssmenu ul ul li:hover > a,
#cssmenu ul ul li.active > a {
  color: #ffffff;
}
#cssmenu ul ul li:first-child > a {
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
#cssmenu ul ul li:last-child > a {
  border-bottom-left-radius: 3px;
  border-bottom-right-radius: 3px;
}
#cssmenu > ul > li > ul::after {
  position: absolute;
  display: block;
}
/*
#cssmenu ul ul li.has-sub > a::after {
  content: "";
  position: absolute;
  width: 0;
  height: 0;
  border: 4px solid transparent;
  border-left-color: #ffffff;
  right: 17px;
  top: 14px;
}*/
#cssmenu.align-right ul ul li.has-sub > a::after {
  border-left-color: transparent;
  border-right-color: #ffffff;
  right: auto;
  left: 17px;
}
#cssmenu ul ul li.has-sub.active > a::after,
#cssmenu ul ul li.has-sub:hover > a::after {
  border-left-color: #ffffff;
}
#cssmenu.align-right ul ul li.has-sub.active > a::after,
#cssmenu.align-right ul ul li.has-sub:hover > a::after {
  border-right-color: #ffffff;
  border-left-color: transparent;
}
@media all and (max-width: 800px), only screen and (-webkit-min-device-pixel-ratio: 2) and (max-width: 1024px), only screen and (min--moz-device-pixel-ratio: 2) and (max-width: 1024px), only screen and (-o-min-device-pixel-ratio: 2/1) and (max-width: 1024px), only screen and (min-device-pixel-ratio: 2) and (max-width: 1024px), only screen and (min-resolution: 192dpi) and (max-width: 1024px), only screen and (min-resolution: 2dppx) and (max-width: 1024px) {
  #cssmenu {
    background: #424242;
  }
  #cssmenu > ul {
    display: none;
  }
  #cssmenu > ul.open {
    display: block;
    border-top: 1px solid rgba(0, 0, 0, 0.1);
  }
  #cssmenu.align-right > ul {
    float: none;
  }
  #cssmenu.align-center > ul {
    text-align: left;
  }
  #cssmenu > ul > li,
  #cssmenu.align-right > ul > li {
    float: none;
    display: block;
  }
  #cssmenu > ul > li > a {
    padding: 18px 25px 18px 25px;
    border-right: 0;
  }
  #cssmenu > ul > li:hover > a,
  #cssmenu > ul > li.active > a {
    background: rgba(0, 0, 0, 0.1);
  }
  #cssmenu > ul > li.activet > a {
    background: rgba(0,255,0,0.9);
  }
  #cssmenu #menu-button {
    display: block;
    text-decoration: none;
    font-size: 13px;
    font-weight: 700;
    color: #ffffff;
    padding: 18px 25px 18px 25px;
    text-transform: uppercase;
    letter-spacing: 1px;
   /* background: url('http://cssmenumaker.com/sites/default/files/menu/320/bg.png');*/
    cursor: pointer;
  }
  #cssmenu ul ul,
  #cssmenu ul li:hover > ul,
  #cssmenu > ul > li > ul,
  #cssmenu ul ul ul,
  #cssmenu ul ul li:hover > ul,
  #cssmenu.align-right ul ul,
  #cssmenu.align-right ul li:hover > ul,
  #cssmenu.align-right > ul > li > ul,
  #cssmenu.align-right ul ul ul,
  #cssmenu.align-right ul ul li:hover > ul {
    left: 0;
    right: auto;
    top: auto;
    opacity: 1;
    width: 100%;
    padding: 0;
    position: relative;
    text-align: left;
  }
  #cssmenu ul ul li {
    width: 100%;
  }
  #cssmenu ul ul li a {
    width: 100%;
    box-shadow: none;
    padding-left: 35px;
  }
  #cssmenu ul ul ul li a {
    padding-left: 45px;
  }
  #cssmenu ul ul li:first-child > a,
  #cssmenu ul ul li:last-child > a {
    border-radius: 0;
  }
  #cssmenu #menu-button::after {
    display: block;
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
    content: '';
    position: absolute;
    height: 3px;
    width: 22px;
    border-top: 2px solid #ffffff;
    border-bottom: 2px solid #ffffff;
    right: 25px;
    top: 18px;
  }
  #cssmenu #menu-button::before {
    display: block;
    content: '';
    position: absolute;
    height: 3px;
    width: 22px;
    border-top: 2px solid #ffffff;
    right: 25px;
    top: 28px;
  }
  #cssmenu > ul > li.has-sub > a::after,
  #cssmenu ul ul li.has-sub > a::after {
    display: none;
  }
}
</style></div>

		<div class="row-fluid">
		<div id="cssmenu"><div id="menu-button">Menu</div> 
<!--<ul class="open" id = "ul-menu-button"> -->
<ul class="" id = "ul-menu-button">
   <li class="active"><a href="<%=request.getContextPath()%>/"><div class="Gidugu">&#3129;&#3147;&#3118;&#3149; <br/>
        </div></a>
   <ul>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/70MM"><div class="Gidugu">&#3128;&#3135;&#3112;&#3135;&#3118;&#3134;</div></a></li>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/24HRS"><div class="Gidugu">&#3120;&#3134;&#3100;&#3093;&#3136;&#3119;&#3074;</div></a></li>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/ANALYSYS"><div class="Gidugu">&#3125;&#3135;&#3126;&#3149;&#3122;&#3143;&#3127;&#3107;</div></a></li>
      </ul>
   </li> 
     <li class="has-sub"><a href="#"><div class="Gidugu">&#3095;&#3149;&#3119;&#3134;&#3122;&#3120;&#3136;
        </div></a>
      <ul>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/MOVIEGALLERY"><div class="Gidugu">&#3118;&#3138;&#3125;&#3136; &#3095;&#3149;&#3119;&#3134;&#3122;&#3120;&#3136;</div></a></li>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/NATUREGALLERY"><div class="Gidugu">&#3112;&#3143;&#3098;&#3120;&#3149; &#3095;&#3149;&#3119;&#3134;&#3122;&#3120;&#3136;</div></a></li>
      </ul>
   </li>
     <li class="has-sub"><a href="#"><div class="Gidugu">&#3115;&#3112;&#3149; &#3100;&#3147;&#3112;&#3149;  
        </div></a>
      <ul>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/TELUGU-JOKES"><div class="Gidugu">&#3100;&#3147;&#3093;&#3149;&#3128;&#3149;</div></a></li>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/FUNNYIMAGES"><div class="Gidugu">&#3115;&#3112;&#3149;&#3112;&#3136; &#3079;&#3118;&#3143;&#3100;&#3128;&#3149;</div></a></li>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/SILLYPOINT"><div class="Gidugu">&#3128;&#3135;&#3122;&#3149;&#3122;&#3136; &#3114;&#3134;&#3119;&#3135;&#3074;&#3103;&#3149;</div></a></li>
      </ul>
   </li>
   <li class="has-sub"><a href="#"><div class="Gidugu">&#3093;&#3135;&#3105;&#3149;&#3128;&#3149; &#3100;&#3147;&#3112;&#3149;  
        </div></a>
      <ul>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/TELUGU-MORAL-STORIES"><div class="Gidugu">&#3112;&#3136;&#3108;&#3135; &#3093;&#3109;&#3122;&#3137;</div></a></li>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/TELUGU-MORAL-RHYMES"><div class="Gidugu">&#3112;&#3136;&#3108;&#3135; &#3114;&#3110;&#3149;&#3119;&#3134;&#3122;&#3137;</div></a></li>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/BRAINBOOSTERS"><div class="Gidugu">BRAIN BOOSTERS</div></a></li>
      </ul>
   </li>
   <li class="has-sub"><a href="#"><div class="Gidugu">&#3125;&#3136;&#3105;&#3135;&#3119;&#3147;&#3128;&#3149;  
        </div></a>
      <ul>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/VIDEOS"><div class="Gidugu">&#3118;&#3138;&#3125;&#3136; &#3125;&#3135;&#3105;&#3135;&#3119;&#3147;&#3128;&#3149;</div></a></li>
		  <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/FUNNY_VIDEOS"><div class="Gidugu">&#3115;&#3112;&#3149;&#3112;&#3136; &#3125;&#3136;&#3105;&#3135;&#3119;&#3147;&#3128;&#3149;</div></a></li>
		  <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/VIRAL_VIDEOS"><div class="Gidugu">&#3125;&#3135;&#3120;&#3134;&#3122;&#3149; &#3125;&#3136;&#3105;&#3135;&#3119;&#3147;&#3128;&#3149;</div></a></li>
      </ul>
   </li>
 <!--   <li class="has-sub"><a href="#"><div class="Gidugu">&#3093;&#3120;&#3142;&#3074;&#3103;&#3149; &#3077;&#3115;&#3144;&#3120;&#3149;&#3128;&#3149;
        </div></a>
      <ul>
    <li>
        <a href="<%=request.getContextPath()%>/titles/STATECA"><div class="Gidugu">&#3120;&#3134;&#3127;&#3149;&#3103;&#3149;&#3120;&#3136;&#3119;&#3074;<br/></div></a></li>
               <li><a href="<%=request.getContextPath()%>/titles/NATIONALCA"><div class="Gidugu">&#3100;&#3134;&#3108;&#3136;&#3119;&#3074;<br/></div></a></li>
               <li><a href="<%=request.getContextPath()%>/titles/WORLDCA"><div class="Gidugu">&#3077;&#3074;&#3108;&#3120;&#3149;&#3100;&#3134;&#3108;&#3135;&#3119;&#3074;<br/></div></a></li>
               <li><a href="<%=request.getContextPath()%>/titles/WORLDSPORTSCA"><div class="Gidugu">&#3093;&#3149;&#3120;&#3136;&#3105;&#3122;&#3137;</div></a></li>
    </ul>
   </li>
   -->
   <!-- <li class="has-sub"><a href="#"><div class="Gidugu">&#3100;&#3135;&#46;&#3093;&#3142;
        </div></a>
      <ul>
             <li><a href="<%=request.getContextPath()%>/titles/STATEGK"><div class="Gidugu">&#3120;&#3134;&#3127;&#3149;&#3103;&#3149;&#3120;&#3136;&#3119;&#3074;<br/></div></a></li>
               <li><a href="<%=request.getContextPath()%>/titles/NATIONALGK"><div class="Gidugu">&#3100;&#3134;&#3108;&#3136;&#3119;&#3074;<br/></div></a></li>
               <li><a href="<%=request.getContextPath()%>/titles/WORLDGK"><div class="Gidugu">&#3077;&#3074;&#3108;&#3120;&#3149;&#3100;&#3134;&#3108;&#3135;&#3119;&#3074;<br/></div></a></li>
               <li><a href="<%=request.getContextPath()%>/titles/WORLDSPORTSGK"><div class="Gidugu">&#3093;&#3149;&#3120;&#3136;&#3105;&#3122;&#3137;</div></a></li>
            </ul>
   </li>
   -->
    <li class="has-sub"><a href="#"><div class="Gidugu">&#3103;&#3135;&#3114;&#3149;&#3128;&#3149;
        </div></a>
      <ul>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/COMPUTER"><div class="Gidugu">&#3093;&#3074;&#3114;&#3149;&#3119;&#3138;&#3103;&#3120;&#3149;</div></a></li>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/INTERNET"><div class="Gidugu">&#3079;&#3074;&#3103;&#3120;&#3149;&#3112;&#3142;&#3103;&#3149;</div></a></li>
         <li class="has-sub"><a href="<%=request.getContextPath()%>/titles/MOBILE"><div class="Gidugu">&#3118;&#3146;&#3116;&#3144;&#3122;&#3149;</div></a></li>
      </ul>
   </li>
   
   
    
   
   <li class="activea"> <a href="<%=request.getContextPath()%>/showarticles.do?method=showThoranam"><div class="Gidugu">&#3108;&#3147;&#3120;&#3107;&#3074;
        </div></a>
      <ul>
          <li class="has-sub"><a href="<%=request.getContextPath()%>/showarticles.do?method=showThoranam">
          <div class="Gidugu" >&#3108;&#3147;&#3120;&#3107;&#3074;</div></a></li>
          <li class="has-sub"><a href="<%=request.getContextPath()%>/showarticles.do?method=addThoranamPage">
          <div class="Gidugu" >&#3122;&#3074;&#3093;&#3142; &#3093;&#3122;&#3137;&#3114;&#3137;</div></a></li>
          
          <li class="has-sub"><a href="<%=request.getContextPath()%>/showarticles.do?method=addThoranam1">
          <div class="Gidugu" >&#3122;&#3074;&#3093;&#3142; &#3093;&#3122;&#3137;&#3114;&#3137; - 1</div></a></li>
         <!--<li class="has-sub"><a href="<%=request.getContextPath()%>/titles/SUBREASONING"><div class="Gidugu">REASONING</div></a></li>-->
      </ul>
   </li>
   
   
   <!--
   <li class="has-sub"><a href="#">Products</a>
      <ul>
         <li class="has-sub"><a href="#">Product 1</a>
         </li>
         <li class="has-sub"><a href="#">Product 2</a>
            <ul>
               <li><a href="#">Sub Item</a></li>
               <li><a href="#">Sub Item</a></li>
            </ul>
         </li>
      </ul>
   </li>
   <li><a href="#">About</a></li>
   <li><a href="#">Contact</a></li> -->
   
</ul>
</div>  </div>
		
	
<script>

 

function hasClass(element, cls) {
    return (' ' + element.className + ' ').indexOf(' ' + cls + ' ') > -1;
};

document.getElementById('menu-button').onclick =function() {
test=document.getElementById("ul-menu-button");
//alert(hasClass(test, 'open'));
 if(hasClass(test, 'open')){
      test.className ="";
    } else {
      test.className ='open';
    }
};


</script>	
		
	

</div>


<div class="clear"></div>
