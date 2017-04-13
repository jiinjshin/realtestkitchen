<help-subnav>

    <nav>
        <a href="#help/tutorial">Tutorial</a>
        <a href="#help/faq">FAQ</a>
    </nav>

    <script>
        var that = this;
        console.log('help-subnav.tag');
    </script>

    <style>
        :scope {
            display: block;
        }
        nav {
            display: flex;
            padding: 0 0 1em;
        }
        nav a {
            width: 100%;
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

</help-subnav>
