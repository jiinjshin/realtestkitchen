<app-navi>

  <button if={ !user } class="btn btn-success pull-right" onclick={ logIn }>LOGIN</button>
  <button if={ user } class="btn btn-danger pull-right" onclick={ logOut }>LOGOUT</button>

    <nav>
        <a href="#play">Play</a>
        <a href="#comm">Community</a>
        <a href="#search">Search</a>
        <a href="#help">Help</a>
        <a href="#create" if={ user }>Create</a>
        <a href="#profile" if={ user }>Profile</a>
    </nav>

    <play if={ page==='play' }></play>
    <comm if={ page==='comm' }></comm>
    <search if={ page==='search' }></search>
    <help if={ page==='help' }></help>
    <create if={ user && page==='create'}></create>
    <profile if={ user && page==='profile'}></profile>

    <!-- route filter stuff -->

    <script>

    var that = this;
    // console.log('app-navi.tag');

    this.page = "play"; // Default page

    var appRoute = route.create();
        appRoute('*/..', function(page, subpage){
          that.page = page;
        });
        appRoute('*', function(page) {
          that.page = page;
          that.update();
        });

    route.start(true);

    // authentication

    this.user = firebase.auth().currentUser;

    firebase.auth().onAuthStateChanged(function(userObj) {
			that.user = firebase.auth().currentUser;
			that.update();
		});

		logIn(event) {
			// Specify that you want to sign up with Google authentication
			var provider = new firebase.auth.GoogleAuthProvider();

			// Popover signup is probably the most simple and trusted.
			firebase.auth().signInWithPopup(provider);
		}

		logOut(event) {
			firebase.auth().signOut();
		}

    </script>

    <style>
    :scope {
        display: block;
    }
    nav {
        display: flex;
    }
    nav a {
        width: 33.33333333%;
        display: block;
        background-color: white;
        padding: 10px;
        text-decoration: none;
        color: #333;
        font-weight: bold;
        text-align: center;
    }
    nav a:not(:last-child) {
        margin-right: 1px;
    }
    nav a:hover {
        background-color: oldlace;
    }
    </style>

</app-navi>
