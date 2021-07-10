from flask import Flask

app = Flask(__name__)

@app.route("/")
def HelloKitty():
	return "<h2>에이치 원</h2>"
#	return "부산에는 비와요.... 반가와욤 주수홍입니다..."

if __name__ == "__main__":
	app.run(host="0.0.0.0")

