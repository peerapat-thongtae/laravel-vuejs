<template>
    <div>
        <h1 class="my-4">Arsenal
    <small>Add Player</small>
    </h1>
    
        <div class="container">
            <form action="/players">

                <div class="form-group">
    
                <label for="id">Number</label>
                <input type="number" class="form-control col-1" min=1 max=99 v-model="id" placeholder="Enter number">
                </div>
                <div class="form-group">
                <label for="fname">Name</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                    
                    </div>
                    <input type="text" class="form-control col-2" v-model="fname" placeholder="Enter Firstname">
                    <input type="text" class="form-control col-2" v-model="lname" placeholder="Enter Lastname">
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
                    
                    <button  class="btn btn-primary" v-on:click="addNewPlayer()">Add</button>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
    export default {
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
        computed : {
        years () {
          const year = new Date().getFullYear()
          return Array.from({length: year - 2000}, (value, index) => year - index)
        }
      },
        methods:{
            addNewPlayer(){
                axios.post('/api/players',{
                    id:this.id,
                    fname:this.fname,
                    lname:this.lname,
                    birthdate:this.birthdate,
                    position:this.position,
                    signsince:this.signsince,
                    picture:this.picture,
                    shirtpicture:this.shirtpicture
                });
                console.log("ok");
            }
        }
    }
</script>
