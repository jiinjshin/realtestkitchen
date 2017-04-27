<play-timer>

    <p>Seconds Remaining: { time }</p>
    <p>{ timerdone }</p>

    <button type="button" onclick={ resetTimer }>Reset</button>

    <script>
        this.time = opts.start || 60
        this.timerdone = "";

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
        var timer = setInterval(this.tick, 1000);

        this.on('unmount', function () {
            clearInterval(timer)
        });

        this.resetTimer = function() {
          this.time = opts.start;
        });
        }

    </script>

    <style>
      :scope {

      }
    </style>

</play-timer>
