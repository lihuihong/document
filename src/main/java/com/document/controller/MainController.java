package com.document.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/web")
public class MainController {

    public static final int WIDTH = 80;// 生成的图片的宽度
    public static final int HEIGHT = 25;// 生成的图片的高度


    /**
     * 单纯的页面跳转
     *
     * @param name
     *            页面名称，即jsp文件名
     * @return
     */
    @RequestMapping(value = "/page/{name}", method = RequestMethod.GET)
    public String page(@PathVariable String name) {
        return name;
    }

    /**
     * 单纯的页面跳转
     *
     * 页面名称，即jsp文件名
     *
     * @return
     */
    @RequestMapping(value = "/page/{model}/{fun}", method = RequestMethod.GET)
    public String page(@PathVariable String model, @PathVariable String fun) {
        return model + "/" + fun;
    }

    /**
     * 单纯的页面跳转
     *
     * 页面名称，即jsp文件名
     *
     * @return
     */
    @RequestMapping(value = "/page/{model}/{fun}/{file}", method = RequestMethod.GET)
    public String page(@PathVariable String model, @PathVariable String fun, @PathVariable String file) {
        return model + "/" + fun + "/" + file;
    }

}

