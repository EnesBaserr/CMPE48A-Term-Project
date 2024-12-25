package com.techie.microservices.notification.service;

import lombok.RequiredArgsConstructor;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class NotificationService {


    @KafkaListener(topics = "order-placed")
    public void listen(com.techie.microservices.order.event.OrderPlacedEvent orderPlacedEvent){
        System.out.println("Order Placed Event Consumed: ");

    }
}
