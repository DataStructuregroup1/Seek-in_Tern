import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

public class WebPage {
	public String url;
	public String title;
	public String content;
	public WordCounter counter;
	public double score;

	public WebPage(String url){
		this.url = url;
		this.counter = new WordCounter(url);
		score = 1;
	}
	
	public void setScore(ArrayList<Keyword> keywords) throws IOException{
		for(Keyword k : keywords){			
			score += counter.countKeyword(k.name)* k.weight;	
		}
	}	
	
	
}