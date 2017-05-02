<play-randomizerbutton>
    <div class="row">
        <div class="col-md-12">
            <button type="button" class="drawButton" onclick={ pickCards }>
                { name }
            </button>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 cards">

            <play-shape></play-shape>
            <play-context></play-context>
            <play-function></play-function>
            <play-cheese></play-cheese>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <play-timer></play-timer>
        </div>
    </div>

    <script>

        this.name = "Draw new cards"
        this.pickCards = function () {
            console.log('button clicked');
            this.trigger('squeak');
        }
    </script>

    <style>
        :scope {
            justify-content: center;
        }
        .cards{
          display: flex;
          justify-content: center;
        }
        h1 {
            font-family: 'Bangers', cursive;
            text-align: center;
            font-weight: normal;
        }

        h2 {
            text-align: center;
            font-size: 26px;
        }

        .drawButton {
            width: 250px;
            color: #606060;
            height: 100px;
            padding: 20px;
            margin: 20px;
            font-family: 'Barrio', cursive;
            font-size: 25px;
            border-radius: 8px;
            border-style: none;
            background-color: #a6e7f0;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.1), 0 6px 20px 0 rgba(0,0,0,0.05);
        }

    </style>

</play-randomizerbutton>
