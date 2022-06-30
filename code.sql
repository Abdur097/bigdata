# Studi kasus 1
# Melakukan pencarian data dengan menampilkan nama negara, terkonfirmasi, kematian, sembuh dengan menampilkan data berdasarkan angka kematian lebih dari 100 ribu

SELECT
country_name,
confirmed,
deaths,
recovered
FROM `covid-assistant.covid.Hevo_snapshot_world_covid.`
WHERE deaths > 100000
ORDER BY deaths

# Studi kasus 2
# Melakukan pencarian data dengan menampilkan data nama negara dan jumlah negara paling banyak 

SELECT
country_name,
COUNT(1) AS count
FROM `covid-assistant.covid.Hevo_snapshot_world_covid.`
GROUP BY country_name
ORDER BY count DESC


# Studi Kasus 3
# Melakukan pencarian data dengan menampilkan nama negara, terkonfirmasi, kematian, sembuh dan tanggal dengan menampilkan data berdasarkan tahun 2020 kematian terbanyak.

SELECT
country_name,
confirmed,
deaths,
recovered,
last_updated AS date
FROM `covid-assistant.covid.Hevo_snapshot_world_covid.`
WHERE DATE(last_updated) BETWEEN '2020-01-01' AND '2020-12-31'
ORDER BY deaths DESC
LIMIT 100
