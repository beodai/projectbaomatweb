<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>VNPAY RESPONSE</title>
        <link href="assets/bootstrap.min.css" rel="stylesheet"/>
        <link href="assets/jumbotron-narrow.css" rel="stylesheet">         
        <script src="assets/jquery-1.11.3.min.js"></script>
        <style>
            body {
                background: #f8fafc;
            }
            .response-card {
                max-width: 600px;
                margin: 40px auto;
                background: #fff;
                border-radius: 16px;
                box-shadow: 0 4px 24px rgba(0,0,0,0.08);
                padding: 32px 28px 24px 28px;
            }
            .response-card h3 {
                font-weight: 700;
                color: #0d6efd;
                margin-bottom: 24px;
            }
            .form-group label:first-child {
                min-width: 180px;
                font-weight: 500;
                color: #333;
            }
            .form-group {
                display: flex;
                align-items: center;
                margin-bottom: 14px;
                padding: 8px 0;
                border-bottom: 1px solid #f0f0f0;
            }
            .form-group:last-child {
                border-bottom: none;
            }
            .result-success {
                color: #198754;
                font-weight: bold;
            }
            .result-fail {
                color: #dc3545;
                font-weight: bold;
            }
            .result-warning {
                color: #fd7e14;
                font-weight: bold;
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
        $vnp_SecureHash = $_GET['vnp_SecureHash'];
        $inputData = array();
        foreach ($_GET as $key => $value) {
            if (substr($key, 0, 4) == "vnp_") {
                $inputData[$key] = $value;
            }
        }
        
        unset($inputData['vnp_SecureHash']);
        ksort($inputData);
        $i = 0;
        $hashData = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashData = $hashData . '&' . urlencode($key) . "=" . urlencode($value);
            } else {
                $hashData = $hashData . urlencode($key) . "=" . urlencode($value);
                $i = 1;
            }
        }

        $secureHash = hash_hmac('sha512', $hashData, $vnp_HashSecret);
        // Lấy booking_id từ mã giao dịch trả về
        $booking_id = isset($_GET['vnp_TxnRef']) ? $_GET['vnp_TxnRef'] : '';

        // Kết nối DB
        $conn = new mysqli("localhost", "root", "", "hotel"); // sửa lại thông tin kết nối cho đúng

        if ($secureHash == $vnp_SecureHash && $_GET['vnp_ResponseCode'] == '00') {
            // Cập nhật trạng thái booking thành "Đã Thanh Toán"
            $sql = "UPDATE booking_order SET booking_status = 'Đã Thanh Toán' WHERE booking_id = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $booking_id);
            $stmt->execute();
            $stmt->close();

            // Cập nhật rate_review = 0
            $sql = "UPDATE booking_order SET rate_review = 0 WHERE booking_id = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $booking_id);
            $stmt->execute();
            $stmt->close();

            //Cập nhật arrival = 1
            $sql = "UPDATE booking_order SET arrival = 1 WHERE booking_id = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $booking_id);
            $stmt->execute();
            $stmt->close();
        }
        $conn->close();
        ?>
        <div class="response-card">
            <h3 class="text-center">Kết quả thanh toán VNPAY</h3>
            <div class="table-responsive">
                <div class="form-group">
                    <label>Mã đơn hàng:</label>
                    <label><?php echo $_GET['vnp_TxnRef'] ?></label>
                </div>    
                <div class="form-group">
                    <label>Số tiền:</label>
                    <label><?php echo number_format($_GET['vnp_Amount']/100); ?> VNĐ</label>
                </div>  
                <div class="form-group">
                    <label>Nội dung thanh toán:</label>
                    <label><?php echo $_GET['vnp_OrderInfo'] ?></label>
                </div> 
                <div class="form-group">
                    <label>Mã phản hồi (vnp_ResponseCode):</label>
                    <label><?php echo $_GET['vnp_ResponseCode'] ?></label>
                </div> 
                <div class="form-group">
                    <label>Mã GD Tại VNPAY:</label>
                    <label><?php echo $_GET['vnp_TransactionNo'] ?></label>
                </div> 
                <div class="form-group">
                    <label>Mã Ngân hàng:</label>
                    <label><?php echo $_GET['vnp_BankCode'] ?></label>
                </div> 
                <div class="form-group">
                    <label>Thời gian thanh toán:</label>
                    <label><?php echo $_GET['vnp_PayDate'] ?></label>
                </div> 
                <div class="form-group">
                    <label>Kết quả:</label>
                    <label>
                        <?php
                        if ($secureHash == $vnp_SecureHash) {
                            if ($_GET['vnp_ResponseCode'] == '00') {
                                echo "<span class='result-success'>Giao dịch thành công</span>";
                            } else {
                                echo "<span class='result-fail'>Giao dịch không thành công</span>";
                            }
                        } else {
                            echo "<span class='result-warning'>Chữ ký không hợp lệ</span>";
                        }
                        ?>
                    </label>
                </div> 
            </div>
            <footer class="footer">
                <p>&copy; VNPAY <?php echo date('Y')?></p>
                <a href="../bookings.php" class="btn btn-primary">Quay về lịch sử đặt phòng</a>
            </footer>
        </div>  
    </body>
</html>