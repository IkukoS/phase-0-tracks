schoeller_family = {
    mark:{
        gender:"male",
        age:50,

        birth_info: {
            year: 1966,
            month: "Novemver",
            date: 26
           },

        good_at:[
            "reading",
            "swiming"
           ]
       },
ikko:{
        gender:"female",
        age:45,
        
        birth_info:{
            year:1971,
            month:"November",
            date:15
        },    
        good_at:["cookig","having fun"]
        
    },
    
    anna:{
        gender:"female",
        age:10,
            birth_info:{
            year:2006,
            month:"September",
            date:9
        },
        good_at:["viollin",
                "diy"
            ]
    },

    kate:{
        gender:"female",
        age:8,
       
        birth_info:{
            year:2008,
            month:"November",
            date:4
        },
         good_at:[
            "writing",
            "being funny"
        ]
    },

    sara:{
        gender:"female",
        age:6,
       
        birth_info:{
            year:2011,
            manth:"February",
            date:2
        },
         good_at:[
            "gymnastics",
            "being nice"
        ]
    },

}


p schoeller_family[:mark][:age]
p schoeller_family[:kate][:good_at][1]
p schoeller_family[:ikko][:birth_info][:month]
p schoeller_family[:sara][:good_at][0..1]
p schoeller_family[:anna][:birth_info]