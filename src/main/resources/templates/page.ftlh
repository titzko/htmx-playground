<#import "./frame.ftlh" as frame>

<@frame.frame>
<h1>Testing htmx</h1>

<form  id="user-create-form">


<div>

    <label for="firstname">
      First name
      <input type="text" id="firstname" name="firstName" placeholder="First name" required>
    </label>

    <label for="lastname">
      Last name
      <input type="text" id="lastname" name="lastName" placeholder="Last name" required>
    </label>



  <label for="email">Email address</label>
  <input type="email" id="email" name="email" placeholder="Email address" required>
  <small>We'll never share your email with anyone else.</small>


  <button type="button" hx-post hx-target="#user-create-form" >Submit</button>
</div>

</form>


<div style="margin-top: 32px">
    <div hx-post="/page/mouse-entered" hx-trigger="mouseenter">
        [Here Mouse, Mouse!]
    </div>
</div>


<div style="margin-top: 32px">
    <input type="text" name="searchString"
        hx-get="/page/trigger-delay"
        hx-trigger="keyup changed delay:500ms"
        hx-target="#search-results"
        placeholder="Search..."
    >
    <div id="search-results"></div>
</div>





</@frame.frame>