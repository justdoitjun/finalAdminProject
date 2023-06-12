//package com.kbstar.firebase;
//
//import com.google.auth.oauth2.GoogleCredentials;
//import com.google.cloud.storage.Bucket;
//import com.google.cloud.storage.Storage;
//import com.google.cloud.storage.StorageOptions;
//import com.google.firebase.FirebaseApp;
//import com.google.firebase.FirebaseOptions;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//
//import javax.annotation.PostConstruct;
//import java.io.FileInputStream;
//import java.io.IOException;
//
//@Configuration
//public class FirebaseConfig {
//
//    @PostConstruct
//    public void initFirebase() throws IOException {
//        FileInputStream serviceAccount = new FileInputStream("/resources/static/firebase/firebaseAuthKey.json");
//
//        FirebaseOptions options = new FirebaseOptions.Builder()
//                .setCredentials(GoogleCredentials.fromStream(serviceAccount))
//                .build();
//
//        FirebaseApp.initializeApp(options);
//    }
//
//    @Bean
//    public Storage storage() {
//        return StorageOptions.getDefaultInstance().getService();
//    }
//
//    @Bean
//    public Bucket bucket() {
//        return storage().get("your-firebase-storage-bucket-name");
//    }
//}
