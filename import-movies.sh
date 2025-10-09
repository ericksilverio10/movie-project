#!/bin/bash

# Script para importar todos os filmes do movies.json para a API
# Execute com: bash import-movies.sh

echo "Iniciando importação de filmes..."
echo ""

# Filme 1: Nosferatu
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Nosferatu",
    "movieImg": "https://cdn.shopify.com/s/files/1/0057/3728/3618/files/nosferatu_ver9_500x749.jpg?v=1734988704",
    "date": "2025-01-03",
    "erickRating": 5.0,
    "gabiRating": 5.5
}'
echo "✓ Nosferatu adicionado"
echo ""

# Filme 2: Interestelar
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Interestelar",
    "movieImg": "https://cdn.shopify.com/s/files/1/0057/3728/3618/files/interstellar-139399_500x749.jpg?v=1708527823",
    "date": "2025-01-12",
    "erickRating": 10.0,
    "gabiRating": 10.0
}'
echo "✓ Interestelar adicionado"
echo ""

# Filme 3: Babygirl
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Babygirl",
    "movieImg": "https://cdn.shopify.com/s/files/1/0057/3728/3618/files/babygirl_7v5fga9q_500x749.jpg?v=1731085513",
    "date": "2025-01-17",
    "erickRating": 6.0,
    "gabiRating": 5.0
}'
echo "✓ Babygirl adicionado"
echo ""

# Filme 4: Anora
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Anora",
    "movieImg": "https://cdn.shopify.com/s/files/1/0057/3728/3618/files/anora_zsv5lb9d_500x749.jpg?v=1728072817",
    "date": "2025-01-25",
    "erickRating": 7.0,
    "gabiRating": 6.0
}'
echo "✓ Anora adicionado"
echo ""

# Filme 5: Seven
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Seven",
    "movieImg": "https://cdn.shopify.com/s/files/1/0057/3728/3618/files/seven..mpw.122539_500x749.jpg?v=1709821255",
    "date": "2025-01-30",
    "erickRating": 9.0,
    "gabiRating": 9.0
}'
echo "✓ Seven adicionado"
echo ""

# Filme 6: Conclave
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Conclave",
    "movieImg": "https://cdn.shopify.com/s/files/1/0057/3728/3618/files/conclave_500x749.jpg?v=1728568827",
    "date": "2025-01-31",
    "erickRating": 8.0,
    "gabiRating": 7.0
}'
echo "✓ Conclave adicionado"
echo ""

# Filme 7: Todo Mundo Ainda Tem Problemas Sexuais
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Todo Mundo Ainda Tem Problemas Sexuais",
    "movieImg": "https://br.web.img3.acsta.net/img/aa/7c/aa7caae7fbd6e09350db67938c97de6b.jpg",
    "date": "2025-02-01",
    "erickRating": 8.0,
    "gabiRating": 8.0
}'
echo "✓ Todo Mundo Ainda Tem Problemas Sexuais adicionado"
echo ""

# Filme 8: Emília Pérez
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Emília Pérez",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/emilia-perez/13b5705e-4d73-4d76-93aa-c080678465c4.webp",
    "date": "2025-02-01",
    "erickRating": 5.0,
    "gabiRating": 7.5
}'
echo "✓ Emília Pérez adicionado"
echo ""

# Filme 9: Capitão América
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Capitão América",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/capitao-america-admiravel-mundo-novo/32bec8c8-408b-4a52-950c-511bb281cf25.webp",
    "date": "2025-02-15",
    "erickRating": 7.0,
    "gabiRating": 9.0
}'
echo "✓ Capitão América adicionado"
echo ""

# Filme 10: O Brutalista
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "O Brutalista",
    "movieImg": "https://www.claquete.com.br/fotos/filmes/poster/16309_grande.jpg",
    "date": "2025-02-21",
    "erickRating": 9.0,
    "gabiRating": 9.0
}'
echo "✓ O Brutalista adicionado"
echo ""

# Filme 11: Um Completo Desconhecido
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Um Completo Desconhecido",
    "movieImg": "https://www.claquete.com.br/fotos/filmes/poster/16322_grande.jpg",
    "date": "2025-03-01",
    "erickRating": 5.0,
    "gabiRating": 7.5
}'
echo "✓ Um Completo Desconhecido adicionado"
echo ""

# Filme 12: Uma Advogada Brilhante
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Uma Advogada Brilhante",
    "movieImg": "https://br.web.img2.acsta.net/img/4b/b9/4bb9f1701d99e1729cf53cd6180ae7d9.png",
    "date": "2025-03-07",
    "erickRating": 7.5,
    "gabiRating": 7.0
}'
echo "✓ Uma Advogada Brilhante adicionado"
echo ""

