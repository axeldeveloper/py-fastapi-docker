from pymongo import MongoClient
from urllib.parse import quote_plus

user = "root"
password = "demo123"
host = "127.0.0.1"
uri = "mongodb://%s:%s@%s" % (quote_plus(user), quote_plus(password),host)

#client = MongoClient(uri)

conn = MongoClient(uri)