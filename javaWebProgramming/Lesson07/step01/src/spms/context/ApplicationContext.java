package spms.context;

import java.io.FileReader;
import java.lang.reflect.Method;
import java.util.Hashtable;
import java.util.Properties;
import java.util.Set;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.reflections.Reflections;

import spms.annotation.Component;

// 프로퍼티 파일 및 애노테이션을 이용한 객체 준비
public class ApplicationContext {
  Hashtable<String,Object> objTable = new Hashtable<String,Object>();
  
  public Object getBean(String key) {
    return objTable.get(key);
  }
  
  public ApplicationContext(String propertiesPath) throws Exception {
    Properties props = new Properties();
    props.load(new FileReader(propertiesPath));
    
    prepareObjects(props);
    prepareAnnotationObjects();
    injectDependency();
  }
  
  private void prepareAnnotationObjects() 
      throws Exception{
    Reflections reflector = new Reflections("");
    
    Set<Class<?>> list = reflector.getTypesAnnotatedWith(Component.class);
    String key = null;
    for(Class<?> clazz : list) {
      key = clazz.getAnnotation(Component.class).value();
      objTable.put(key, clazz.newInstance());
    }
  }

  private void prepareObjects(Properties props) throws Exception {
    Context ctx = new InitialContext();
    String key = null;
    String value = null;
    
    for (Object item : props.keySet()) {
      key = (String)item;
      value = props.getProperty(key);
      if (key.startsWith("jndi.")) {
        objTable.put(key, ctx.lookup(value));
      } else {
        objTable.put(key, Class.forName(value).newInstance());
      }
    }
  }
  
  private void injectDependency() throws Exception {
    for (String key : objTable.keySet()) {
      if (!key.startsWith("jndi.")) {
        callSetter(objTable.get(key));
      }
    }
  }

  private void callSetter(Object obj) throws Exception {
    Object dependency = null;
    for (Method m : obj.getClass().getMethods()) {
      if (m.getName().startsWith("set")) {
        dependency = findObjectByType(m.getParameterTypes()[0]);
        if (dependency != null) {
          m.invoke(obj, dependency);
        }
      }
    }
  }
  
  private Object findObjectByType(Class<?> type) {
    for (Object obj : objTable.values()) {
      if (type.isInstance(obj)) {
        return obj;
      }
    }
    return null;
  }
}
