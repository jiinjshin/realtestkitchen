<create-subnav>
  <nav>
  <a href="#create/shape">Shape</a>
  <a href="#create/context">Context</a>
  <a href="#create/function">Function</a>
  <a href="#create/cheese">Cheese</a>
  </nav>

<script>
  var that = this;
  console.log('comm-subnav.tag');
</script>

<style>
  :scope {
      display: block;
  }
  nav {
      display: flex;
  }
  nav a {
      width: 33.33333333%;
      display: block;
      background-color: gold;
      padding: 10px;
      text-decoration: none;
      color: #333;
      font-weight: bold;
      text-align: center;
  }
  nav a:not(:last-child) {
      margin-right: 1px;
  }
  nav a:hover {
      background-color: oldlace;
  }
</style>

</create-subnav>
