
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
          InputStream inStream = getClass().getClassLoader()
                     .getResourceAsStream("config.properties");
	  configFile.load(inStream);
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