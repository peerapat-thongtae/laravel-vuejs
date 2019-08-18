<template>
    <div>
        <h1 class="my-4">Arsenal
    <small>Edit Player : {{this.fname}}  {{this.lname}}</small>
    </h1>
    
        <div class="container">
            
            <form action="/players">

                <div class="form-group">
    
                <label for="id">Number</label>
                <input type="number" class="form-control col-2" min=1 max=99 v-model="id" placeholder="Enter number">
                </div>
                <div class="form-group">
                <label for="fname">Name</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                    
                    </div>
                    <input type="text" class="form-control" v-model="fname" placeholder="Enter Firstname">
                    <input type="text" class="form-control" v-model="lname" placeholder="Enter Lastname">
            </div>
            </div>
                <div class="form-group">
                    <label>Birthdate : </label>
                    <input type="date" class="form-control col-2" v-model="birthdate">
                    
                </div>
            <div class="form-group">
                <label for="position">Position</label>
                <select class="form-control col-2" v-model="position">
                    <option></option>
                    <option>GK</option>
                    <option>DF</option>
                    <option>MF</option>
                    <option>FW</option>
                    </select>
            </div>

            <div class="form-group">
        <label for="signsince">Sign Since</label>
        
        <select class="form-control col-2" v-model="signsince" >
            <option v-for="year in years" :value="year" :key="year">{{ year }}</option>
        </select>
        
    </div>

    <div class="form-group">
    
    <label for="picture">URL Picture</label>
        <input type="text" class="form-control col-3"  v-model="picture" placeholder="Enter Picture URL">
    </div>
    <div class="form-group">
    <label for="shirtpicture">URL Shirt Picture</label>
        <input type="text" class="form-control col-3"  v-model="shirtpicture" placeholder="Enter Shirt Picture URL">
    </div>
                <div class="form-group">
                    
                    <button  class="btn btn-primary" v-on:click="updatePlayer()">Edit</button>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
    export default {
        props:['id'],
        data(){
            return{
                id:'',
                fname:'',
                lname:'',
                birthdate:'',
                position:'',
                signsince:'',
                picture:'',
                shirtpicture:''
            }
        },
        mounted() {
            axios.get('/api/players/'+this.id).then(response=>{
                console.log(response.data);
                var player=response.data;
                this.id=player.id;
                this.fname=player.fname;
                this.lname=player.lname;
                this.birthdate=player.birthdate;
                this.position=player.position;
                this.signsince=player.signsince;
                this.picture=player.picture;
                this.shirtpicture=player.shirtpicture;
            });

        },
        computed : {
        years () {
          const year = new Date().getFullYear()
          return Array.from({length: year - 2000}, (value, index) => year - index)
        }
      },
        methods:{
            updatePlayer() {
                
                axios.put('/api/players/'+this.id,{
                    
                    id:this.id,
                    fname:this.fname,
                    lname:this.lname,
                    birthdate:this.birthdate,
                    position:this.position,
                    signsince:this.signsince,
                    picture:this.picture,
                    shirtpicture:this.shirtpicture
                    
                });
                console.log("EDIT SUCCESS");
                
            }
        }
    }
</script>