# Filme 13: Mickey 17
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Mickey 17",
    "movieImg": "https://upload.wikimedia.org/wikipedia/pt/a/ab/Mickey_17.webp",
    "date": "2025-03-09",
    "erickRating": 9.0,
    "gabiRating": 10.0
}'
echo "✓ Mickey 17 adicionado"
echo ""

# Filme 14: O Macaco
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "O Macaco",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/o-macaco/6c13ccdd-b9c0-4183-bce3-e90da3f7cd62.webp",
    "date": "2025-03-16",
    "erickRating": 7.0,
    "gabiRating": 5.0
}'
echo "✓ O Macaco adicionado"
echo ""

# Filme 15: Branca De Neve
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Branca De Neve",
    "movieImg": "https://upload.wikimedia.org/wikipedia/pt/thumb/2/24/Branca_de_neve_2025.webp/330px-Branca_de_neve_2025.webp.png",
    "date": "2025-03-21",
    "erickRating": 7.0,
    "gabiRating": 8.0
}'
echo "✓ Branca De Neve adicionado"
echo ""

# Filme 16: Vitória
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Vitória",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/vitoria/19da6c0c-5916-4c2d-a5ea-a757958a721f.webp",
    "date": "2025-03-30",
    "erickRating": 9.5,
    "gabiRating": 10.0
}'
echo "✓ Vitória adicionado"
echo ""

# Filme 17: Minecraft
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Minecraft",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/um-filme-minecraft/6a574e9c-040b-4612-ae44-785318a27193.webp",
    "date": "2025-04-04",
    "erickRating": 9.5,
    "gabiRating": 4.0
}'
echo "✓ Minecraft adicionado"
echo ""

# Filme 18: Drop
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Drop",
    "movieImg": "https://br.web.img2.acsta.net/img/af/61/af61f8101e93f5619fcceba8d0a4cbaf.jpg",
    "date": "2025-04-11",
    "erickRating": 8.5,
    "gabiRating": 9.0
}'
echo "✓ Drop adicionado"
echo ""

# Filme 19: Pecadores
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Pecadores",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/pecadores/7f6c9699-002e-43a8-adb3-49d2055014fd.webp",
    "date": "2025-04-19",
    "erickRating": 9.0,
    "gabiRating": 9.0
}'
echo "✓ Pecadores adicionado"
echo ""

# Filme 20: Hannah Montana
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Hannah Montana",
    "movieImg": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEKkwS8TkkEFW9--j5BXpuyz1uAy6F_rBCig&s",
    "date": "2025-04-25",
    "erickRating": 9.0,
    "gabiRating": 10.0
}'
echo "✓ Hannah Montana adicionado"
echo ""

# Filme 21: Thunderbolts
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Thunderbolts",
    "movieImg": "https://www.claquete.com.br/fotos/filmes/poster/15047_grande.jpg",
    "date": "2025-05-01",
    "erickRating": 7.0,
    "gabiRating": 8.0
}'
echo "✓ Thunderbolts adicionado"
echo ""

# Filme 22: Karate Kid Lendas
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Karate Kid Lendas",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/karate-kid-lendas/10cf649c-d76f-45bc-97fb-ddf89ea7c9ca.webp",
    "date": "2025-05-10",
    "erickRating": 10.0,
    "gabiRating": 10.0
}'
echo "✓ Karate Kid Lendas adicionado"
echo ""

# Filme 23: Premonição
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Premonição",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/premonicao-6-lacos-de-sangue/61244475-f2e0-4e54-9ed7-f15319124f4c.webp",
    "date": "2025-05-16",
    "erickRating": 9.0,
    "gabiRating": 7.0
}'
echo "✓ Premonição adicionado"
echo ""

# Filme 24: Hurry Up Tomorrow
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Hurry Up Tomorrow",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/hurry-up-tomorrow-alem-dos-holofotes/3367a0bb-3fc2-4813-abea-6c2361be81a6.webp",
    "date": "2025-05-17",
    "erickRating": 3.0,
    "gabiRating": 3.0
}'
echo "✓ Hurry Up Tomorrow adicionado"
echo ""

# Filme 25: Lilo & Stitch (sem data)
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Lilo & Stitch",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/lilo-e-stitch/67b31f6d-e938-4cfe-a7dc-78a0a17c86e4.webp",
    "date": "",
    "erickRating": 10.0,
    "gabiRating": 10.0
}'
echo "✓ Lilo & Stitch adicionado"
echo ""

