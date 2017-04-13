<app-navi>

    <nav>
        <a href="#play">Play</a>
        <a href="#comm">Community</a>
        <a href="#search">Search</a>
        <a href="#help">Help</a>
    </nav>

    <play if={ page==='play' }></play>
    <comm if={ page==='comm' }></comm>
    <search if={ page==='search' }></search>
    <help if={ page==='help' }></help>

    <!-- route filter stuff -->

    <script>

    var that = this;
    console.log('app-navi.tag');

    this.page = "play"; // Default page

    var appRoute = route.create();
        appRoute('*/..', function(page, subpage){
          that.page = page;
        });
        appRoute('*', function(page) {
          that.page = page;
          that.update();
        });

    route.start(true);

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
        background-color: white;
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

</app-navi>
