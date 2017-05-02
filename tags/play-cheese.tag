<play-cheese>

  <div>
    <h1>
        { name }
    </h1>
    <h2>
        { chosencheese }
    </h2>
  </div>

    <script>
        var that = this;
        this.name = "Action"

        var database = firebase.database();
        var cardsRef = database.ref('cards');
        var decksRef = cardsRef.child('decks');
        var originalRef = decksRef.child('original');

        this.cheeseContentList = [];
        var cheeseList = []; // array of all cheese card objects?
        originalRef.orderByChild('ingredient').equalTo('cheese').once('value', function (snapshot) {
            var data = snapshot.val();
            for (var key in data) {
                cheeseList.push(data[key]);
            }
            // console.log(cheeseList);

            that.cheeseContentList = cheeseList.map(function(dataObj) {
                // console.log("thisone", dataObj);
                return dataObj.content.text;
            });

            // console.log(that.cheeseContentList);
        });

         // use Math Random on the array push stuff from object into array from this, push specifically the content.text into another array this array will be used to pull data to randomize

        this.parent.on('squeak', function (e) {
            that.chooseCheese();
        });

        this.chooseCheese = function () {
            this.chosencheese = that.cheeseContentList[Math.floor(Math.random() * that.cheeseContentList.length)];
        };
        this.chooseCheese();
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
          background-color: #ffe185;
          box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
          }

    </style>

</play-cheese>
