<?php
// Include PHPMailer from the ../../master folder
require_once __DIR__ . '/../../master/PHPMailer/src/PHPMailer.php';
require_once __DIR__ . '/../../master/PHPMailer/src/SMTP.php';
require_once __DIR__ . '/../../master/PHPMailer/src/Exception.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;


// Create a new PHPMailer instance
$mail = new PHPMailer(true);

try {
    // Server settings
    $mail->isSMTP();
    $mail->Host       = 'smtp.gmail.com';
    $mail->SMTPAuth   = true;
    $mail->Username   = 'amelnanda105@gmail.com';
    // 'amelnanda105@gmail.com';
    $mail->Password   = 'cbiu smrj kvxp uyej';
    // 'cbiu smrj kvxp uyej'; // Ganti dengan App Password Gmail yang sudah Anda buat di https://myaccount.google.com/apppasswords
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port       = 587;

    // Sender and recipient
    $mail->setFrom('amelnanda105@gmail.com', 'Digital Alfatech');
    $mail->addAddress('amelnanda105@gmail.com', 'Digital Alfatech');

    // Content
    $mail->isHTML(true);
    $mail->Subject = 'Tes Email dari PHPMailer';
    $mail->Body    = 'Ini adalah email percobaan yang dikirim menggunakan PHPMailer.';

    $mail->send();
    echo 'Email berhasil dikirim.';
} catch (Exception $e) {
    echo "Email gagal dikirim. Error: {$mail->ErrorInfo}";
}
?>