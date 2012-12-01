
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="admin" />
        <title>Bienvenido !!!</title>
    </head>
    <body>
      <div id="main" role="main">
    <hr class="space"/>
    <h1>A simple sample page</h1>
    <hr class="dot"/>
    <section id="abm">
    	<section class="clearfix">    
            <div class="left">
            	<button class="selected"><i class="home"></i>Home</button>
                <button><i class="user"></i>New User</button>
                <button><i class="search"></i>Buscar</button>
                <button><i class="calendar"></i>Calendar</button>                
			</div>
            <div class="right">
                <button><i class="edit"></i>Editar</button>
                <button class="color green"><i class="save"></i>Guardar</button>  
                <button class="color red"><i class="trash"></i>Eliminar</button>                
                <button class="color blue"><i class="archive"></i>Archivar</button>  
                <button class="color lightblue"><i class="refresh"></i>Refresh</button> 
                <button class="color grey"><i class="share"></i>Share</button>                                
			</div>
		</section>
        <table class="listings" summary="Lorem ipsum dolor sit amet, consectetur adipiscing elit">
            <thead>
                <tr>
                    <th></th>
                    <th><a href="#">Id</a></th>
                    <th><a href="#">Username</a></th>
                    <th><a href="#">Password</a></th>
                    <th><a href="#">Account Expired</a></th>
                    <th><a href="#">Account Locked</a></th>
                    <th><a href="#">Enabled</a></th>
                    <th>Edit</th>
                    <th>View</th>
                </tr>        	
            </thead>
            <tbody>
                <tr class="odd">
                    <td><input name="item" type="checkbox" value=""></td>
                    <td>1</td>
                    <td>admin</td>
                    <td>8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918</td>
                    <td>false</td>
                    <td>false</td>
                    <td>true</td>
                    <td><a href="#" class="editar">&nbsp;</a></td>
                    <td><a href="#" class="show">&nbsp;</a></td>
                </tr>       
                <tr class="odd">
                    <td><input name="item" type="checkbox" value=""></td>                
                    <td>2</td>
                    <td>operator</td>
                    <td>8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918</td>
                    <td>false</td>
                    <td>false</td>
                    <td>true</td>
                    <td><a href="#" class="editar">&nbsp;</a></td>
                    <td><a href="#" class="show">&nbsp;</a></td>
                </tr>   
                <tr class="odd">
                    <td><input name="item" type="checkbox" value=""></td>
                    <td>3</td>
                    <td>operator</td>
                    <td>8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918</td>
                    <td>false</td>
                    <td>false</td>
                    <td>true</td>
                    <td><a href="#" class="editar">&nbsp;</a></td>
                    <td><a href="#" class="show">&nbsp;</a></td>
                </tr>  
                <tr class="odd">
                    <td><input name="item" type="checkbox" value=""></td>
                    <td>4</td>
                    <td>operator</td>
                    <td>8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918</td>
                    <td>false</td>
                    <td>false</td>
                    <td>true</td>
                    <td><a href="#" class="editar">&nbsp;</a></td>
                    <td><a href="#" class="show">&nbsp;</a></td>
                </tr>  
                <tr class="odd">
                    <td><input name="item" type="checkbox" value=""></td>
                    <td>5</td>
                    <td>operator</td>
                    <td>8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918</td>
                    <td>false</td>
                    <td>false</td>
                    <td>true</td>
                    <td><a href="#"><i class="edit"></i></a></td>
                    <td><a href="#"><i class="del"></i></a></td>
                </tr>  
            </tbody>
            <tfoot>
                <tr>
                    <th colspan="9"></th>
                </tr> 
            </tfoot>
        </table>
	</section>
    <hr class="dot"/>    
	<section id="backend">
	<div class="span-12 colborder">
        <form id="dummy" action="" method="post">

          <fieldset>
            <legend>Simple sample form</legend>
            <p>
              <label for="dummy0">Text input (title)</label><br>
              <input type="text" class="title" name="dummy0" id="dummy0" value="Field with class .title">
            </p>

            <p>
              <label for="dummy1">Another field</label><br>
              <input type="text" class="text" id="dummy1" name="dummy1" value="Field with class .text">
            </p>

            <p>
              <label for="dummy2">Textarea</label><br>
              <textarea name="dummy2" id="dummy2" rows="5" cols="20"></textarea>
            </p>

            <p>
              <label for="dummy3">A password field</label><br>
              <input type="password" class="text" id="dummy3" name="dummy3" value="Password field with class .text">
            </p>

            <p>
              <label for="dummy3">A invalid field</label><br>
              <input type="password" class="text invalid" id="dummy3" name="dummy3" value="Password field with class .text">
            </p>
            
            <p>
              <label for="dummy_url">A URL field</label><br>
              <input type="url" class="text" id="dummy_url" name="dummy_url" value="http://example.com">
            </p>

            <p>
              <label for="dummy_email">An email field</label><br>
              <input type="email" class="text" id="dummy_email" name="dummy_email" value="email-with-class-text@example.com">
            </p>

            <p>
              <input type="submit" value="Submit">
              <input type="reset" value="Reset">
            </p>

          </fieldset>
        </form>

      </div>
