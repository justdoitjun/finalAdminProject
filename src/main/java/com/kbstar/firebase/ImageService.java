//package com.kbstar.firebase;
//
//import com.google.cloud.storage.*;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.web.multipart.MultipartFile;
//
//import java.io.IOException;
//import java.nio.file.Path;
//import java.util.UUID;
//
//@Service
//public class ImageService {
//
//    @Autowired
//    private Storage storage;
//
//    @Autowired
//    private Bucket bucket;
//
//    public String uploadImage(MultipartFile file) throws IOException {
//        String fileName = generateUniqueFileName(file.getOriginalFilename());
//        BlobId blobId = BlobId.of(bucket.getName(), fileName);
//        BlobInfo blobInfo = BlobInfo.newBuilder(blobId).setContentType(file.getContentType()).build();
//        storage.create(blobInfo, file.getBytes());
//        return fileName;
//    }
//
//    private String generateUniqueFileName(String originalFilename) {
//        String extension = originalFilename.substring(originalFilename.lastIndexOf("."));
//        return UUID.randomUUID().toString() + extension;
//    }
//
//    public void downloadImage(String fileName, String destinationPath) throws IOException {
//        BlobId blobId = BlobId.of(bucket.getName(), fileName);
//        Blob blob = storage.get(blobId);
//
//        if (blob != null) {
//            blob.downloadTo(Path.of(destinationPath));
//        }
//    }
//}
