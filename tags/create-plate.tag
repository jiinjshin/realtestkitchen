<create-plate>
    <h1>plate</h1>
    <!-- <ul id="sortable1" class="connectedSortable">
        <li class="ui-state-default">Item 1</li>
        <li class="ui-state-default">Item 2</li>
        <li class="ui-state-default">Item 3</li>
        <li class="ui-state-default">Item 4</li>
        <li class="ui-state-default">Item 5</li>
    </ul> -->

		<div class="row">
			<div class="col-sm-6">

				<div class="card" each={ otherData }>
					{ id }: { content } { this }
					<button onclick={ parent.addToMyData }>ADD</button>
				</div>

			</div>
			<div class="col-sm-6">
				<div class="card" each={ myData }>
					{ id }: { content }
					<button onclick={ parent.removeFromMyData }>REMOVE</button>
				</div>
			</div>
		</div>



    <!-- <ul id="sortable2" class="connectedSortable">
        <li class="ui-state-highlight">Item 1</li>
        <li class="ui-state-highlight">Item 2</li>
        <li class="ui-state-highlight">Item 3</li>
        <li class="ui-state-highlight">Item 4</li>
        <li class="ui-state-highlight">Item 5</li>
    </ul> -->
    <script>
			this.addToMyData = function(event){
				console.log(event, event.item);
				var data = event.item;
				this.myData.push(data);

				console.log(this.myData);

				var index = this.otherData.indexOf(data);

				this.otherData.splice(index, 1);
			}

			this.removeFromMyData = function(event){
				var data = event.item;
				this.otherData.push(data);

				console.log(this.otherData);

				var index = this.myData.indexOf(data);

				this.myData.splice(index, 1);
			};
        // $(function () {
        //     $("#sortable1, #sortable2").sortable({connectWith: ".connectedSortable"}).disableSelection();
        // });

				// FIREBASE, grab some other data
				this.otherData = [
					{
						id: "k29459sfji3sb3",
						content: "Alpha"
					},
					{
						id: "k2924324i3sf97",
						content: "Bravo"
					},
					{
						id: "k2945afdsafeso",
						content: "Charlie"
					}
				];

				this.myData = [];


    </script>

    <style>
        :scope {}

        #sortable1,
        #sortable2 {
            border: 1px solid #eee;
            width: 142px;
            min-height: 20px;
            list-style-type: none;
            margin: 0;
            padding: 5px 0 0;
            float: left;
            margin-right: 10px;
        }
        #sortable1 li,
        #sortable2 li {
            margin: 0 5px 5px;
            padding: 5px;
            font-size: 1.2em;
            width: 120px;
        }

				.card {
					background-color: tomato;
					border: 1px solid #333;
				}


    </style>

</create-plate>
