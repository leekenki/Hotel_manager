import requests

url='http://google.com'
movie = requests.get(url)
print(movie.text)
