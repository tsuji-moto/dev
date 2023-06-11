import java.io.*;
import java.util.Properties;

/**
 * HelloWorldクラス
 *
 * @author tsuji-moto
 */
public class HelloWorld {
    /**
     * @param arguments 使用しません。
     */
    public static void main(String[] arguments) {
        // プロパティファイルを読み込む
        String fileName = ("properties/system.properties");
        Properties prop = new Properties();
        try {
            prop.load(new FileInputStream(fileName));
        } catch (IOException e) {
            System.err.println("ファイル名：" + fileName + " の読み込みに失敗しました。");
            e.printStackTrace();
            System.exit(-1);  // プログラム終了
        }

        // 読み込み
        System.out.println(prop.getProperty("http_proxy_host"));
        System.out.println(prop.getProperty("http_proxy_port"));
        System.out.println(prop.getProperty("http_non_proxy_hosts"));
        System.out.println("HelloWorld!");
    }
}