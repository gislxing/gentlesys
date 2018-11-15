<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
    <div class="row">
        <div class="col-md-offset-1">
		 <div class="navbar-header">
	     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
         <span class="sr-only">Toggle navigation</span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         </button>
	  <a class="navbar-brand" style="color:#8470FF;padding-left:15px;text-decoration:none" href="/">{{.NavHead}}</a>
	</div>
	<div id="navbar" class="navbar-collapse collapse">
    <ul class="nav navbar-nav">
	 {{range .NavNodes}}
	  <li><a href="{{.Href}}">{{.Name}}</a></li> 
	{{end}}
	<li><a href="/usif" id="user"></a></li> 
	<li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">操作
        <span class="caret"></span>
        </a>
        <ul class="dropdown-menu" role="menu">
            <li><a href="/usif" target="_blank">个人中心</a></li> 
            <li><a href="/auth" id="auth">登陆</a></li> 
            <li><a href="/register" id="register">注册</a></li>
            <li><a href="/quit" id="quit">退出</a></li> 
        </ul>
      </li>
    </ul>
	 </div>
    </div>
    </div>
    </div>
	<script>
        function getUser() {
        	return document.getElementById("user").innerHTML;
        }
		function getCookie(c_name)
		{
		if (document.cookie.length>0)
		  {
		  c_start=document.cookie.indexOf(c_name + "=")
		  if (c_start!=-1)
		    { 
		    c_start=c_start + c_name.length+1 
		    c_end=document.cookie.indexOf(";",c_start)
		    if (c_end==-1) c_end=document.cookie.length
		    return unescape(document.cookie.substring(c_start,c_end))
		    } 
		  }
		return "游客"
		}
		(function(){
			var u = getCookie("user")
			document.getElementById("user").innerHTML=(u);
		})();
    </script>
</nav>