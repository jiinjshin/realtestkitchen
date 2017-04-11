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

        route(function (id) {

            console.log('ROUTE', id);
            that.page = id;
            that.update();
        });

        this.on('update', function () {
            console.log(this.page);
        });
    </script>

    <style>
        :scope {
            }

    </style>

</app-navi>