# Filme 26: Como Treinar O Seu Dragão
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Como Treinar O Seu Dragão",
    "movieImg": "https://br.web.img3.acsta.net/img/2c/59/2c5907be8f52c06b3cba679cd43d2ed7.jpg",
    "date": "2025-06-08",
    "erickRating": 9.0,
    "gabiRating": 9.0
}'
echo "✓ Como Treinar O Seu Dragão adicionado"
echo ""

# Filme 27: Elio
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Elio",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/elio/12fe7bf7-334c-450b-b0d2-b61515bf7547.webp",
    "date": "2025-06-20",
    "erickRating": 7.5,
    "gabiRating": 7.5
}'
echo "✓ Elio adicionado"
echo ""

# Filme 28: F1
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "F1",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/f1-o-filme/3a0a118e-8bf3-4e10-b45d-f028cd49b001.webp",
    "date": "2025-06-27",
    "erickRating": 10.0,
    "gabiRating": 10.0
}'
echo "✓ F1 adicionado"
echo ""

# Filme 29: Superman
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Superman",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/superman/a396d4f6-5dc4-4eca-a40e-18bcc52abe05.webp",
    "date": "2025-07-11",
    "erickRating": 7.0,
    "gabiRating": 7.0
}'
echo "✓ Superman adicionado"
echo ""

# Filme 30: Eu Sei O Que Vocês Fizeram No Verão Passado
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Eu Sei O Que Vocês Fizeram No Verão Passado",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/eu-sei-o-que-voces-fizeram-no-verao-passado/e4bd1c17-ef96-4664-b92e-76a0623e7979.webp",
    "date": "2025-07-18",
    "erickRating": 7.0,
    "gabiRating": 7.0
}'
echo "✓ Eu Sei O Que Vocês Fizeram No Verão Passado adicionado"
echo ""

# Filme 31: Quarteto Fantástico
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Quarteto Fantástico",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/quarteto-fantastico-primeiros-passos/d280c63a-4691-47a7-9051-b5e8e6cda1a6.webp",
    "date": "2025-07-27",
    "erickRating": 10.0,
    "gabiRating": 10.0
}'
echo "✓ Quarteto Fantástico adicionado"
echo ""

# Filme 32: Amores Materialistas
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Amores Materialistas",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/amores-materialistas/be73fabc-98b3-4346-bd55-e278b7831461.webp",
    "date": "2025-08-02",
    "erickRating": 8.0,
    "gabiRating": 8.0
}'
echo "✓ Amores Materialistas adicionado"
echo ""

# Filme 33: Sexta Feira Mais Que Louca
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Sexta Feira Mais Que Louca",
    "movieImg": "https://br.web.img3.acsta.net/c_310_420/img/30/e3/30e3b423f0b42ff676e9faa6e9178fda.jpg",
    "date": "2025-08-08",
    "erickRating": 9.0,
    "gabiRating": 10.0
}'
echo "✓ Sexta Feira Mais Que Louca adicionado"
echo ""

# Filme 34: Corra, Que A Polícia Vem Aí!
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Corra, Que A Polícia Vem Aí!",
    "movieImg": "https://m.media-amazon.com/images/M/MV5BZTY0NjlmM2UtMzgxYi00MzA2LThiOGMtNGJlYzJhMDQ2ZjUyXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
    "date": "2025-08-16",
    "erickRating": 10.0,
    "gabiRating": 8.0
}'
echo "✓ Corra, Que A Polícia Vem Aí! adicionado"
echo ""

# Filme 35: Amores A Parte
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Amores A Parte",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/amores-a-parte/4e496489-380f-47e7-89b5-d5d2446c3ac2.webp",
    "date": "2025-08-24",
    "erickRating": 9.0,
    "gabiRating": 9.0
}'
echo "✓ Amores A Parte adicionado"
echo ""

# Filme 36: Os Roses: Até Que A Morte Nos Separe
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "Os Roses: Até Que A Morte Nos Separe",
    "movieImg": "https://br.web.img3.acsta.net/img/b1/76/b176b1012dd35baf9169c3330a67b71c.jpg",
    "date": "2025-08-30",
    "erickRating": 9.5,
    "gabiRating": 10.0
}'
echo "✓ Os Roses: Até Que A Morte Nos Separe adicionado"
echo ""

# Filme 37: O Rei Da Feira
curl --location 'https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM' \
--header 'Content-Type: application/json' \
--data '{
    "movieName": "O Rei Da Feira",
    "movieImg": "https://ingresso-a.akamaihd.net/prd/img/movie/o-rei-da-feira/bb1a73f8-3390-4511-9fa4-281a83213298.webp",
    "date": "2025-09-06",
    "erickRating": 2.0,
    "gabiRating": 2.0
}'
echo "✓ O Rei Da Feira adicionado"
echo ""

echo "================================"
echo "✅ Importação concluída! Total: 37 filmes"
echo "================================"

