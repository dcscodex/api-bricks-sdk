all: coin_api_test

clean:
	rm coin_api_test 

coin_api_test: coin_api_test.cpp coin_api.h
	g++ -std=c++11 coin_api_test.cpp -o coin_api_test -lboost_system -lcpprest -lcrypto -lssl




