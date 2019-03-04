<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.gjs.weixinpay.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String openid = (String) request.getSession().getAttribute("gankeruser");
	if (openid == null || openid.length() < 5) {
		String code = request.getParameter("code");
		openid = "";
		if (code != null) {
			openid = WeixinTool2.getUserOpenid(code);
			System.out.println("--openid" + openid);
			request.getSession().setAttribute("gankeruser", openid);
		}
	}
%>
<%
	if (openid == null || openid.length() < 2) {
		response.sendRedirect(
				"https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx6f67ae9d5f637062&redirect_uri=http%3a%2f%2fgjs.so%2fGJSWeb%2fpages%2fpreorder%2fproduct.jsp&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect");
%>
<%
	} else {
%>
<!DOCTYPE html>
<html lang="en">

<head>

  <title>购买</title>

  <meta http-equiv="cache-control" content="max-age=0" />
  <meta http-equiv="cache-control" content="no-cache" />
  <meta http-equiv="expires" content="0" />
  <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
  <meta http-equiv="pragma" content="no-cache" />
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <link href="http://res.gjs.so/static/common/img/favicon.ico" rel="short icon" />

  <link rel="stylesheet" href="http://res.gjs.so/static/common/css/bootstrap_8f035e4.css">
  <link rel="stylesheet" href="http://res.gjs.so/static/common/css/style_02e049d.css" type="text/css" />
  <link rel="stylesheet" href="http://res.gjs.so/static/common/css/dark_d28b923.css" type="text/css" />
  <link rel="stylesheet" href="http://res.gjs.so/static/common/css/animate_042d576.css" type="text/css" />

  <link rel="stylesheet" href="http://res.gjs.so/static/common/css/colors_97a293e.css" type="text/css" />
  <link rel="stylesheet" href="http://res.gjs.so/static/preorder/css/product_54d6fa6.css" type="text/css" />
  <style>
    .content-price .price2:before{
	right: 70px;
}

</style>

</head>

<body class="stretched">

  <div id="wrapper" class="clearfix">

    <!-- 头部区 -->
    <header id="header" class="dark">

      <div id="header-wrap">

        <div class="container clearfix">

          <!-- logo -->
          <div id="logo">
            <a href="product.jsp" class="standard-logo"> <img src="http://res.gjs.so/static/common/img/icon_light.png">
            </a> <a href="product.jsp" class="retina-logo"> <img src="http://res.gjs.so/static/common/img/icon_light@2x.png">
            </a>
          </div>

        </div>

      </div>

    </header>

    <section id="content-area">

      <div class="container">

        <div class="row">
          <div class="col-sm-6">
            <div class="content-box">
              <div class="content-img">
                <img src="//res.gjs.so/static/preorder/img/img_product_geio_01.jpg">
              </div>
              <div class="content-detail">
                <h4>Geio（蓝色）</h4>
                <p class="bold">
                  <b>包装含有如下内容:</b>
                </p>
                <div class="row">
                  <div class="col-xs-6">
                    <p>Geio (蓝色) 主机 × 1</p>
                    <p>说明书 × 1</p>
                  </div>
                  <div class="col-xs-6">
                    <p>图腾（纸） × 4</p>
                    <p>充电线 × 1</p>
                  </div>
                </div>
                <div class="content-price">
                  <div class="price">1288</div>
                </div>
              </div>
              <div class="content-preorder">
                <a href="info.jsp?productId=200001&openid=<%=openid%>" class="btn btn-danger btn-block btn-lg bgcolor border-color preorder-btn">现在购买</a>
                <!--<a href="javascript:;" class="btn btn-danger btn-block btn-lg bgcolor border-color preorder-btn" disabled="disabled">马上开始</a>-->
              </div>
            </div>
          </div>

          <div class="col-sm-6">
            <div class="content-box">
              <div class="content-img">
                <img src="//res.gjs.so/static/preorder/img/img_product_geio_02.jpg">
              </div>
              <div class="content-detail">
                <h4>Geio（红色）</h4>
                <p class="bold">
                  <b>包装含有如下内容:</b>
                </p>
                <div class="row">
                  <div class="col-xs-6">
                    <p>Geio (红色) 主机 × 1</p>
                    <p>说明书 × 1</p>
                  </div>
                  <div class="col-xs-6">
                    <p>图腾（纸） × 4</p>
                    <p>充电线 × 1</p>
                  </div>
                </div>
                <div class="content-price">
                  <div class="price">1288</div>
                </div>
              </div>
              <div class="content-preorder">
                <a href="info.jsp?productId=200002&openid=<%=openid%>" class="btn btn-danger btn-block btn-lg bgcolor border-color preorder-btn">现在购买</a>
                <!--<a href="javascript:;" class="btn btn-danger btn-block btn-lg bgcolor border-color preorder-btn" disabled="disabled">马上开始</a>-->
              </div>
            </div>
          </div>
          <div class="col-sm-6">
            <div class="content-box">
              <div class="content-img">
                <img src="http://res.gjs.so/static/preorder/img/img_product_ganker_01.png">
              </div>
              <div class="content-detail">
                <h4>Ganker 标准版</h4>
                <p class="bold">
                  <b>包装含有如下内容:</b>
                </p>
                <div class="row">
                  <div class="col-xs-6">
                    <p>Ganker(复合色)主机 × 1</p>
                    <p>剑 × 1</p>
                    <p>枪 × 2</p>
                  </div>
                  <div class="col-xs-6">
                    <p>电池，充电器 × 1</p>
                    <p>备用舵机 × 2</p>
                    <p>螺丝刀，螺丝盒 × 1</p>
                    <p>螺丝若干</p>
                  </div>
                </div>
                <div class="content-price">
                  <div class="price">2580</div>
                </div>
              </div>
              <div class="content-preorder">
                <a href="info.jsp?productId=100001&openid=<%=openid%>" class="btn btn-danger btn-block btn-lg bgcolor border-color preorder-btn">立即购买</a>
              </div>
            </div>

          </div>

          <div class="col-sm-6">
            <div class="content-box">
              <div class="content-img">
                <img src="http://res.gjs.so/static/preorder/img/img_product_ganker_02.png">
              </div>
              <div class="content-detail">
                <h4>Ganker 高配版</h4>
                <p class="bold">
                  <b>包装含有如下内容:</b>
                </p>
                <div class="row">
                  <div class="col-xs-6">
                    <p>Ganker(复合色)主机 × 1</p>
                    <p>剑 × 1</p>
                    <p>枪 × 2</p>
                  </div>
                  <div class="col-xs-6">
                    <p>电池，充电器 × 1</p>
                    <p>备用舵机 × 2</p>
                    <p>螺丝刀，螺丝盒 × 1</p>
                    <p>螺丝若干</p>
                  </div>
                </div>
                <div class="content-price">
                  <div class="price">2680</div>
                </div>
              </div>
              <div class="content-preorder">
                <a href="info.jsp?productId=100004&openid=<%=openid%>" class="btn btn-danger btn-block btn-lg bgcolor border-color preorder-btn">立即购买</a>

              </div>
            </div>
          </div>

          <div class="col-sm-6">
            <div class="content-box">
              <div class="content-img">
                <img src="http://res.gjs.so/static/preorder/img/img_pkg_4.jpg">
              </div>
              <div class="content-detail">
                <h4>4 只 GEIO 套餐</h4>
                <p class="bold">
                  <b>包装含有如下内容:</b>
                </p>
                <div class="row">
                  <div class="col-xs-6">
                    <p>GEIO（蓝色）完整版 x 2</p>
                  </div>
                  <div class="col-xs-6">
                    <p>GEIO（红色）完整版 x 2</p>
                  </div>
                </div>
                <div class="content-price">
                  <div class="price">4636</div>
                </div>
              </div>
              <div class="content-preorder">
                <a href="info.jsp?productId=300001&openid=<%=openid%>" class="btn btn-danger btn-block btn-lg bgcolor border-color preorder-btn">立即购买</a>
              </div>
            </div>
          </div>

          <div class="col-sm-6">
            <div class="content-box">
              <div class="content-img">
                <img src="http://res.gjs.so/static/preorder/img/img_pkg_6.jpg">
              </div>
              <div class="content-detail">
                <h4>6 只 GEIO 套餐</h4>
                <p class="bold">
                  <b>包装含有如下内容:</b>
                </p>
                <div class="row">
                  <div class="col-xs-6">
                    <p>GEIO（蓝色）完整版 x 3</p>
                    <p>GEIO（红色）完整版 x 3</p>
                  </div>
                  <div class="col-xs-6">
                    <p>手柄 x 2</p>
                  </div>
                </div>
                <div class="content-price">
                  <div class="price">6800</div>
                </div>
              </div>
              <div class="content-preorder">
                <a href="info.jsp?productId=300002&openid=<%=openid%>" class="btn btn-danger btn-block btn-lg bgcolor border-color preorder-btn">立即购买</a>
              </div>
            </div>
          </div>

          <div class="col-sm-6">
            <div class="content-box">
              <div class="content-img">
                <img src="http://res.gjs.so/static/preorder/img/img_pkg_8.jpg">
              </div>
              <div class="content-detail">
                <h4>8 只 GEIO 套餐</h4>
                <p class="bold">
                  <b>包装含有如下内容:</b>
                </p>
                <div class="row">
                  <div class="col-xs-6">
                    <p>GEIO（蓝色）完整版 x 4</p>
                    <p>GEIO（红色）完整版 x 4</p>
                  </div>
                  <div class="col-xs-6">
                    <p>手柄 x 4</p>
                    <p>电池 x 2</p>
                  </div>
                </div>
                <div class="content-price">
                  <div class="price">
                    <div>8758</div>
                  </div>
                </div>
              </div>
              <div class="content-preorder">
                <a href="info.jsp?productId=300003&openid=<%=openid%>" class="btn btn-danger btn-block btn-lg bgcolor border-color preorder-btn">立即购买</a>
              </div>
            </div>
          </div>

          <div class="col-sm-6">
            <div class="content-box">
              <div class="content-img">
                <img src="http://res.gjs.so/static/preorder/img/img_pkg_10.jpg">
              </div>
              <div class="content-detail">
                <h4>10 只 GEIO 套餐</h4>
                <p class="bold">
                  <b>包装含有如下内容:</b>
                </p>
                <div class="row">
                  <div class="col-xs-6">
                    <p>GEIO（蓝色）完整版 x 5</p>
                    <p>GEIO（红色）完整版 x 5</p>
                  </div>
                  <div class="col-xs-6">
                    <p>手柄 x 4</p>
                    <p>电池 x 4</p>
                  </div>
                </div>
                <div class="content-price">
                  <div class="price price2">10000</div>
                </div>
              </div>
              <div class="content-preorder">
                <a href="info.jsp?productId=300004&openid=<%=openid%>" class="btn btn-danger btn-block btn-lg bgcolor border-color preorder-btn">立即购买</a>
              </div>
            </div>
          </div>

          <div class="col-sm-6">
            <div class="content-box">
              <div class="content-img">
                <img src="http://res.gjs.so/static/preorder/img/img_product_track.jpg">
              </div>
              <div class="content-detail">
                <h4>赛道配件包</h4>
                <p class="bold">
                  <b>包装含有如下内容:</b>
                </p>
                <div class="row">
                  <div class="col-xs-6">
                    <p>直道 x 4</p>
                  </div>
                  <div class="col-xs-6">
                    <p>弯道 x 4</p>
                  </div>
                </div>
                <div class="content-price">
                  <div class="price">1000</div>
                </div>
              </div>
              <div class="content-preorder">
                <a href="info.jsp?productId=300005&openid=<%=openid%>" class="btn btn-danger btn-block btn-lg bgcolor border-color preorder-btn">立即购买</a>
              </div>
            </div>
          </div>


          
        </div>

        <div class="row">
          

        </div>
      </div>
  </div>

  </section>




  <script type="text/javascript" src="http://res.gjs.so/static/common/js/jquery_6163309.js"></script>
  <script type="text/javascript" src="http://res.gjs.so/static/common/js/plugins_5495886.js"></script>
  <script type="text/javascript" src="http://res.gjs.so/static/common/js/functions_bd98156.js"></script>

</body>

</html>
<%
	}
%>