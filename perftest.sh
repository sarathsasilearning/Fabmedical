host="fabmedical-mpe.mongo.cosmos.azure.com"
username="fabmedical-mpe"
password="[kqBgi6ZVuwFQAGu5GepmDHydADp1myNPGnX9xSXc60cgRG1WCbPb7Kk3ouOlnvITZbcAqdRiGg25pz2iWujrng==]"
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
