<?php
    if(empty($_POST)){
    echo 'No...';
    exit;
    }

    $name = '';
    $email = '';
    $subject = '';
    $message = '';
    $recipient = 'atamorim@gmail.com';

    //some validations
    if(isset($_POST['name'])){
        $name = filter_var($_POST['name'], FILTER_SANITIZE_STRING);
    }

    if(isset($_POST['email'])){
        $email = str_replace(array("\r", "\n", "%0a", "%0d"),'',$_POST['email']);
        $email = filter_var($email, FILTER_VALIDATE_EMAIL);
    }

    if(isset($_POST['subject'])){
        $subject = filter_var($_POST['subject'],FILTER_SANITIZE_STRING);
    }

    if(isset($_POST['message'])){
        $message = $_POST['message'];
    }

    $headers = [
    'From'=>'noreply@test.ca',
    'Reply-To'=>$name.'<'.$email.'>'
    ];

    if(mail($recipient, $subject, $message, $headers)){
        echo '<p>Hello again. I received your message and I will going to return to you soon. Just give me 24 hours, please.</p>';
    }else{
        echo '<p>I am so sorry but the email did not go through</p>';
    }
?>
