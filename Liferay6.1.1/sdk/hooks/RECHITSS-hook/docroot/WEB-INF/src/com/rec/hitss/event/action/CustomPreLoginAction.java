package com.rec.hitss.event.action;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.liferay.portal.kernel.events.Action;
import com.liferay.portal.kernel.events.ActionException;

public class CustomPreLoginAction extends Action {

       @Override
public void run(HttpServletRequest httpreq, HttpServletResponse httpres)
              throws ActionException {
              System.out.println("***********************************");
              System.out.println("Hey Buddy U Pre Login Now"+new Date());
              System.out.println("***********************************");
       }
}