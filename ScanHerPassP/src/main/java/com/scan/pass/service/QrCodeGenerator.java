package com.scan.pass.service;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.Map;

@Service
public class QrCodeGenerator {

    public byte[] generateQrCode(String data) {
        try {
            String charset = "UTF-8";
            Map<EncodeHintType, Object> hintMap = new HashMap<>();
            hintMap.put(EncodeHintType.ERROR_CORRECTION, "L");

            BitMatrix matrix = new MultiFormatWriter().encode(
                    new String(data.getBytes(charset), charset),
                    BarcodeFormat.QR_CODE, 200, 200, hintMap);

            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            MatrixToImageWriter.writeToStream(matrix, "PNG", byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
