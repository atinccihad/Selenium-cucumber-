package utilities;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.safari.SafariDriver;

import java.time.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Driver {

    private Driver() {

    }

    static String tarih;
    static WebDriver driver;

    // testlerimizi calistirdigimizda her seferinde yeni driver olusturdugu icin
    // her test methodu icin yeni bir pencere (driver) aciyor
    // eger driver'a bir deger atanmamissa yani driver == null ise
    // bir kere driver'i calistir diyerek bir kere if icini calistiracak
    // ve driver artik bir kere calistigi icin ve deger atandigi icin null olmayacak
    // ve direk return edecek ve diger testlerimiz ayni pencere (driver) uzerinde calisacak

    public static WebDriver getDriver() {
        if (driver == null) {
            switch (ConfigReader.getProperty("browser")) {
                //case "chrome":
//
                //    driver = new ChromeDriver();
                //    break;
                case "edge":

                    driver = new EdgeDriver();
                    break;
                case "firefox":

                    driver = new FirefoxDriver();
                    break;
                case "safari":

                    driver = new SafariDriver();
                    break;
                case "chrome-headless":

                    //driver = new ChromeDriver(new ChromeOptions().setHeadless(true));
                    break;
                default:

                    driver = new ChromeDriver();
            }

            driver.manage().window().maximize();
            driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(15));
        }


        LocalDateTime localDateTime = LocalDateTime.now();
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyMMddHHmmss");
        tarih = localDateTime.format(dateTimeFormatter);

        return driver;
    }

    public static void closeDriver() {
        if (driver != null) {
            driver.close();
            driver = null; // kapandiktan sonraki acmalari garanti altina almak icin driver'i tekrar null yaptik
        }
    }

    public static void quitDriver() {
        if (driver != null) {
            driver.quit();
            driver = null; // kapandiktan sonraki acmalari garanti altina almak icin driver'i tekrar null yaptik
        }
    }

}
