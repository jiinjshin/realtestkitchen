<play-shape>
    <h1>
        { name }
    </h1>
    <h2>
        { chosenshape }
    </h2>

    <script>
        var that = this;
        this.name = "Shape"

        var database = firebase.database();
        var cardsRef = database.ref('cards');
        var decksRef = cardsRef.child('decks');
        var originalRef = decksRef.child('original');

        this.shapeContentList = [];
        var shapeList = []; // array of all shape card objects?
        originalRef.orderByChild('ingredient').equalTo('shape').once('value', function (snapshot) {
            var data = snapshot.val();
            for (var key in data) {
                shapeList.push(data[key]);
            }
            // console.log(shapeList);

            that.shapeContentList = shapeList.map(function(dataObj) {
                // console.log("thisone", dataObj);
                return dataObj.content.text;
            });

            // console.log(that.shapeContentList);
        });

         // use Math Random on the array push stuff from object into array from this, push specifically the content.text into another array this array will be used to pull data to randomize

        this.parent.on('squeak', function (e) {
            that.chooseShape();
        });

        this.chooseShape = function () {
            this.chosenshape = that.shapeContentList[Math.floor(Math.random() * that.shapeContentList.length)];
        };
        this.chooseShape();
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
            background-color: #eaaf56;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
        }

    </style>

</play-shape>
