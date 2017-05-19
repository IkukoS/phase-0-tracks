# nested date with clothes

clothes = {
    hat: [
        'sun visor', 
        'baseball cap', 
        'straw hat'
    ],
    tops:[
         shirts:[
            'long sleeves',
            'short sleeves'
            ], 
        blouse:[
            'stripes',
            'polka dot'
            ], 
        jackets:[
            'blue',
            'brouwn'
            ], 
        coat:[
            'spring',
            'rain'
        ]
    ],
    bottoms:[
        'Pants',
        'skirt',
        'shorts'
    ],
    shoes:[
        sneakers:{
            expenseive: 'running',
            cheap: 'eveyday_use'
            },
        boots:{
            sunny: 'leather boots',
            raniy: 'rain boots '
            },
        highheels:{ 
            super_high: '3_inches',
            medium_high: '2_inches',
            low: '1_inch'
            }
        ]
    

}

puts clothes
puts clothes[:hat]
puts clothes[:bottoms][1]
puts clothes[:shoes][:sneakers]
