package org.martynas.blogapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Service
public class EmailService {

    private final JavaMailSender mailSender;

    @Autowired
    public EmailService(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }

    public void sendWelcomeEmail(String to, String username) throws MessagingException {
        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true);

        helper.setTo(to);
        helper.setSubject("Welcome to Our Blog!");

        // Define the welcome message content
        String content = "<h1>Welcome, " + username + "!</h1>"
                       + "<p>We are thrilled to have you join our blog community. Thank you for signing up!</p>"
                       + "<p>Explore our latest posts and enjoy the content we have to offer. If you have any questions or need assistance, feel free to reach out to us.</p>"
                       + "<p>Best regards,<br>The Blog Team</p>";

        helper.setText(content, true);

        mailSender.send(message);
    }
}
