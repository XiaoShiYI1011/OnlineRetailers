using Aop.Api;
using Aop.Api.Domain;
using Aop.Api.Request;
using Aop.Api.Response;
using OnlineRetailers.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace OnlineRetailers.Controllers
{
    public class payController : ApiController
    {
        class config
        {
            // 应用ID,您的APPID
            public static string app_id = "2021000120617756";

            // 支付宝网关
            public static string gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

            // 商户私钥，您的原始格式RSA私钥
            public static string private_key = "MIIEpAIBAAKCAQEAmrW25PZYLpi1vHkGT1rFNuNZ8oPi5ve+RHYLpPUt6xCuHlUb3mzcSODnAY/4SkBC3jRFnDnMJOBciw2cIASkyt9cLPY9td+QvdGHVp5x1YXIf8BSkr00bsrDz3XqWq4TJD/ZkZbi72pErFRLS9pRsStfuwVh0z1URydCITOBUmM76196lVTpUWxnovWDckcIzQRkv9WQTKWUqMQm1hciILSZ7SbHhHAadfleV/3fM6clbTxX8QOBLALznMISZRAWdWH3+IYEK3m7h/Q8DlFmP/0TtmMJmYFferYF9FHJpvt3+KelcyglLXVEhHTtAKH5I1idI8dgxdhb3UQXfATmHQIDAQABAoIBAQCOLo5lolisikALdJZt+5fft9YEYVz4s5qzRGGzOnj23Z+H1OQF6LoSaE8lSnD/nEtX92Y6C4woH+ItEVb4vgvNPrVxxOQ1778QFC5zVq57c7YuYkwA+83iPIr0cQPuTqjc2alUef0Z1upCDj4c+gm174zNTkb3YhfARL4r0S/6zC945PhD4CkbPnziJTJVVGg3vwgpIQXDZQ8EFDJYqXnGnsNebE53fVRBlMLPTXZh+4UGMyBfya62Qj2Ozxp+fumIblrrKdUGTpcvSfPqc65dNLJi/VF/A7r3uxc06BtOOXcNTg1CdFT65j6CebyzO76Gsbvr2JrWuPX1c9H4qs6pAoGBAPIsz+FOHac2b7SDI6lfbpRxL1m0w7p6oaefDyjrgAuAyxT534k9g22kDKF5HBlXmyggdiLDVx67b1d23N+yVoLUMD1tlf6Q7WBNFH5hIoibdMpZLHyemL5awViwrEMTHwhyTT0v3dms1W2Lkx+GK1MmwwW/rm4Ayb8ceSP9BMP3AoGBAKOKq6VymhNCpRLOVvi1RCKqd6D6jmJnaZfWriwl9c1FdBThQhIvPgc/Qc2XYYguNPv5mAMhcMiedadzFnipNxCIr+Qa3Eyipq9yiDQfyrcLqK9FvDs8So7eFU6kdupKOW2rGw6r3BFyEwtb9zgzfSTbwwijxjmB4GQPUti3d7mLAoGACkPwA+LlyuK51XMBnfpXm584nJrW+R6dn5dUcy2YXeR1t0voN88NtSYRCv8xO7nE7+yAVXTmSn0zeQem0SykEiOgb9onU4UdKsnZponDhvrf9nvVMOsgGmGKdJH4m1dCJ3+A2qkexE1ZNq2F7P4o8/tepO29HRiXdKxmTio5e30CgYBg9tIoiVdS/huzl8W3NnpMd3fwaT5Ml/XigfXI1UT0zS4zRw+OipYjY90XEZ9RR9xAXc9EY+pj+JfXjYQQTHwKgJCRFV/yzCk6MxUQmpzthKsiKJ2fHXMzW/eUJi0fYpzEKkQjocAcU994x7E/kD+tv+LWV4wrApdRnEhJmBYTWwKBgQDgseKrUS38Hy2Kz7yO8QW8mb0tvBHcXY7g7pXFDogVuTC4/XFojFiUpgG2Z2Qcub6Anbkp4UUgyctU7o8Bf0c6zakkuC9FHd9M25xOwqe5sCKnD3whz6CVtrUuIdLvPlf76oJh8y/jS/19It5yjf86KYDKF7IPtbDqkzlFn9n8Ww==";

            // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
            public static string alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmrW25PZYLpi1vHkGT1rFNuNZ8oPi5ve+RHYLpPUt6xCuHlUb3mzcSODnAY/4SkBC3jRFnDnMJOBciw2cIASkyt9cLPY9td+QvdGHVp5x1YXIf8BSkr00bsrDz3XqWq4TJD/ZkZbi72pErFRLS9pRsStfuwVh0z1URydCITOBUmM76196lVTpUWxnovWDckcIzQRkv9WQTKWUqMQm1hciILSZ7SbHhHAadfleV/3fM6clbTxX8QOBLALznMISZRAWdWH3+IYEK3m7h/Q8DlFmP/0TtmMJmYFferYF9FHJpvt3+KelcyglLXVEhHTtAKH5I1idI8dgxdhb3UQXfATmHQIDAQAB";

            // 签名方式
            public static string sign_type = "RSA2";

            // 编码格式
            public static string charset = "UTF-8";
        }

        [HttpPost]
        public HttpResponseMessage payment(dynamic payment)
        {
            DefaultAopClient client = new DefaultAopClient(config.gatewayUrl, config.app_id, config.private_key, "json", "1.0", config.sign_type, config.alipay_public_key, config.charset, false);

            // 外部订单号，商户网站订单系统中唯一的订单号
            string out_trade_no = payment.OrderID;

            // 订单名称
            string subject = "鞋子";

            // 付款金额
            string total_amount = payment.OrderMoney;

            // 订单描述
            string body = "123";

            // 组装业务参数model
            AlipayTradePagePayModel model = new AlipayTradePagePayModel();
            model.Body = body;
            model.Subject = subject;
            model.TotalAmount = total_amount;
            model.OutTradeNo = out_trade_no;
            model.ProductCode = "FAST_INSTANT_TRADE_PAY";
            AlipayTradePagePayRequest request = new AlipayTradePagePayRequest();
            // 设置同步回调地址
            request.SetReturnUrl("http://localhost:8080/#/User/Temp");
            // 设置异步通知接收地址
            request.SetNotifyUrl("");
            // 将业务model载入到request
            request.SetBizModel(model);

            AlipayTradePagePayResponse response = null;
            try
            {
                response = client.pageExecute(request, null, "post");
                string JOSN = new JavaScriptSerializer().Serialize(response.Body);
                return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
            }
            catch (Exception exp)
            {
                throw exp;
            }

        }
    }
}