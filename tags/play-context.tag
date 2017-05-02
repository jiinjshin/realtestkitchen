<play-context>

    <div>
        <h1> { name } </h1>
        <h2> { chosencontext } </h2>
    </div>

    <script>
      var that = this;
        this.name = "Context"

 //copied code from shape
        var database = firebase.database();
        var cardsRef = database.ref('cards');
        var decksRef = cardsRef.child('decks');
        var originalRef = decksRef.child('original');

        this.contextContentList = [];
        var contextList = []; // array of all context card objects?
        originalRef.orderByChild('ingredient').equalTo('context').once('value', function (snapshot) {
            var data = snapshot.val();
            for (var key in data) {
                contextList.push(data[key]);
            }
            // console.log(contextList);

            that.contextContentList = contextList.map(function(dataObj) {
                // console.log("thisone", dataObj);
                return dataObj.content.text;
            });

            // console.log(that.contextContentList);
        });

         // use Math Random on the array push stuff from object into array from this, push specifically the content.text into another array this array will be used to pull data to randomize

        this.parent.on('squeak', function (e) {
            that.chooseContext();
        });

        this.chooseContext = function () {
            this.chosencontext = that.contextContentList[Math.floor(Math.random() * that.contextContentList.length)];
        };
        this.chooseContext();
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
            background-color: #f63a19;
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
    </style>

</play-context>
