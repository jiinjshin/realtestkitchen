<comm>

    <nav>
        <a href="#featured">Featured Decks</a>
        <a href="#grade">Grade Level</a>
        <a href="#subject">Subject</a>
        <a href="#saved">Saved Decks</a>
    </nav>

    <comm-feat if={ page === 'featured' }></comm-feat>
    <comm-grade if={ page === 'grade' }></comm-grade>
    <comm-subject if={ page === 'subject' }></comm-subject>
    <comm-saved if={ page === 'saved' }></comm-saved>

    <!-- <article>
        <h1>{ page.title || 'Not found' }</h1>
        <p>{ page.body || 'Specified id is not found.' }</p>
    </article> -->

    <script>

        var that = this;
        // that.data = [
        //     {
        //         id: "",
        //         title: "Featured Decks",
        //         body: "hello"
        //     }, {
        //         id: "1",
        //         title: "Grade Level",
        //         body: "tagsGrade"
        //     }, {
        //         id: "2",
        //         title: "Subject",
        //        body: "tagsSubject"
        //  }, {
        //         id: "3",
        //         title: "Saved Decks",
        //         body: "tagsSaved"
        //  }
        //
        // ];
        // that.page = that.data[0];

        route(function (id) {
            // that.page = that.data.filter(function (r) {
            //     return r.id == id
            // })[0] || {}
            // that.update();
            console.log('ROUTE', id);
            that.page = id;
            // that.update();
        });
        //
        // this.on('update', function(){
        //   console.log(this.page);
        // });
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
            border-bottom: 1px solid #666;
            padding: 0 0 1em;
        }
        nav > a {
            display: inline-block;
            padding: 0 0.8em;
        }
        nav > a:not(:first-child) {
            border-left: 1px solid #eee;
        }

    </style>

</comm>
