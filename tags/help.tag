<help>

    <help-subnav></help-subnav>

    <help-tutorial if={ subpage === 'tutorial' }></help-tutorial>
    <help-faq if={ subpage === 'faq' }></help-faq>

    <script>
    var that = this;
    console.log('help.tag');

    this.subpage = "help";

    var subRoute = route.create();
        subRoute('help/*', function(subpage) {
          console.log(subpage);
          that.subpage = subpage;
          that.update();
        });
        subRoute('help', function(subpage){
          that.subpage = "tutorial";
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

</help>
