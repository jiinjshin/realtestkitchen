<create>
  <create-subnav></create-subnav>

  <create-shape if={ subpage === 'shape' }></create-shape>
  <create-context if={ subpage === 'context' }></create-context>
  <create-function if={ subpage === 'function' }></create-function>
  <create-cheese if={ subpage === 'cheese' }></create-cheese>
  <p if={ !subpage }><strong>NO SUBPAGE</strong></p>


<script>
  var that = this;
  console.log('create.tag');

  this.subpage = "create";

  var subRoute = route.create();
      subRoute('create/*', function(subpage) {
        console.log(subpage);
        that.subpage = subpage;
        that.update();
      });
      subRoute('create', function(subpage){
        that.subpage = "featured";
        that.update();
      });

  this.on('mount', function(){
    route.exec();
  });

  // Since this page-b is unmounted often, you need to STOP this subRoute
  // when you unmount page-b. Otherwise, the subroute still exists, listens,
  // and the next time you open up page-b - things get weird.
  this.on('unmount', function() {
    subRoute.stop();
  });
</script>

<style>
:scope {
    display: block;
    font-family: sans-serif;
    margin: 0;
    padding: 1em;
    text-align: center;
    color: #666;
}
nav {
    display: block;
    padding: 0 0 1em;

}
nav > a {
    display: inline-block;
    padding: 0 0.8em;
}
nav > a:not(:first-child) {
    border-left: 1px solid #eee;
}
nav a:not(:last-child) {
    margin-right: 1px;
}
</style>

</create>
