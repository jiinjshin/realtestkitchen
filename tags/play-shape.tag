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

        var shapeList = [
            // "Circle",
            // "Rectangle",
            // "Triangle",
            // "Octagon",
            // "Trapezoid",
            // "Cube",
            // "Cylinder",
            // "Line"
        ];

        this.allObjects = [];

         var refList = [];
         originalRef.orderByChild('ingredient').equalTo('shape').once('value',function(snapshot){
          var data = snapshot.val();
          for (var key in data) {
            refList.push(data[key]);
          }

          console.log(refList);


// push stuff from object into array
// from this, push specifically the content.text into another array
// this array will be used to pull data to randomize

        });

        this.parent.on('squeak', function(e){
          that.chooseShape();
        });

        this.chooseShape = function() {
            return this.chosenshape = shapeList[Math.floor(Math.random() * shapeList.length)];
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
