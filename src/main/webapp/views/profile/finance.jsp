<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>

<script>
  let socket;
  //connect부분은 쓰레기 코드인데 어떻게 객체화해야할지 모르겠어서 대충하겠다...너무 지친다...
  function connect() {
    var url = "wss://api.upbit.com/websocket/v1"; // WebSocket 엔드포인트 URL

    // WebSocket 생성
    socket = new WebSocket(url);
    socket2 = new WebSocket(url);
    socket3 = new WebSocket(url);
    socket4 = new WebSocket(url);

    // WebSocket 이벤트 핸들러 정의
    socket.onopen = function(event) {
      console.log("WebSocket opened");
      // 서버로 메시지 전송 예시
      let message1 = JSON.stringify([{"ticket":"test"},{"type":"ticker","codes":["KRW-BTC"]}]);
      socket.send(message1);
    };
    socket2.onopen = function(event) {
      console.log("WebSocket opened");
      // 서버로 메시지 전송 예시
      let message2 = JSON.stringify([{"ticket":"test"},{"type":"ticker","codes":["KRW-ETH"]}]);
      socket2.send(message2);
    };
    socket3.onopen = function(event) {
      console.log("WebSocket opened");
      // 서버로 메시지 전송 예시
      let message3 = JSON.stringify([{"ticket":"test"},{"type":"ticker","codes":["KRW-DOGE"]}]);
      socket3.send(message3);
    };
    socket4.onopen = function(event) {
      console.log("WebSocket opened");
      // 서버로 메시지 전송 예시
      let message4 = JSON.stringify([{"ticket":"test"},{"type":"ticker","codes":["KRW-ADA"]}]);
      socket4.send(message4);
    };

    //소켓 메세지
    socket.onmessage = function(event) {
      let reader = new FileReader();
      reader.onload = function() {
        //console.log("Received message: ", reader.result);
        // let key = "trade_price";
        let jsonString = reader.result; // 문자열 값
        let json = JSON.parse(jsonString); // JSON 형식으로 변환된 객체
        let trade_price = Number(json["trade_price"]); // 숫자로 변환
        let formatted_trade_price = trade_price.toLocaleString("ko-KR", { style: "currency", currency: "KRW" });
        $("#content1_msg").text(formatted_trade_price);
      };
      reader.readAsText(event.data);
      // $('#bitcoin').text(json["trade_price"]);
    };
    socket2.onmessage = function(event) {
      let reader = new FileReader();
      reader.onload = function() {
        //console.log("Received message: ", reader.result);
        // let key = "trade_price";
        let jsonString = reader.result; // 문자열 값
        let json = JSON.parse(jsonString); // JSON 형식으로 변환된 객체
        let trade_price = Number(json["trade_price"]); // 숫자로 변환
        let formatted_trade_price = trade_price.toLocaleString("ko-KR", { style: "currency", currency: "KRW" });
        $("#content2_msg").text(formatted_trade_price);
      };
      reader.readAsText(event.data);


      // $('#bitcoin').text(json["trade_price"]);
    };
    socket3.onmessage = function(event) {
      let reader = new FileReader();
      reader.onload = function() {
        //console.log("Received message: ", reader.result);
        // let key = "trade_price";
        let jsonString = reader.result; // 문자열 값
        let json = JSON.parse(jsonString); // JSON 형식으로 변환된 객체
        let trade_price = Number(json["trade_price"]); // 숫자로 변환
        let formatted_trade_price = trade_price.toLocaleString("ko-KR", { style: "currency", currency: "KRW" });
        $("#content3_msg").text(formatted_trade_price);
      };
      reader.readAsText(event.data);


      // $('#bitcoin').text(json["trade_price"]);
    };
    socket4.onmessage = function(event) {
      let reader = new FileReader();
      reader.onload = function() {
        //console.log("Received message: ", reader.result);
        // let key = "trade_price";
        let jsonString = reader.result; // 문자열 값
        let json = JSON.parse(jsonString); // JSON 형식으로 변환된 객체
        let trade_price = Number(json["trade_price"]); // 숫자로 변환
        let formatted_trade_price = trade_price.toLocaleString("ko-KR", { style: "currency", currency: "KRW" });
        $("#content4_msg").text(formatted_trade_price);
      };
      reader.readAsText(event.data);


      // $('#bitcoin').text(json["trade_price"]);
    };


    socket.onclose = function(event) {
      console.log("WebSocket closed");
    };
    socket2.onclose = function(event) {
      console.log("WebSocket closed");
    };
    socket3.onclose = function(event) {
      console.log("WebSocket closed");
    };
    socket4.onclose = function(event) {
      console.log("WebSocket closed");
    };

    socket.onerror = function(error) {
      console.error("WebSocket error:", error);
    };
    socket2.onerror = function(error) {
      console.error("WebSocket error:", error);
    };
    socket3.onerror = function(error) {
      console.error("WebSocket error:", error);
    };
    socket4.onerror = function(error) {
      console.error("WebSocket error:", error);
    };


  }


  function disconnect() {
    if (socket) {
      socket.close();
      console.log("WebSocket disconnected");
    }
  }

  let portfolio= {
    init : ()=>{
      $('#portfolioBuy').click(()=>{
        portfolio.display();
      })//
    },//portfolio - init
    display : ()=>{
      // Data retrieved from https://netmarketshare.com
      Highcharts.chart('container2', {
        chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
          type: 'pie'
        },
        title: {
          text: '현재 "홍길동"님의 포트폴리오',
          align: 'left'
        },
        tooltip: {
          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        accessibility: {
          point: {
            valueSuffix: '%'
          }
        },
        plotOptions: {
          pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
              enabled: true,
              format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            }
          }
        },
        series: [{
          name: '포트폴리오 비율',
          colorByPoint: true,
          data: [{
            name: 'Tesla',
            y: 18,
            sliced: true,
            selected: true
          }, {
            name: 'Microsoft',
            y: 14.77
          },  {
            name: 'Exxon Mobil',
            y: 4.86
          }, {
            name: 'Treasury note',
            y: 2.63
          }, {
            name: 'Alphabet',
            y: 1.53
          }]
        }]
      });

    }
  }//portfolio


  let bsExchange = {
    init : ()=>{
      $('#bsExchangee_btn').click(()=>{
        console.log("clicked");
        $('#myModal').modal('show');
        $.ajax({
          url:'/sales/bsexchange/generate',
          type: 'get',
          data: {
            corp_code : '00126380',
            bsns_year : '2022',
            reprt_code : '11011'
          }
        }).done(
                (data)=>{
                  console.log("success");
                  bsExchange.display(data);
                }
        )
                .fail(
                        ()=>{
                          console.log("failure");
                        }
                );
      })
    },

    display:(data)=>{
      const parsedData = JSON.parse(data);
      console.log("====");
      const tableBody = $('.table tbody');
      let year= 2022;
      $('#th1').text(year-2);
      $('#th2').text(year-1);
      $('#th3').text(year);

      tableBody.empty(); // 기존 테이블 내용 제거
      for(let i = 0 ; i<=25 ; i++) {
        const item = parsedData.list[i];
        if (item) {
          const row = $('<tr></tr>');
          const countryCell = $('<td></td>').text(item.account_nm);
          const sellRateCell = $('<td></td>').text(item.bfefrmtrm_amount);
          const buyRateCell = $('<td></td>').text(item.frmtrm_amount);
          const seoulRate = $('<td></td>').text(item.thstrm_amount);
          row.append(countryCell);
          row.append(sellRateCell);
          row.append(buyRateCell);
          row.append(seoulRate);

          tableBody.append(row);
        }
      }
    }
  }
  let stocksearch = {
    init : ()=>{
      $('#stockSearch_btn').click(()=>{
        $('.progress').show();
        stocksearch.startProgressBar();
        let keywords = $('#searchCompany').val();
        console.log("주식목록 찾아오기 clicked");
        $.ajax({
          url:'/finance/investment/search',
          type: 'GET',
          data: {
            keywords : keywords
          }
        }).done(
                (data)=>{

                  console.log("주식 목록 찾아오기 success");
                  stocksearch.display(data);
                }
        ).fail(
                ()=>{
                  console.log("주식목록 찾아오기 failure");
                }
        );

        stockexchange.display();
      })
    },//stocksearch.init;
    display : (data)=>{
      $('#tableFX').show();
      const bestMatches = JSON.parse(data).bestMatches;
      console.log(bestMatches);
      const tableBody = $('.table tbody');
      tableBody.empty(); // 기존 테이블 내용 제거
      for (let seq in bestMatches) {
        let item = bestMatches[seq];
        const row = $('<tr></tr>');
        let symbol = $('<td></td>').text(item["1. symbol"]);
        console.log(item["1. symbol"]);
        let name = $('<td></td>').text(item["2. name"]);
        let region = $('<td></td>').text(item["4. region"]);
        let button = $(`<td><button class="btn danger"></button></td>`).append(`<i class='fas fa-chart-line' style='font-size:18px'></i>`);
        button.on('click', function() {
          // Handle the button click event here
          console.log('Button clicked for symbol:', item["1. symbol"]);
          let symbol2 = item["1. symbol"];
          stockexchange.click(symbol2);
        });
        row.append(symbol);
        row.append(name);
        row.append(region);
        row.append(button);
        tableBody.append(row);
      }
    },
    hideProgressBar: () => {
      if (stocksearch.progressBar) {
        stocksearch.progressBar.stop().css('width', '0');
      }
    },
    startProgressBar: () => {
      stocksearch.progressBar = $('.progress-bar');
      stocksearch.progressBar.css('width', '0').animate({
        width: '100%'
      }, 1000, () => {
        $('.progress').hide();
      });
    },
  }
  // Data retrieved https://en.wikipedia.org/wiki/List_of_cities_by_average_temperature
  let stockexchange = {
    init : ()=>{
      $('#chatGPT_btn').click(()=>{
        let symbol = $('#request').val();
        console.log("주식 목록 찾는 버튼 클릭");
        $('.progress').show();
        stockexchange.startProgressBar();
        $.ajax({
          url:'/finance/investment/generate',
          type: 'GET',
          data: {
            symbol : symbol
          }
        }).done(
                (data)=>{
                  console.log("주식 목록 불러오기 success");
                  stockexchange.display(data);
                }
        )
                .fail(
                        ()=>{
                          console.log("주식 목록 불러오기 failure");
                        }
                );

        stockexchange.display();
      })

    },
    click: (symbol2)=>{
      $('.progress').show();
      $.ajax({
        url:'/finance/investment/generate',
        type: 'GET',
        data: {
          symbol : symbol2
        }

      }).done(
              (data)=>{
                console.log("주식 목록 불러오기 succes");
                stockexchange.display(data);
              }
      )
              .fail(
                      ()=>{
                        console.log("주식 목록 불러오기 failure");
                      }
              );
    },
    hideProgressBar: () => {
      if (stockexchange.progressBar) {
        stockexchange.progressBar.stop().css('width', '0');
      }
    },
    startProgressBar: () => {
      stockexchange.progressBar = $('.progress-bar');
      stockexchange.progressBar.css('width', '0').animate({
        width: '100%'
      }, 10000, () => {
        $('.progress').hide();
      });
    },
    display : (data)=>{
      const obj = JSON.parse(data);
      console.log(obj);
      $('#companyname').val(obj["Meta Data"]["2. Symbol"].toUpperCase());
      $('#stockprice').val(obj["Time Series (Daily)"]["2023-05-15"]["1. open"]);
      //chart
      const set = obj["Time Series (Daily)"];
      let ranges = [];
      let averages = [];
      for (let date in set) {
        let item = set[date];
        let low = parseInt(item["3. low"]);
        let high = parseInt(item["2. high"]);
        let open = parseInt(item["1. open"]);
        ranges.push([low, high]);
        averages.push([open]);
      }
      console.log("=====1======");
      console.log(ranges);
      console.log("=====2======");
      console.log(averages);
      Highcharts.chart('container', {

        title: {
          text: 'STOCK TREND : ' + obj["Meta Data"]["2. Symbol"].toUpperCase(),
          align: 'left'
        },

        subtitle: {
          text: '통화기준 : $USD'+' __ powered by Alpha Vantage in NYSE',
          align: 'left'
        },

        xAxis: {
          type: 'datetime',
          accessibility: {
            rangeDescription: 'Range: Jul 1st 2022 to Jul 31st 2022.'
          }
        },

        yAxis: {
          title: {
            text: 'Stock Price - USD'
          }
        },

        tooltip: {
          crosshairs: true,
          shared: true,
          valueSuffix: '$'
        },

        plotOptions: {
          series: {
            pointStart: Date.UTC(2022, 12, 19),
            pointIntervalUnit: 'day'
          }
        },

        series: [{
          name: obj["Meta Data"]["2. Symbol"].toUpperCase(),
          data: averages,//변수 data
          zIndex: 1,
          marker: {
            fillColor: 'white',
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[0]
          }
        }, {
          name: '최고가 - 최저가',
          data: ranges,//변수 data
          type: 'arearange',
          lineWidth: 0,
          linkedTo: ':previous',
          color: Highcharts.getOptions().colors[0],
          fillOpacity: 0.3,
          zIndex: 0,
          marker: {
            enabled: false
          }
        }]
      });

    }//display
  }//



  $(()=>{
    $('#tableFX').hide();
    $('.progress').hide();
    bsExchange.init();
    stocksearch.init();
    stockexchange.init();
    portfolio.init();
    connect();


  })
