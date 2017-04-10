<shape>
    <h1>
        { name }
    </h1>
    <h2>
        { chosenshape }
    </h2>

    <script>
        var that = this;
        this.name = "Shape"

        var shapeList = [
            "Circle",
            "Rectangle",
            "Triangle",
            "Octagon",
            "Trapezoid",
            "Cube",
            "Cylinder",
            "Line"
        ];

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

</shape>
