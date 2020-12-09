# ts_challange_2
## Ruby Version 2.6.3
### Setup

* run db/schema.rb - to create tables
* run db/seed.rb - to seed from the csv file.
* run config.ru with "ruby config.ru"
* open browser to "http://localhost:3000/"
* Use either of the endpoints below

## People
### GET /people
`
{"data":[
    ["Abrahamson","Donnell"],["Adamczewski","Erhard"],["Adao","Orin"],etc .....
    ]
 }
`
 
## Person

### GET /person/{last_name}/{first_name}
`
{"data":
  {"id":"381",
  "first":"Phoebe",
  "last":"Brandon"}
}
`



