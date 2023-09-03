import pymongo
conn=pymongo.MongoClient("mongodb://localhost:27017/")

#print (conn.list_database_names())

db=conn['testDB']
coll=db['testColl']

#list DBs
# print(conn.list_database_names())

#female students
# for i in coll.find({"gender":"female"}):
#     print(i["name"]["fname"])

# male students with A+
# for i in coll.find({"gender":"male","grade":"A+"}):
#     print(i["name"]["fname"],i["grade"])

# topper of mca
# for i in coll.find({"course":"MCA"}).sort("mark",-1).limit(1):
#     print(i["name"]["fname"])

#top 3 in mech
# for i in coll.find({"course":"Mechanical"}).sort("mark",-1).limit(3):
#     print(i["name"]["fname"],i["name"]["lname"])
#     print(i["mark"])

#female above 90
# for i in coll.find({"gender":"female"}):
#     if(i["mark"]>90):
#         print(i["name"]["fname"])

#between 80 and 90
# for i in coll.find():
#     if(i["mark"]>80 and i["mark"]<90):
#         print(i["name"]["fname"])

#starts with "V"
# for i in coll.find():
#     if(i["name"]["fname"]).startswith("V"):
#         print(i["name"]["fname"])
#ends with "L"
# for i in coll.find():
#     if(i["name"]["fname"]).endswith("l"):
#         print(i["name"]["fname"])

#from Kollam
# for i in coll.find():
#     if (i["address"]["city"]=="Kollam"):
#         print(i["name"]["fname"])

#not from Kollam and Tvm
# for i in coll.find():
#     if (i["address"]["city"]!="Kollam" and i["address"]["city"]!="Thiruvananthapuram"):
#         print(i["name"]["fname"])

#from Kollam or Tvm
# for i in coll.find():
#     if (i["address"]["city"]=="Kollam" or i["address"]["city"]=="Thiruvananthapuram"):
#         print(i["name"]["fname"])

#starts with "V" using $regex
# for i in coll.find({"name.fname":{"$regex":"^V"}}):
# 	print(i["name"]["fname"])