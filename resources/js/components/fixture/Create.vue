<template>
    <div>
        <h1 class="my-4">Arsenal
    <small>Add Player</small>
    </h1>
    
        <div class="container">
            <form action="/fixtures">
                <div class="form-group">
                <label for="competitions">Competitions</label>
                <select class="form-control col-2" v-model="competitions">
                    <option></option>
                    <option>EPL</option>
                    <option>UEL</option>
                    <option>FA</option>
                    <option>Carabao</option>
                    </select>
                </div>
                
                
                <div class="form-group">
                <label for="round">round</label>
                <select class="form-control col-2" v-model="round">
                    
                    <option>League</option>
                    <option>Round of 64</option>
                    <option>Round of 32</option>
                    <option>Round of 16</option>
                    <option>Round of 8</option>
                    <option>Semi Final</option>
                    <option>Final</option>
                    </select>
                </div>
            

            
    <div class="form-group">
        <label for="hometeam">Home</label>
        
        <input type="text" class="form-control col-3"  v-model="hometeam">
        
    </div>
    <div class="form-group">
        <label for="awayteam">Away</label>
        
        <input type="text" class="form-control col-3"  v-model="awayteam">
        
    </div>
    <div class="form-group">
        <label for="stadium">Stadium</label>
        
        <input type="text" class="form-control col-3"  v-model="stadium">
        
    </div>
    <div class="form-group">
        <label for="date">Date</label>
        
        <input type="date" class="form-control col-3"  v-model="date">
        
    </div>
    <div class="form-group">
        <label for="time">Time</label>
        
        <input type="time" class="form-control col-3"  v-model="time">
        
    </div>

    
                <div class="form-group">
                    
                    <button  class="btn btn-primary" v-on:click="addNewFixture()">Add</button>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
    export default {
        data(){
            return{
                hometeam:'',
                awayteam:'',
                date:'',
                time:'',
                stadium:'',
                competitions:'',
                round:0,
                match_id:0
                
            }
        },
        computed : {
        years () {
          const year = new Date().getFullYear()
          return Array.from({length: year - 2000}, (value, index) => year - index)
        }
      },
        methods:{
            addNewFixture(){
                axios.post('/api/fixtures',{
                    hometeam:this.hometeam,
                    awayteam:this.awayteam,
                    date:this.date,
                    time:this.time,
                    stadium:this.stadium,
                    competitions:this.competitions,
                    round:this.round,
                    match_id:this.match_id
                });
                console.log("ss");
            }
        }
    }
</script>
