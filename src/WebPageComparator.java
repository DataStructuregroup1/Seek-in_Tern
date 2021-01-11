import java.util.Comparator;

public class WebPageComparator implements Comparator<WebNode>{
 @Override
 public int compare(WebNode o1, WebNode o2){
  if(o1==null || o2==null) throw new NullPointerException();
  return (int) (o2.nodeScore - o1.nodeScore);
 }
}
