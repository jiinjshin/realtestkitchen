<play-timer>

    <div class="wholeThing">

        <p>{ timerdone }</p>
        <p>
            <span class="secondtext">Seconds Remaining:</span>
            <span class="time">{ time }</span>
        </p>

        <button class="btn btn-lg" type="button" onclick={ startTimer } disabled={ btnDisabled }>
            <span class="glyphicon glyphicon-play" aria-hidden="true"></span>
        </button>

        <button class="btn btn-lg" type="button" onclick={ resetTimer }>
            <span class="glyphicon glyphicon-repeat" aria-hidden="true"></span>
        </button>

    </div>

    <script>
        var that = this;
        var timer;

        this.btnDisabled = false;

        this.resetTimer = function () {
            console.log('Timer reset');
            clearInterval(timer);
            this.time = 60;
            this.btnDisabled = false;
            this.timerdone = "---";
            that.update();
        };
        // this function should make the counter reset to 60 and then start the timer again };

        this.time = opts.start || 60
        this.timerdone = "---";

        // this tick should be paused

        tick() {

            this.update({
                time: --this.time
            })

            if (this.time == 0) {
                clearInterval(timer);
                this.timerdone = "Time's Up!";
                this.update();
            }
        }

        this.startTimer = function () {
            console.log('start timer');
            this.btnDisabled = true;
            timer = setInterval(this.tick, 10);
            that.update();
        }

        this.on('unmount', function () {
            // clearInterval(timer)
        });
    </script>

    <style>
        :scope {
            display: flex;
            justify-content: center;
        }

        p {
            margin: 0;
        }

        .wholeThing {

            width: 250px;
            color: #FFFFFF;
            height: 225px;
            padding: 20px;
            margin: 20px;
            font-family: 'Barrio', cursive;
            font-size: 25px;
            border-radius: 8px;
            border-style: none;
            background-color: #313131;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.1), 0 6px 20px 0 rgba(0,0,0,0.05);
        }
        .btn {
            background-color: transparent;
            border-radius: 4px;
            border-style: none;
            font-size: 1.2em;
        }
        .btn:hover {
            color: red;
        }
        .secondtext {
            font-size: 0.65em;
            font-family: 'Lucida Console';
        }
        .time {
            font-size: 2em;
            font-family: 'Lucida Console';
        }

    </style>

</play-timer>
