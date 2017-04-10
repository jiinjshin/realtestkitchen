<comm>

    <nav>
        <a each={ data } href="#{ id }">{ title }</a>
    </nav>

    <comm-feat></comm-feat>
    <comm-grade></comm-grade>
    <comm-subject></comm-subject>
    <comm-saved></comm-saved>

    <article>
        <h1>{ page.title || 'Not found' }</h1>
        <p>{ page.body || 'Specified id is not found.' }</p>
    </article>

    <script>
        // function mountFeat(){   // riot.unmount('comm-grade', 'comm-subject', 'comm-saved');   // comm-grade.unmount();   // riot.mount('comm-feat'); }


        var tagsFeat = riot.mount('comm-feat');
        var tagsGrade = riot.mount('comm-grade');
        var tagsSubject = riot.mount('comm-subject');
        var tagsSaved = riot.mount('comm-saved');


        var self = this
        self.data = [
            {
                id: "",
                title: "Featured Decks",
                body: tagsFeat
            }, {
                id: "1",
                title: "Grade Level",
                body: tagsGrade
            }, {
                id: "2",
                title: "Subject",
                body: tagsSubject
            }, {
                id: "3",
                title: "Saved Decks",
                body: tagsSaved
            }

        ]
        self.page = self.data[0]

        route(function (id) {
            self.page = self.data.filter(function (r) {
                return r.id == id
            })[0] || {}
            self.update()
        })
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
