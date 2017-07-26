$(document).ready(function() {
	$("#signUp").on('click',function(){
  $(this).blur();
  if($("#model-overlay")[0]) return false;
  var html ='<div class="signUp-content" id="signUp-content">'+
								'<div class="content-box">'+
										'<button class="cancel-button" id="close">︎×</button>'+
										'<div>'+
										'<div class="content-box__links">'+
										'<span>Sign up with</span>'+
										'<a class="f-link" href="/">Facebook</a>'+
										'<span>or</span>'+
										'<a class="g-link" href="/">Google</a>'+
										'</div>'+
									'</div>'+
										'<div style="margin:16px 0; text-align:center;">'+
										'<span class="border">or</span>'+
									'</div>'+
									'<form class="new_user" id="new_user" action="/users" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="✓"><input type="hidden" name="authenticity_token" value="lVo0gHC8WmbiNHXEhFYkq6uIDfYg0WpuYeoYpEqLwKxYKXe7Uysl47t/qmn1108tO4Rla93xOZq5CLRP2JNw==">'+
									'<div class="field">'+
									'<input autofocus="autofocus" placeholder="Email address" class="form" type="email" value="" name="user[email]" id="user_email">'+
									'<i class="fa fa-envelope-o form-icon"></i>'+
									'</div>'+
									'<div class="field">'+
									'<input autofocus="autofocus" placeholder="First name" class="form" type="text" name="user[first_name]" id="user_first_name">'+
									'<i class="fa fa-user-o form-icon"></i>'+
									'</div>'+
									'<div class="field">'+
									'<input autofocus="autofocus" placeholder="Last name" class="form" type="text" name="user[last_name]" id="user_last_name">'+
									'<i class="fa fa-user-o form-icon"></i>'+
									'</div>'+
									'<div class="field">'+
									'<input autocomplete="off" placeholder="Create a Password" class="form" type="password" name="user[password]" id="user_password">'+
									'<i class="fa fa-lock form-icon"></i>'+
									'</div>'+
									'<div>'+
									'<span style="font-size: 19px; line-height: 24px">Birthday</span>'+
									'<div class="birth-text">'+
									'To sign up, you must be 18 or older. Other people won’t see your birthday.'+
									'</div>'+
									'<div class="birth-wrapper">'+
									'<div class="birth-selector">'+
									'<select id="user[birthday_month]" name="user[birthday_month]">'+
									'<option disabled="disabled" value="">Month</option>'+
									'<option value="1">January</option>'+
									'<option value="2">February</option>'+
									'<option value="3">March</option>'+
									'<option value="4">April</option>'+
									'<option value="5">May</option>'+
									'<option value="6">June</option>'+
									'<option value="7">July</option>'+
									'<option value="8">August</option>'+
									'<option value="9">September</option>'+
									'<option value="10">October</option>'+
									'<option value="11">November</option>'+
									'<option value="12">December</option>'+

									'</select>'+
									'</div>'+
									'</div>'+
									'<div class="birth-wrapper__days">'+
									'<div class="birth-selector">'+
									'<select id="user[birthday_day]" name="user[birthday_day]">'+
									'<option disabled="disabled" value="">Day</option>'+
									'<option value="1">1</option>'+
									'<option value="2">2</option>'+
									'<option value="3">3</option>'+
									'<option value="4">4</option>'+
									'<option value="5">5</option>'+
									'<option value="6">6</option>'+
									'<option value="7">7</option>'+
									'<option value="8">8</option>'+
									'<option value="9">9</option>'+
									'<option value="10">10</option>'+
									'<option value="11">11</option>'+
									'<option value="12">12</option>'+
									'<option value="13">13</option>'+
									'<option value="14">14</option>'+
									'<option value="15">15</option>'+
									'<option value="16">16</option>'+
									'<option value="17">17</option>'+
									'<option value="18">18</option>'+
									'<option value="19">19</option>'+
									'<option value="20">20</option>'+
									'<option value="21">21</option>'+
									'<option value="22">22</option>'+
									'<option value="23">23</option>'+
									'<option value="24">24</option>'+
									'<option value="25">25</option>'+
									'<option value="26">26</option>'+
									'<option value="27">27</option>'+
									'<option value="28">28</option>'+
									'<option value="29">29</option>'+
									'<option value="30">30</option>'+
									'<option value="31">31</option>'+

									'</select>'+
									'</div>'+
									'</div>'+
									'<div class="birth-wrapper__year">'+
									'<div class="birth-selector">'+
									'<select id="user[birthday_year]" name="user[birthday_year]">'+
									'<option disabled="disabled" value="">Year</option>'+
									'<option value="1999">1999</option>'+
									'<option value="1998">1998</option>'+
									'<option value="1997">1997</option>'+
									'<option value="1996">1996</option>'+
									'<option value="1995">1995</option>'+
									'<option value="1994">1994</option>'+
									'<option value="1993">1993</option>'+
									'<option value="1992">1992</option>'+
									'<option value="1991">1991</option>'+
									'<option value="1990">1990</option>'+
									'<option value="1989">1989</option>'+
									'<option value="1988">1988</option>'+
									'<option value="1987">1987</option>'+
									'<option value="1986">1986</option>'+
									'<option value="1985">1985</option>'+
									'<option value="1984">1984</option>'+
									'<option value="1983">1983</option>'+
									'<option value="1982">1982</option>'+
									'<option value="1981">1981</option>'+
									'<option value="1980">1980</option>'+
									'<option value="1979">1979</option>'+
									'<option value="1978">1978</option>'+
									'<option value="1977">1977</option>'+
									'<option value="1976">1976</option>'+
									'<option value="1975">1975</option>'+
									'<option value="1974">1974</option>'+
									'<option value="1973">1973</option>'+
									'<option value="1972">1972</option>'+
									'<option value="1971">1971</option>'+
									'<option value="1970">1970</option>'+
									'<option value="1969">1969</option>'+
									'<option value="1968">1968</option>'+
									'<option value="1967">1967</option>'+
									'<option value="1966">1966</option>'+
									'<option value="1965">1965</option>'+
									'<option value="1964">1964</option>'+
									'<option value="1963">1963</option>'+
									'<option value="1962">1962</option>'+
									'<option value="1961">1961</option>'+
									'<option value="1960">1960</option>'+
									'<option value="1959">1959</option>'+
									'<option value="1958">1958</option>'+
									'<option value="1957">1957</option>'+
									'<option value="1956">1956</option>'+
									'<option value="1955">1955</option>'+
									'<option value="1954">1954</option>'+
									'<option value="1953">1953</option>'+
									'<option value="1952">1952</option>'+
									'<option value="1951">1951</option>'+
									'<option value="1950">1950</option>'+
									'<option value="1949">1949</option>'+
									'<option value="1948">1948</option>'+
									'<option value="1947">1947</option>'+
									'<option value="1946">1946</option>'+
									'<option value="1945">1945</option>'+
									'<option value="1944">1944</option>'+
									'<option value="1943">1943</option>'+
									'<option value="1942">1942</option>'+
									'<option value="1941">1941</option>'+
									'<option value="1940">1940</option>'+
									'<option value="1939">1939</option>'+
									'<option value="1938">1938</option>'+
									'<option value="1937">1937</option>'+
									'<option value="1936">1936</option>'+
									'<option value="1935">1935</option>'+
									'<option value="1934">1934</option>'+
									'<option value="1933">1933</option>'+
									'<option value="1932">1932</option>'+
									'<option value="1931">1931</option>'+
									'<option value="1930">1930</option>'+
									'<option value="1929">1929</option>'+
									'<option value="1928">1928</option>'+
									'<option value="1927">1927</option>'+
									'<option value="1926">1926</option>'+
									'<option value="1925">1925</option>'+
									'<option value="1924">1924</option>'+
									'<option value="1923">1923</option>'+
									'<option value="1922">1922</option>'+
									'<option value="1921">1921</option>'+
									'<option value="1920">1920</option>'+
									'<option value="1919">1919</option>'+
									'<option value="1918">1918</option>'+
									'<option value="1917">1917</option>'+
									'<option value="1916">1916</option>'+
									'<option value="1915">1915</option>'+
									'<option value="1914">1914</option>'+
									'<option value="1913">1913</option>'+
									'<option value="1912">1912</option>'+
									'<option value="1911">1911</option>'+
									'<option value="1910">1910</option>'+
									'<option value="1909">1909</option>'+
									'<option value="1908">1908</option>'+
									'<option value="1907">1907</option>'+
									'<option value="1906">1906</option>'+
									'<option value="1905">1905</option>'+
									'<option value="1904">1904</option>'+
									'<option value="1903">1903</option>'+
									'<option value="1902">1902</option>'+
									'<option value="1901">1901</option>'+
									'<option value="1900">1900</option>'+
									'<option value="1899">1899</option>'+
									'<option value="1898">1898</option>'+
									'<option value="1897">1897</option>'+

									'</select>'+
									'</div>'+
									'</div>'+
									'</div>'+
									'<div class="signUp-text">'+
									'<span>By clicking Sign up or Continue with, I agree to Bairbnbs</span>'+
									'<a class="terms" href="/">Terms of Service,</a>'+
									'<a class="terms" href="/">Payments Terms of Service,</a>'+
									'<a class="terms" href="/">Privacy Policy,</a>'+
									'<span>and</span>'+
									'<a class="terms" href="/">Nondiscrimination Policy.,</a>'+
									'<div class="actions">'+
									'<div style="margin:0;padding:0;display:inline">'+
    							'<input name="utf8" type="hidden" value="&#x2713;" />'+
    							'<input name="authenticity_token" type="hidden" value="NrOp5bsjoLRuK8IW5dQEYjKGUJDe7TQoZVvq95Wteg=" />'+
  								'</div>'+
									'<input type="submit" name="commit" value="Sign up" class="signUp-button" data-disable-with="Sign up">'+
									'</div>'+
									'</div>'+
									'</form><div style="margin:16px 0;">'+
									'<div class="ruler"></div>'+
									'</div>'+
									'<div class="content-box__bottom">'+
									'<span>Already have an Bairbnb account?</span>'+
									'<a class="log-in" href="/users/sign_in">Log in</a>'+
									'<br>'+

									'</div>'+
									'</div>'+
								'</div>'
  $("body").append('<div id="modal-overlay"></div>');
  $("#modal-overlay").append(html)
	$("#modal-overlay").fadeIn("slow");
	// $("#sign-Up").fadeIn("slow");

	$("#close").unbind().on('click',function() {
		console.log(this)
		$("#signUp-content").remove();
		$("#modal-overlay").remove();
});
	});

	$("#Login").on('click',function(){
  	$(this).blur();
  	if($("#model-overlay")[0]) return false;
				  	var html = '<div class="logIn-content">'+
'<div class="content-box__session">'+
'<button class="cancel-button" id="close">︎×</button>'+
'<div>'+
'<form action="http://localhost:3000" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="✓"><input type="hidden" name="authenticity_token" value="Tl/JfX0GYD5WvA7kmMcZ5dy0nn3lqVoHwnpGPTni7wZjwbbXlxTmiG8oBbF9ZVWreg9E65cc8nStrJjwf6Wtag==">'+
'<input type="hidden" name="email[{:autofocus=>true, :placeholder=>&quot;Email address&quot;, :class=>&quot;form&quot;}]" id="email_{:autofocus=>true, :placeholder=>&quot;Email address&quot;, :class=>&quot;form&quot;}">'+
'</form>'+

'<button class="facebook">'+
'<i class="fa fa-facebook" style="padding-right:10px;"></i>'+
'Log in with Facebook'+
'</button>'+
'<button class="Google">'+
'<i class="fa fa-google" style="padding-right:10px;"></i>'+
'Log in with Google'+
'</button>'+
'</div>'+
'<div style="margin:16px 0; text-align:center;">'+
'<span class="border">or</span>'+
'</div>'+
'<form class="new_user" id="new_user" action="/users/sign_in" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="✓"><input type="hidden" name="authenticity_token" value="Tl/JfX0GYD5WvA7kmMcZ5dy0nn3lqVoHwnpGPTni7wZjwbbXlxTmiG8oBbF9ZVWreg9E65cc8nStrJjwf6Wtag=="><div class="field">'+
'<input autofocus="autofocus" placeholder="Email address" class="form" type="email" value="" name="user[email]" id="user_email">'+
'<i class="fa fa-envelope-o form-icon"></i>'+
'</div>'+
'<div class="field">'+
'<input autocomplete="off" placeholder="Password" class="form" type="password" name="user[password]" id="user_password">'+
'<i class="fa fa-lock form-icon"></i>'+
'</div>'+
'<div class="content-box__check"></div>'+
'<div class="field check-box">'+
'<input name="user[remember_me]" type="hidden" value="0"><input type="checkbox" value="1" name="user[remember_me]" id="user_remember_me">'+
'<label class="check" for="user_remember_me">Remember me</label>'+
'<a class="link-text" href="/users/password/new">Forgot your password?</a>'+
'</div>'+
'<div class="actions"></div>'+
'<input type="submit" name="commit" value="Log in" class="signUp-button" data-disable-with="Log in">'+
'</form><div style="margin:16px 0;">'+
'<div class="ruler"></div>'+
'</div>'+
'<div class="content-box__bottom">'+
'<span>Dont have an account?</span>'+
'<a class="log-in" href="/users/sign_up">Sign up</a>'+
'<br>'+

'</div>'+
'</div>'+
'</div>'

  	$("body").append('<div id="modal-overlay"></div>');
  	$("#modal-overlay").append(html);
		$("#modal-overlay").fadeIn("slow");

	$("#close").unbind().on('click',function() {
	console.log(this)
	$("#logIn-content").remove();
	$("#modal-overlay").remove();
  });
});

});
