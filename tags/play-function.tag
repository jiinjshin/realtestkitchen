<play-function>
    <h1>
        { name }
    </h1>
    <h2>
        { chosenfunc }
    </h2>

    <script>


        var that = this;
        this.name = "Function"

        var database = firebase.database();
        var cardsRef = database.ref('cards');
        var decksRef = cardsRef.child('decks');
        var originalRef = decksRef.child('original');

        this.funcContentList = [];
        var funcList = []; // array of all shape card objects?
        originalRef.orderByChild('ingredient').equalTo('function').once('value', function (snapshot) {
            var data = snapshot.val();
            for (var key in data) {
                funcList.push(data[key]);
            }
            console.log(funcList);

            that.funcContentList = funcList.map(function(dataObj) {
                console.log("thisone", dataObj);
                return dataObj.content.text;
            });

            console.log(that.funcContentList);
        });


         // use Math Random on the array push stuff from object into array from this, push specifically the content.text into another array this array will be used to pull data to randomize

        this.parent.on('squeak', function (e) {
            that.chooseFunc();
        });

        this.chooseFunc = function () {
            this.chosenfunc = that.funcContentList[Math.floor(Math.random() * that.funcContentList.length)];
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

</play-function>
