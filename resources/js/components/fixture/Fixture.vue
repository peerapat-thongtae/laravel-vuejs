<template>
    <div>
        <h1 class="my-4">Arsenal
    <small>Fixtures</small>
  </h1>
        <div class="container">
            <div class="row">
    <!--<h3 class="h3"><a href="fixtures/create" class="btn btn-primary">Add Fixture</a> </h3> -->
    </div>
    <div>
    <table class="table table-hover">
  <thead class="thead-dark">
    <tr>
      
      
      <th colspan=3 align="center" scope="col">Result</th>
    </tr>
  </thead>
  <tbody>
      <tr align="center" v-for="(fixture) in fixtures" :key="fixture.match_id">
          <td>{{fixture.date}}</td>
          <td>{{fixture.time}}</td>
          <td>{{fixture.hometeam}}  &nbsp;&nbsp;{{fixture.scorehometeam}} - {{fixture.scoreawayteam}}&nbsp;&nbsp;  {{fixture.awayteam}}</td>
      </tr>


      
  </tbody>
    </table>
    </div>
    
    
    </div>
        
    </div>
    
</template>

<script>
    export default {
        mounted() {
            this.getFixtureData();
        },
        methods:{
            getFixtureData() {
                axios.get('api/fixtures').then(response=>{
                    this.fixtures=response.data;
                });
                
            }
        },
        data(){
            return{
                fixtures:[],
                fixture:{
                    match_id:0,
                    matchday:'',
                    round:'',
                    date:'',
                    time:'',
                    hometeam:'',
                    awayteam:'',
                    scorehometeam:'',
                    scoreawayteam:'',
                    competitions:'',

                }
            }
        }
    }
</script>
