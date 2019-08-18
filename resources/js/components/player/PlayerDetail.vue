<template>
    <div>
        <h1 class="my-4">Arsenal
    <small>Edit Player : {{this.fname}}  {{this.lname}}</small>
    </h1>
    
        <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <div class="card-body">
                        <div class="card-title mb-4">
                            <div class="d-flex justify-content-start">
                                <div class="image-container">
                                    <img v-bind:src="this.picture" id="imgProfile" style="width: 300px; height: 300px" class="img-thumbnail" />
                                     
                                </div>
                                <div class="userData ml-3" style="padding-top:5%">
                                    <h5 class="d-block" style=" font-weight: bold"> Full name : {{this.fname}}  {{this.lname}}</h5>
                                    <h5 class="d-block" style=" font-weight: bold"> Birthdate : {{this.birthdate}} </h5>
                                    <h5 class="d-block" style=" font-weight: bold"> Position : {{this.position}} </h5>
                                    <h5 class="d-block" style=" font-weight: bold"> Number : {{this.id}} </h5>
                                    <h5 class="d-block" style=" font-weight: bold"> Since : {{this.signsince}} </h5>
                                </div>
                                <div class="ml-auto">
                                    <input type="button" class="btn btn-primary d-none" id="btnDiscard" value="Discard Changes" />
                                </div>
                            </div>
                        </div>

                        <!--<div class="row">
                            <div class="col-12">
                                <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="basicInfo-tab" data-toggle="tab" href="#basicInfo" role="tab" aria-controls="basicInfo" aria-selected="true">Basic Info</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="connectedServices-tab" data-toggle="tab" href="#connectedServices" role="tab" aria-controls="connectedServices" aria-selected="false">Connected Services</a>
                                    </li>
                                </ul>
                                <div class="tab-content ml-1" id="myTabContent">
                                    <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
                                        

                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Full Name</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                Jamshaid Kamran
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Birth Date</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                March 22, 1994.
                                            </div>
                                        </div>
                                        <hr />
                                        
                                        
                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Something</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                Something
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Something</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                Something
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Something</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                Something
                                            </div>
                                        </div>
                                        <hr />

                                    </div>
                                    <div class="tab-pane fade" id="connectedServices" role="tabpanel" aria-labelledby="ConnectedServices-tab">
                                        Facebook, Google, Twitter Account that are connected to this account
                                    </div>
                                </div>
                            </div>
                        </div>
                        -->

                    </div>

                </div>
            </div>
        </div>
    </div>
    </div>
</template>

<script>
    export default {
        
        
        
        props:['id'],
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
        
        data(){
            return{
                id:0,
                fname:'',
                lname:'',
                birthdate:'',
                position:'',
                signsince:'',
                picture:'',
                shirtpicture:''
            }
        },
    }
</script>
