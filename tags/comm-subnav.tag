<comm-subnav>

    <nav>
        <a href="#comm/featured">Featured Decks</a>
        <a href="#comm/grade">Grade Level</a>
        <a href="#comm/subject">Subject</a>
        <a href="#comm/saved">Saved Decks</a>
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

</comm-subnav>