</script>

<div class="col-lg-9 ps-lg-5">
  <div class="row">
    <h4 class="mb-5">  <svg class="svg-icon text-primary svg-icon-md"><use xlink:href="#dollar-sign-1"> </use></svg>${loginHost.hostName}님의 현재까지 수익은 입니다.</h4>
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
              <div class="card-body">
                <div class="row no-gutters align-items-center">
                  <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">비트코인
                    </div>
                    <div class="row no-gutters align-items-center">
                      <div class="col-auto">
                        <div id="content1_msg" class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                      </div>
                    </div>
                  </div>
                  <div class="col-auto">
                    <i class="fas fa-calendar fa-2x text-gray-300"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Earnings (Monthly) Card Example -->
          <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
              <div class="card-body">
                <div class="row no-gutters align-items-center">
                  <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">이더리움
                    </div>
                    <div class="row no-gutters align-items-center">
                      <div class="col-auto">
                        <div id="content2_msg" class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                      </div>
                    </div>
                  </div>
                  <div class="col-auto">
                    <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Earnings (Monthly) Card Example -->
          <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-dark shadow h-100 py-2">
              <div class="card-body">
                <div class="row no-gutters align-items-center">
                  <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">도지코인
                    </div>
                    <div class="row no-gutters align-items-center">
                      <div class="col-auto">
                        <div id="content3_msg" class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                      </div>
                    </div>
                  </div>
                  <div class="col-auto">
                    <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Pending Requests Card Example -->
          <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-danger shadow h-100 py-2">
              <div class="card-body">
                <div class="row no-gutters align-items-center">
                  <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">에이다
                    </div>
                    <div class="row no-gutters align-items-center">
                      <div class="col-auto">
                        <div id="content4_msg" class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                      </div>
                    </div>
                  </div>
                  <div class="col-auto">
                    <i class="fas fa-comments fa-2x text-gray-300"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
            <figure class="highcharts-figure">
              <div id="container"></div>
              <p class="highcharts-description">
              </p>
            </figure>
            <figure class="highcharts-figure">
              <div id="container2"></div>
              <p class="highcharts-description">
              </p>
            </figure>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right" data-aos-delay="100">


            <div class="input-group">
              <input type="search" id="companyname" placeholder="포트폴리오 편입종목"class="form-control rounded" aria-label="Search" aria-describedby="search-addon" readonly/>
              <input type="search" id="stockprice" placeholder="현재 기준가"class="form-control rounded"aria-label="Search" aria-describedby="search-addon" readonly/>
            </div>
            <div class="input-group">
              <input type="search" id="portfolioAmount" class="form-control rounded" placeholder="주문 좌수" aria-label="Search" aria-describedby="search-addon" />
              <button type="button" id="portfolioBuy" class="btn btn-success">주문체결</button>
              <button type="button" id="portfolioSell" class="btn btn-danger">주문매도</button>
            </div>
            <hr>
            <div class="input-group">
              <input type="search" id="searchCompany" class="form-control rounded" placeholder="어떤 회사를 찾으시나요?" aria-label="Search" aria-describedby="search-addon" />
              <button type="button" id="stockSearch_btn" class="btn btn-outline-warning">search</button>
            </div>
            <div class="input-group">
              <input type="search" id="request" class="form-control rounded" placeholder="${loginHost.hostName}님. 빠른 검색을 위해선 코드를 직접 넣으세요!" aria-label="Search" aria-describedby="search-addon" />
              <button type="button" id="chatGPT_btn" class="btn btn-outline-warning">search</button>
            </div>
            <div class="progress">
              <div class="progress-bar progress-bar-success" role="progressbar"
                   aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:0%">
              </div>
            </div>

            <div>
              <table class="table" id="tableFX">
                <h4 id="fXtableTitle"> </h4>
                <thead>
                <tr>
                  <th>코드</th>
                  <th>이름</th>
                  <th>상장국가</th>
                  <th>선택</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
              </table>
            </div>
            </p>


          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <section id="features" class="features">

      <div class="container" data-aos="fade-up">

        <div class="row">

          <div class="image col-lg-6" style='background-image: url("/views/sales/earning/assets/img/features.jpg");' data-aos="fade-right"></div>

          <div class="col-lg-6" data-aos="fade-left" data-aos-delay="100">
          </div>
        </div>

      </div>

    </section>

  </div>

    <!-- place item-->


</div>
