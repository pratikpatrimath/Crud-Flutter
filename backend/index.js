const express=require("express");

const app=express();
//to take file in json format
app.use(express.json());
//to fetch file from url to undersatnd the user
app.use(express.urlencoded({extended:true}));

const personData=[];

port=3000;
app.listen(port,()=>{
console.log(`Server is running on port ${port}`);
});

//Post API
app.post("/api/add_person",(req,res)=>{
    console .log("Request body is",req.body);
    const pdata={
        "id":personData.length+1,
        "pname":req.body.name,
        "pmobile":req.body.mobile,
        "page":req.body.age,    
    };
    personData.push(pdata);
    console.log("Fonal result are",pdata);
  
    res.status(200).send({
        "Status_code":"200",
        "message":"Data added successfully",
        "data":pdata
    });
})

//Get API
app.get("/api/get_person",(req,res)=>{
    if(personData.length>0){
    res.status(200).send({
        "Status_code":"200",
        "person":personData,    
    });
    }
    else{
        res.status(200).send({
            "Status_code":"200",
            "person":[]
        });
    }
})