<template>
    <div>
        <h1 class="my-4">Arsenal
    <small>Players</small>
  </h1>
        <div class="container">
            <div class="row">
    <h3 class="h3"><a href="players/create" class="btn btn-primary">Add Player to Team</a> </h3>
    </div>
    <div class="row" >
        <div class="col-md-3 col-sm-6" v-for="(player,index) in players" :key="player.id">
            <div class="product-grid">
                <div class="product-image">
                    <a :href="'/players/'+player.id">
                        <img class="pic-1" v-bind:src="player.picture ">
                        
                    </a>
                    <ul class="social">
                        <li><a :href="'/players/'+player.id" data-tip="Player Detail"><i class="fa fa-search"></i></a></li>
                        <li><a href="javascript:;" data-tip="Out"><i class="fa fa-minus-circle" 
                        v-on:click="deletePlayer(player.id,index)"></i></a></li>
                    </ul>
                    <span class="product-new-label">{{player.id}}</span>
                    <span class="product-discount-label">{{player.position}}</span>
                </div>
                
                <div class="product-content">
                    <h3 class="title"><a href="#"></a></h3>
                    <div class="price">{{player.fname}}  {{player.lname}}
                        
                    </div>
                    <a :href="'/players/'+player.id+'/edit'" class="add-to-cart" ><i class="fa fa-pencil-square-o"> </i> Edit</a>
                </div>
            </div>
        </div>
        <br /><br />
        
    </div>
    
    <hr>
    </div>
        <!--<div class="container">
            <table class="table table-bordered">
                <tr>
                    
                    <td>ชื่อ</td>
                    <td>จังหวัด</td>
                    <td>แก้ไข</td>
                    <td>ลบ</td>
                </tr>
                <tr v-for="(user,index) in users" :key="user.id"> 
                    
                    <td>{{user.name}}</td>
                    <td>{{user.city}}</td>
                    <td><a :href="'/users/'+user.id+'/edit'" class="btn btn-primary">Edit</a></td>
                    <td><a href="javascript:;" class="btn btn-danger" v-on:click="deleteUser(user.id,index)">Delete</a></td>
                </tr>
            </table>

            <a href="users/create" class="btn btn-primary">Add new user</a>
            
        </div>!-->
    </div>
</template>

<script>
    export default {
        mounted() {
            this.getPlayerData();
        },
        methods:{
            getPlayerData() {
                axios.get('api/players').then(response=>{
                    this.players=response.data;
                });
                
            },
            deletePlayer(id,index) {
                if(confirm("Do you really want to delete?")){
                axios.delete('api/players/'+id).then(response=>{
                    this.players.splice(index,1);
                });
                }
            }
        },
        data(){
            return{
                players:[],
                player:{
                    id:0,
                    fname:'',
                    lname:'',
                    birthdate:'',
                    position:'',
                    picture:'',
                    shirtpicture:''
                }
            }
        }
    }
</script>
