<create-plate>
    <h1>plate</h1>

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

				.card {
					background-color: tomato;
          padding: 5px;
          margin: 5px;
					border: 1px solid #333;
				}


    </style>

</create-plate>
