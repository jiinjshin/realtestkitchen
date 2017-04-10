<func>
    <h1>
        { name }
    </h1>
    <h2>
        { chosenfunc }
    </h2>

    <script>
        var that = this;
        this.name = "Function"

        var funcList = [
            "For understanding",
            "For eating",
            "For justice",
            "For happiness",
            "For falling in love",
            "For community",
            "For longevity"
        ];

        this.parent.on('squeak', function(e){
          that.chooseFunc();
        });

        this.chooseFunc = function() {
            return this.chosenfunc = funcList[Math.floor(Math.random() * funcList.length)];
        };
        this.chooseFunc();
    </script>

    <style>
        :scope {
            display: block;
            border-radius: 8px;
            font-family: 'Open Sans', sans-serif;
            width: 250px;
            height: 250px;
            padding: 20px;
            margin: 20px;
            background-color: #89df8e;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
        }

    </style>

</func>
