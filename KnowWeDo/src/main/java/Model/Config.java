
package Model;

import java.io.InputStream;
import java.util.Properties;
 
public class Config
{
   Properties configFile;
   public Config()
   {
	configFile = new java.util.Properties();
	try {
          InputStream inputStream = getClass().getClassLoader()
                     .getResourceAsStream("config.properties");
	  configFile.load(inputStream);
	}catch(Exception eta){
	    eta.printStackTrace();
	}
   }
 
   public String getProperty(String key)
   {
	String value = this.configFile.getProperty(key);
	return value;
   }
}