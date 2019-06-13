package com.java1234.myDefTag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.util.Iterator;
import java.util.List;

/**
 * @author gaoxu
 * @date 2019-06-13 16:26
 * @description ... 类
 */
public class myDefineTag01 extends TagSupport {
    // 与标签的属性自动匹配，当标签没有此属性的时候，不会自动匹配，setter和getter方法不要忘记了，必须的
    private String var;
    private String items;
    private Iterator iter;

    //开始标签
    @Override
    public int doStartTag() throws JspException {
        //获取前台标签items属性的值
        Object value = this.pageContext.getAttribute(items);
        if (value != null && value instanceof List) {
            this.iter = ((List) value).iterator();
            if (iter.hasNext()) {    //循环list
                this.pageContext.setAttribute(var, iter.next());  //把值赋值到var中
                return TagSupport.EVAL_BODY_INCLUDE; // 执行标签体
            } else {
                return TagSupport.SKIP_BODY; // 退出标签执行
            }
        } else {
            return TagSupport.SKIP_BODY; // 退出标签执行
        }
    }

    //结束标签
    @Override
    public int doAfterBody() throws JspException {
        if (iter.hasNext()) {  //继续循环list
            this.pageContext.setAttribute(var, iter.next());    //把值赋值到var中
            return TagSupport.EVAL_BODY_AGAIN; // 再执行一次标签体
        } else {
            return TagSupport.SKIP_BODY; // 退出标签执行
        }
    }
}
