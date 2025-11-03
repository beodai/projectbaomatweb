<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Tạo mới đơn hàng</title>
        <!-- Bootstrap core CSS -->
        <link href="assets/bootstrap.min.css" rel="stylesheet"/>
        <!-- Custom styles for this template -->
        <link href="assets/jumbotron-narrow.css" rel="stylesheet">  
        <script src="assets/jquery-1.11.3.min.js"></script>
        <style>
            body {
                background: #f8fafc;
            }
            .payment-card {
                max-width: 500px;
                margin: 40px auto;
                background: #fff;
                border-radius: 16px;
                box-shadow: 0 4px 24px rgba(0,0,0,0.08);
                padding: 32px 28px 24px 28px;
            }
            .payment-card h3 {
                font-weight: 700;
                color: #0d6efd;
                margin-bottom: 24px;
            }
            .form-group label {
                font-weight: 500;
                margin-bottom: 6px;
            }
            .form-control {
                border-radius: 8px;
            }
            .btn-pay {
                background: linear-gradient(90deg, #0d6efd 60%, #38b6ff 100%);
                color: #fff;
                font-weight: 600;
                border: none;
                border-radius: 8px;
                padding: 10px 0;
                margin-top: 18px;
                transition: background 0.2s;
            }
            .btn-pay:hover {
                background: linear-gradient(90deg, #38b6ff 60%, #0d6efd 100%);
                color: #fff;
            }
            .payment-info {
                background: #e9f5ff;
                border-radius: 8px;
                padding: 12px 16px;
                margin-bottom: 18px;
                font-size: 1.1em;
            }
            .footer {
                text-align: center;
                color: #888;
                margin-top: 32px;
            }
        </style>
    </head>

    <body>
        <?php 
            require_once("./config.php");
            // Lấy giá trị amount truyền từ bookings.php (nếu có)
            $booking_id = isset($_GET['booking_id']) ? (int)$_GET['booking_id'] : 0;
            $amount = isset($_GET['amount']) ? (int)$_GET['amount'] : 10000;
        ?>             
        <div class="payment-card">
            <h3>Thanh toán đơn hàng</h3>
            <div class="payment-info">
                <span>Số tiền cần thanh toán: </span>
                <strong style="color:#0d6efd;"><?php echo number_format($amount); ?> VNĐ</strong>
            </div>
            <form action="vnpay_create_payment.php" id="frmCreateOrder" method="post">        
                <input type="hidden" name="booking_id" value="<?php echo $booking_id; ?>" />
                <div class="form-group mb-3">
                    <label for="amount">Số tiền</label>
                    <input class="form-control" id="amount" max="100000000" min="1" name="amount" type="number" value="<?php echo $amount; ?>" readonly />
                </div>
                <h5 class="mt-3 mb-2">Chọn phương thức thanh toán</h5>
                <div class="form-group mb-3">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" checked id="bankCode1" name="bankCode" value="">
                        <label class="form-check-label" for="bankCode1">Cổng thanh toán VNPAYQR</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" id="bankCode2" name="bankCode" value="VNPAYQR">
                        <label class="form-check-label" for="bankCode2">Thanh toán bằng ứng dụng hỗ trợ VNPAYQR</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" id="bankCode3" name="bankCode" value="VNBANK">
                        <label class="form-check-label" for="bankCode3">Thanh toán qua thẻ ATM/Tài khoản nội địa</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" id="bankCode4" name="bankCode" value="INTCARD">
                        <label class="form-check-label" for="bankCode4">Thanh toán qua thẻ quốc tế</label>
                    </div>
                </div>
                <h5 class="mt-3 mb-2">Chọn ngôn ngữ giao diện thanh toán</h5>
                <div class="form-group mb-3">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" checked id="langVN" name="language" value="vn">
                        <label class="form-check-label" for="langVN">Tiếng Việt</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" id="langEN" name="language" value="en">
                        <label class="form-check-label" for="langEN">Tiếng Anh</label>
                    </div>
                </div>
                <button type="submit" class="btn btn-pay w-100">Thanh toán</button>
            </form>
        </div>
        <div class="footer">
            <p>&copy; VNPAY <?php echo date('Y')?></p>
        </div>
    </body>
</html>