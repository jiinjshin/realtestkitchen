<cheese>

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
        var cheeseList = [
          "Chance: One more round; Get another turn",
          "Challenge: You cannot use words that start with the letter 'c'",
          "Chance: Steal a card for later",
          "Chance: Yes, this serves a purpose",
          "Chance: Block",
          "Chance: Steal a card for later",
          "Chance: Try again",
          "Chance: Yes, this is a novel idea",
          "Challenge: Include an item you see around you"

        ];

        this.parent.on('squeak', function(e){
          that.chooseCheese();
        });

        this.chooseCheese = function() {
            return this.chosencheese = cheeseList[Math.floor(Math.random() * cheeseList.length)];
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

</cheese>
