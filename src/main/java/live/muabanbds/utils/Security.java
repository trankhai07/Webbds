package live.muabanbds.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Security {
    public String hashdatabase(String input) {
        try{
            MessageDigest md = MessageDigest.getInstance("SHA-512");
            byte[] messageDigest = md.digest(input.getBytes());
            BigInteger st = new BigInteger(1,messageDigest);
            String hashtext = st.toString(16);

            while(hashtext.length() < 32){
                hashtext = "0"+hashtext;
            }

            return hashtext;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

}
