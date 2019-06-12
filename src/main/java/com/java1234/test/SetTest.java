package com.java1234.test;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;

/**
 * @author gaoxu
 * @date 2019-06-12 10:52
 * @description ... 类
 */
public class SetTest {


    public static void main(String[] args) {
        //无序:默认的规则排序
        HashSet<String> set = new HashSet<>();
        set.add("f");
        set.add("f");
        set.add("a");
        set.add("a");
        set.add("b");
        set.add("b");
        set.add("d");
        set.add("d");
        //迭代器遍历
        Iterator<String> iterator = set.iterator();
        while (iterator.hasNext()) {
            String n = iterator.next();
            System.out.println(n);
        }
        System.out.println("==================================================");
        //Linked 有序 (怎么存的 打印出来还是那个顺序)
        LinkedHashSet<String> linkedHashset = new LinkedHashSet<>();
        linkedHashset.add("f");
        linkedHashset.add("f");
        linkedHashset.add("a");
        linkedHashset.add("a");
        linkedHashset.add("b");
        linkedHashset.add("b");
        linkedHashset.add("d");
        linkedHashset.add("d");
        for (String string : linkedHashset) {
            System.out.println(string);
        }

    }

}
