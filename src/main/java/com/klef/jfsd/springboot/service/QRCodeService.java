package com.klef.jfsd.springboot.service;

import org.springframework.stereotype.Service;

@Service
public interface QRCodeService {
    byte[] generateQRCode(String text) throws Exception;
    
}
