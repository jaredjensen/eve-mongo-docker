from eve import Eve

app = Eve()

@app.route("/test")
def test():
    return "Test passed"

if __name__ == '__main__':
    app.run()
    