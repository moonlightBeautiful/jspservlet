package com.java1234.myDefTag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/**
 * @author gaoxu
 * @date 2019-06-13 16:26
 * @description ... 类
 */
public class myDefineTag02 extends SimpleTagSupport {
    // 与标签的属性自动匹配，当标签没有此属性的时候，不会自动匹配，setter和getter方法不要忘记了，必须的
    private String var;
    private String items;

    @Override
    public void doTag() throws JspException, IOException {
        Object value = this.getJspContext().getAttribute(items);        //获取前台值
        if (value != null && value instanceof List) {
            Iterator iter = ((List) value).iterator();        //迭代器
            while (iter.hasNext()) {    //开始循环，执行标签体
                this.getJspContext().setAttribute(var, iter.next());
                this.getJspBody().invoke(null); // 响应页面
            }
        }
    }
}
