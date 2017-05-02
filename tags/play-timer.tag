<play-timer>

    <p>Seconds Remaining: { time }</p>
    <p>{ timerdone }</p>

    <button type="button" onclick={ startTimer } disabled={ btnDisabled }>{ startname }</button>

    <button type="button" onclick={ resetTimer }>
        { resetname }</button>

    <script>
        var that = this;
				var timer;

				this.btnDisabled = false;

        this.resetname = "Reset";



        this.resetTimer = function () {
           console.log('Timer reset');
					 clearInterval(timer);
					 this.time = 60;
					 this.btnDisabled = false;
           that.update();
         };
        // this function should make the counter reset to 60 and then start the timer again };

        this.time = opts.start || 60
        this.timerdone = "";

        this.startname = "Start";


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
					timer = setInterval(this.tick, 1000);
          that.update();
        }



        this.on('unmount', function () {
            // clearInterval(timer)
        });
    </script>

    <style>
        :scope {}
    </style>

</play-timer>