<div class="span-12 last">

        <div class="error">
          This is a &lt;div&gt; with the class <strong>.error</strong>. <a href="#">Link</a>.
        </div>
        <div class="notice">
          This is a &lt;div&gt; with the class <strong>.notice</strong>. <a href="#">Link</a>.
        </div>
        <div class="info">
          This is a &lt;div&gt; with the class <strong>.info</strong>. <a href="#">Link</a>.
        </div>
        <div class="success">
          This is a &lt;div&gt; with the class <strong>.success</strong>. <a href="#">Link</a>.
        </div>

        <fieldset>
          <legend>Select, checkboxes, lists</legend>

          <p>
            <label for="dummy3">Select field</label><br>
            <select id="dummy3" name="dummy3">
              <option value="1">Ottawa</option>
              <option value="2">Calgary</option>
              <option value="3">Moosejaw</option>
            </select>
          </p>

          <p>
            <label for="dummy4">Select with groups</label><br>
            <select id="dummy4" name="dummy4">
              <option>Favorite pet</option>
              <optgroup label="mammals">
                <option>dog</option>
                <option>cat</option>
                <option>rabbit</option>
                <option>horse</option>
              </optgroup>
              <optgroup label="reptiles">
                <option>iguana</option>
                <option>snake</option>
              </optgroup>
            </select>
          </p>

          <p><label>Radio buttons</label><br>
            <input type="radio" name="example"> Radio one<br>
            <input type="radio" name="example"> Radio two<br>
            <input type="radio" name="example"> Radio three<br>
          </p>

          <p><label>Checkboxes</label><br>
            <input type="checkbox"> Check one<br>
            <input type="checkbox"> Check two<br>
            <input type="checkbox"> Check three<br>
          </p>

        </fieldset>

      </div>
    <hr class="space"/>       
	<div class="span-24 last">

        <fieldset>
          <legend>Alignment</legend>

          <p>
            <label for="dummy5">Select field</label>
            <select id="dummy5" name="dummy5">
              <option value="1">Ottawa</option>
              <option value="2">Calgary</option>
              <option value="3">Moosejaw</option>
            </select>
          </p>

          <p>
            <label for="dummy6">Text input (title)</label>
            <input type="text" class="title" name="dummy6" id="dummy6" value="Field with class .title">
          </p>

          <p>
            <label for="dummy7">Select field</label>
            <select id="dummy7" name="dummy7">
              <option value="1">Ottawa</option>
              <option value="2">Calgary</option>
              <option value="3">Moosejaw</option>
            </select>
            <label for="dummy8">Another field</label>
            <input type="text" class="text" id="dummy8" name="dummy8" value="Field with class .text">
          </p>

        </fieldset>

      </div> 
	<div class="span-24 last">
        <form action="" method="post" class="inline">
          <fieldset>
            <legend>A form with class "inline"</legend>
            <div class="span-3">
              <label for="a">Label A:</label>
              <select id="a" name="a">
                <option value="0">All</option>
              </select>
            </div>
            <div class="span-2">
              some text
            </div>
            <div class="span-3">
              <input type="checkbox" id="o" name="o" value="true" checked="checked" class="checkbox">checkbox one
            </div>
            <div class="span-3">
              <label for="b">Label B:</label>
              <select id="b" name="b">
                <option value="0">All</option>
              </select>
            </div>
            <div class="span-2">
              <a href="#">A Hyperlink</a>
            </div>
            <div class="span-8">
              <input type="text" class="text" id="q" name="q" value="Field with class .text">
            </div>
            <div class="span-2 last">
              <input type="submit" value="submit" class="button">
            </div>
          </fieldset>

        </form>

      </div>                 
	</section>      
    <hr class="dot"/>
    <div class="coda-slider-wrapper">
        <div class="coda-slider preload" id="coda-slider-1">
            <div class="panel">
                <div class="panel-wrapper">
                    <h2 class="title">Panel 1</h2>
                    <figure><img src="img/test.jpg" width="270" height="180" alt="thumbnail" class="left"></figure>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas metus nulla, commodo a sodales sed, dignissim pretium nunc. Nam et lacus neque. Sed volutpat ante id mauris laoreet vestibulum. Nam blandit felis non neque cursus aliquet. Morbi vel enim dignissim massa dignissim commodo vitae quis tellus. Nunc non mollis nulla. Sed consectetur elit id mi consectetur bibendum. Ut enim massa, sodales tempor convallis et, iaculis ac massa. Etiam suscipit nisl eget lorem pellentesque quis iaculis mi mattis. Aliquam sit amet purus lectus. Maecenas tempor ornare sollicitudin.</p>
                </div>
            </div>
            <div class="panel">
                <div class="panel-wrapper">
                    <h2 class="title">Panel 2</h2>
                    <p>Proin nec turpis eget dolor dictum lacinia. Nullam nunc magna, tincidunt eu porta in, faucibus sed magna. Suspendisse laoreet ornare ullamcorper. Nulla in tortor nibh. Pellentesque sed est vitae odio vestibulum aliquet in nec leo.</p>
                </div>
            </div>
            <div class="panel">
                <div class="panel-wrapper">
                    <h2 class="title">Panel 3</h2>
                    <p>Cras luctus fringilla odio vel hendrerit. Cras pulvinar auctor sollicitudin. Sed lacus quam, sodales sit amet feugiat sit amet, viverra nec augue. Sed enim ipsum, malesuada quis blandit vel, posuere eget erat. Sed a arcu justo. Integer ultricies, nunc at lobortis facilisis, ligula lacus vestibulum quam, id tincidunt sapien arcu in velit. Vestibulum consequat augue et turpis condimentum mollis sed vitae metus. Morbi leo libero, tincidunt lobortis fermentum eget, rhoncus vel sem. Morbi varius viverra velit vel tempus. Morbi enim turpis, facilisis vel volutpat at, condimentum quis erat. Morbi auctor rutrum libero sed placerat. Etiam ipsum velit, eleifend in vehicula eu, tristique a ipsum. Donec vitae quam vel diam iaculis bibendum eget ut diam. Fusce quis interdum diam. Ut urna justo, dapibus a tempus sit amet, bibendum at lectus. Sed venenatis molestie commodo.</p>
                </div>
            </div>
            <div class="panel">
                <div class="panel-wrapper">
                    <h2 class="title">Panel 4</h2>
                    <p>Nulla ultricies ornare erat, a rutrum lacus varius nec. Pellentesque vehicula lobortis dignissim. Ut scelerisque auctor eros sed porttitor. Nullam pulvinar ultrices malesuada. Quisque lobortis bibendum nisi et condimentum. Mauris quis erat vel dui lobortis dignissim.</p>
                </div>
            </div>
        </div><!-- .coda-slider -->
    </div><!-- .coda-slider-wrapper -->
    <hr class="space"/>
    <hr class="dot"/> 
	<!-- Nivo Slider -->
	<section id="slideshow" class="slider-wrapper clearfix">
		<div class="ribbon"></div>
        <div class="ribbon2"></div>
			<div id="slider" class="nivoSlider">
                <a href="#" rel="bookmark" ><img src="img/slide/slide_1.png" alt="iStockManager" /></a>		    		
                <a href="#" rel="bookmark" ><img src="img/slide/slide_2.png" alt="Tip Calculator" /></a>		    		
                <a href="#" rel="bookmark" ><img src="img/slide/slide_3.png" alt="Tradefields" /></a>		    		
                <a href="#" rel="bookmark" ><img src="img/slide/slide_4.png" alt="El Noble" /></a>		    			    		
                <a href="#" rel="bookmark" ><img src="img/slide/slide_5.png" alt="Brushfire" /></a>		    			    		
                <a href="#" rel="bookmark" ><img src="img/slide/slide_6.png" alt="Apalabrados" /></a>		    			    		
                <a href="#" rel="bookmark" ><img src="img/slide/slide_3.jpg" alt="None" /></a>		    			    		
                <a href="#" rel="bookmark" ><img src="img/slide/slide_7.jpg" alt="None" /></a>		    			    		
                <a href="#" rel="bookmark" ><img src="img/slide/slide_8.jpg" alt="None" /></a>		    			    		
            </div>
    </section>
	<!-- Nivo Slider Ends -->
    <hr class="dot"/>    
    <section id="screenshots" class="clearfix">
      <h2>Screenshots</h2>
      <nav>
        <ul class="gallery clearfix">
          <li><a href="img/screenshot.png" rel="prettyPhoto" title="You can add caption to pictures.">
            <figure class=""></figure>
            </a></li>
          <li><a href="img/screenshot.png" rel="prettyPhoto" title="You can add caption to pictures.">
            <figure class=""></figure>
            </a></li>
          <li><a href="img/screenshot.png" rel="prettyPhoto" title="You can add caption to pictures.">
            <figure class="empty"></figure>
            </a></li>
          <li><a href="img/screenshot.png" rel="prettyPhoto" title="You can add caption to pictures.">
            <figure class="text"></figure>
            </a></li>
          <li><a href="img/screenshot.png" rel="prettyPhoto" title="You can add caption to pictures.">
            <figure class="bookmark"></figure>
            </a></li>
          <li><a href="img/screenshot.png" rel="prettyPhoto" title="You can add caption to pictures.">
            <figure class="video"></figure>
            </a></li>
          <li><a href="img/screenshot.png" rel="prettyPhoto" title="You can add caption to pictures.">
            <figure class="audio"></figure>
            </a></li>
          <li><a href="img/screenshot.png" rel="prettyPhoto" title="You can add caption to pictures.">
            <figure class="archive"></figure>
            </a></li>
        </ul>
      </nav>
    </section>
    <hr class="dot"/>
    <hr class="space">
    <section id="tweet">
      <hr class="space">
      <p><img src="img/indicator.gif" /></p>
    </section>
    <hr class="dot"/>
    <section>
    	<article class="span-17 colborder">
			<h6>Entre la literatura y el periodismo</h6>
			<h2>La crónica, ornitorrinco de la prosa</h2>
			<p>La imposibilidad de ser objetivo y la necesidad de contar lo que no ocurrió, pero pudo haber sucedido, son algunos aspectos que aparecen en este ensayo, que forma parte del libro Safari accidental, publicado recientemente en México por la editorial Joaquín Mortiz.</p>
			<h5>Por Juan Villoro <small class="right">Mayo 15, 2011</small></h5>          
			<hr class="dot"/>
			<p> Lorem ipsum dolor sit amet, <em>consectetuer adipiscing elit</em>. Nunc congue ipsum vestibulum libero. Aenean vitae justo. Nam eget tellus. Etiam convallis, est eu lobortis mattis, lectus tellus tempus felis, a ultricies erat ipsum at metus.</p>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. <a href="#">Morbi et risus</a>. Aliquam nisl. Nulla facilisi. Cras accumsan vestibulum ante. Vestibulum sed tortor. Praesent tempus fringilla elit. Ut elit diam, sagittis in, nonummy in, gravida non, nunc. Ut orci. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Nam egestas, orci eu imperdiet malesuada, nisl purus fringilla odio, quis commodo est orci vitae justo. Aliquam placerat odio tincidunt nulla. Cras in libero. Aenean rutrum, magna non tristique posuere, erat odio eleifend nisl, non convallis est tortor blandit ligula. Nulla id augue.</p> 
			<p>Vivamus euismod. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse vel nibh ut turpis dictum sagittis. Aliquam vel velit a elit auctor sollicitudin. Nam vel dui vel neque lacinia pretium. Quisque nunc erat, venenatis id, volutpat ut, scelerisque sed, diam. Mauris ante. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mattis. Morbi dignissim sollicitudin libero. Nulla lorem.</p>
			<figure> <a href="http://www.flickr.com/photos/mottillo/2140502497/" title="jugas? by rwasn, on Flickr"><img src="http://farm3.static.flickr.com/2355/2140502497_48d915072d.jpg" width="500" height="333" alt="jugas?"/></a>
            <figcaption>Lorem ipsum dolor sit amet, consectetuer adipiscing elit by <a href="#" title="title">{author}</a>, on Flickr</figcaption>
			</figure>
			<blockquote>
				<p>Integer cursus ornare mauris. Praesent nisl arcu, imperdiet eu, ornare id, scelerisque ut, nunc. Praesent sagittis erat sed velit tempus imperdiet. Ut tristique, ante in interdum hendrerit, erat enim faucibus felis, quis rutrum mauris lorem quis sem. Vestibulum ligula nisi, mattis nec, posuere et, blandit eu, ligula. Nam suscipit placerat odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque tortor libero, venenatis vitae, rhoncus eu, placerat ut, mi. Nulla nulla.</p>
            </blockquote>   
			<p>Maecenas vel metus quis magna pharetra fermentum. <em>Integer sit amet tortor</em>. Maecenas porttitor, pede sed gravida auctor, nulla augue aliquet elit, at pretium urna orci ut metus. Aliquam in dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, tellus id ornare posuere, quam nunc accumsan turpis, at convallis tellus orci et nisl. Phasellus congue neque a lorem.</p>
			<hr class="space"/>
        </article>
        <aside class="span-7">
            <ol id="sharex3">
                <li><a href="http://twitter.com/share" class="twitter-share-button" data-count="vertical" data-via="brushfire">Tweet</a></li>
                <li><fb:like href="http://www.domain.com/" layout="box_count" font="verdana"></fb:like></li>
            </ol> 
			<hr class="dot"/>
            <ol>
              <li><button class="donate">Go!</button></li>
              <li><button class="signup gradient-yellow">Download Now »</button></li>
            </ol>			
		    <hr class="dot"/>
        </aside>
    </section>    
    <hr class="dot"/>
    <section class="socialprofile">
      <ol>
        <li><img title="Facebook" src="img/socialnetworks/facebook_32.png"></li>
        <li><img title="Foursquare" src="img/socialnetworks/foursquare_32.png"></li>
        <li><img title="Youtube" src="img/socialnetworks/youtube_32.png"></li>
        <li><img title="Gowalla" src="img/socialnetworks/gowalla_32.png"></li>
        <li><img title="Rss" src="img/socialnetworks/rss_32.png"></li>
        <li><img title="Blogger" src="img/socialnetworks/blogger_32.png"></li>
        <li><img title="Tumblr" src="img/socialnetworks/tumblr_32.png"></li>
        <li><img title="Wordpress" src="img/socialnetworks/wordpress_32.png"></li>
        <li><img title="Twitter" src="img/socialnetworks/twitter_32.png"></li>
        <li><img title="Posterous2" src="img/socialnetworks/posterous_32.png"></li>
        <li><img title="Twitter Search" src="img/socialnetworks/twitter_search_32.png"></li>
        <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</li>
      </ol>
    </section>
    <hr class="dot"/>
    <section>
      <div class="span-6">
        <div class="box rounded gradient-red2 shadow noborder">
          <h3>Features</h3>
          <p>Aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
      </div>
      <div class="span-6">
        <div class="box rounded gradient-green shadow noborder">
          <h3>Features</h3>
          <p>Aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
      </div>
      <div class="span-6">
        <div class="box rounded gradient-blue2 shadow noborder">
          <h3>Features</h3>
          <p>Aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
      </div>
      <div class="span-6 last">
        <div class="box rounded gradient-yellow shadow noborder">
          <h3>Features</h3>
          <p>Aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
      </div>
    </section>
    <hr class="space"/>
    <hr class="dot"/>
    <section>
      <div class="span-7 colborder">
        <h3>Features</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>
      </div>
      <div class="span-8 colborder">
        <h3>Features</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat laboris nisi ut aliquip.</p>
      </div>
      <div class="span-7 last">
        <h3>Features</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>
      </div>
    </section>
    <hr class="space"/>
    <hr class="dot"/>
    <div class="wiki">Ready to start? Click <a href="#">here</a> to try, it's FREE!</div>
    <hr class="space"/>
    <hr class="dot"/>
  </div>
  <!-- eo #main -->
  <footer>
    <div class="inner">
      <nav>
        <ol>
          <li>©2011 Domain.com</li>
          <li><a href="http://twitter.com/share" class="twitter-share-button" data-count="horizontal" data-via="domain">Tweet</a></li>
          <li><fb:like href="http://www.domain.com/" send="false" layout="button_count" show_faces="false" font="verdana"></fb:like></li>
          <li><a href="/about" title="About">About</a></li>
          <li><a href="/team" title="Team">Team</a></li>
          <li><a href="/jobs" title="Jobs">Jobs</a></li>
          <li><a href="/download" title="Download">Download</a></li>
          <li><a href="/faq" title="FAQ">FAQ</a></li>
          <li><a href="/terms" title="Terms">Terms</a></li>
          <li><a href="/privacy" title="Privacy">Privacy</a></li>
          <li><a href="http://blog.domain.com/" title="Blog">Blog</a></li>
          <li><a href="mailto:hello@domain.com" title="Contact Us">Contact</a></li>
        </ol>
      </nav>
    </div>
  </footer>
  <hr class="space"/>
</div>
<!-- eo #container --> 
    </body>
</html>
