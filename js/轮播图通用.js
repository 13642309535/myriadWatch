/* 拿到标签 */
let swiper4_data =

    [{
        "imgSrc": "//image6.wbiao.co/mall/tmp_ebc9e508451ccbc62c850024bd00ddcf.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "帝舵",
        "timer": "15:24:17",
        "discount": "9.5新",
        "price": "15800",
        "delPrice": "29,800"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/tmp_e24acf7400273f9b7d65750905d2a5fa.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "欧米茄",
        "timer": "00:24:17",
        "discount": "9.5新",
        "price": "21200",
        "delPrice": "40,800"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/tmp_bfef558fda57901e6534a290d164d149.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "劳力士",
        "timer": "13:24:17",
        "discount": "9.5新",
        "price": "58000",
        "delPrice": "77,300"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/tmp_c548a98c2f6899732b165a7382a9d221.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "萧邦",
        "timer": "07:24:17",
        "discount": "9.0新",
        "price": "19800",
        "delPrice": "41,500"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/tmp_9ea3ba54499fe7d6d52087a803fa35e0576f319b24ab6194.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "积家",
        "timer": "10:24:17",
        "discount": "9.9新",
        "price": "37300",
        "delPrice": "71,500"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/share-19061300105 (1).jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "萧邦",
        "timer": "08:24:17",
        "discount": "9.5新",
        "price": "20000",
        "delPrice": "131,000"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/tmp_d899f958c52208d0a4fb4db43aa30bb7.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "欧米茄",
        "timer": "12:24:17",
        "discount": "9.5新",
        "price": "15600",
        "delPrice": "22,400"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/tmp_437665e3a82365e6a8d67d0de92ef665cfc59cce33e809ee.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "北京",
        "timer": "24:24:17",
        "discount": "未使用",
        "price": "19800",
        "delPrice": "26,800"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/tmp_ebc9e508451ccbc62c850024bd00ddcf.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "帝舵",
        "timer": "15:24:17",
        "discount": "9.5新",
        "price": "15800",
        "delPrice": "29,800"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/tmp_e24acf7400273f9b7d65750905d2a5fa.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "欧米茄",
        "timer": "00:24:17",
        "discount": "9.5新",
        "price": "21200",
        "delPrice": "40,800"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/tmp_bfef558fda57901e6534a290d164d149.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "劳力士",
        "timer": "13:24:17",
        "discount": "9.5新",
        "price": "58000",
        "delPrice": "77,300"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/tmp_c548a98c2f6899732b165a7382a9d221.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "萧邦",
        "timer": "07:24:17",
        "discount": "9.0新",
        "price": "19800",
        "delPrice": "41,500"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/tmp_9ea3ba54499fe7d6d52087a803fa35e0576f319b24ab6194.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "积家",
        "timer": "10:24:17",
        "discount": "9.9新",
        "price": "37300",
        "delPrice": "71,500"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/share-19061300105 (1).jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "萧邦",
        "timer": "08:24:17",
        "discount": "9.5新",
        "price": "20000",
        "delPrice": "131,000"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/tmp_d899f958c52208d0a4fb4db43aa30bb7.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "欧米茄",
        "timer": "12:24:17",
        "discount": "9.5新",
        "price": "15600",
        "delPrice": "22,400"
    }, {
        "imgSrc": "//image6.wbiao.co/mall/tmp_437665e3a82365e6a8d67d0de92ef665cfc59cce33e809ee.jpg?x-oss-process=image/resize,m_fill,w_125,h_166",
        "title": "北京",
        "timer": "24:24:17",
        "discount": "未使用",
        "price": "19800",
        "delPrice": "26,800"
    }]

class swiper {
    constructor(data, root = document.body, swiperHtml, sliderBoxItemWidth, swiperNum, sliderClass) {
        this.data = data;
        this.sliderBox = null;
        this.sliderNav = null;
        this.slider = null;
        this.root = root;

        this.swiperHtml = swiperHtml;
        this.sliderBoxItemWidth = sliderBoxItemWidth;
        this.swiperNum = swiperNum;
        this.sliderClass = sliderClass;
    }
    init() {
        /* 初始化数据 */
        this.index = 0;
        this.sliderBoxStyleLeft = 0;
        this.createHTML()
        this.root.appendChild(this.slider);
        // this.randomColor();

        this.sliderBoxItemCount = (this.data.length) / this.swiperNum;
        this.addEventHandle();
        this.switchSlider(0);
        this.autoPlayer();
        this.addMouseHandle();
        this.addMouseHandleWithItem();
    }
    createHTML() {
        let sliderBox = document.createElement("ul");
        sliderBox.className = "slider-box";
        let html = this.data.map((ele) => {
            return this.swiperHtml;

            // return `<li class="slider-box-item"><img src=${ele}></li>`
            //     return ` <li class="slider-box-item">
            //     <a href="">
            //     <p class="pImg"> <img src="${ele.imgSrc}" alt=""> </p>
            //     <div class="text">
            //         <p class="p1">${ele.title}</p>
            //         <p class="p2">
            //             <span class="span1">
            //                 <em>${ele.discount}</em>
            //                 <i></i>
            //             </span>
            //             <span class="span2">￥${ele.price}</span>
            //             <del>￥${ele.delPrice}</del>
            //         </p>

            //     </div>
            // </a>

            // </li>`



        }).join("");
        sliderBox.innerHTML = html;

        let sliderControl = document.createElement("div");
        sliderControl.className = "slider-control";
        sliderControl.innerHTML = `
                 <span class="prev"></span>
                 <span class="next"></span>
            `
        let sliderNav = document.createElement("ol");
        sliderNav.className = "slider-nav";

        let html2 = this.data.map((ele, index) => {
            return `<li class="slider-nav-item">${index + 1}</li>`
        }).join("");
        sliderNav.innerHTML = html2;

        let slider = document.createElement("div");

        // 更改最外层盒子class名
        slider.className = this.sliderClass;
        slider.appendChild(sliderBox)
        slider.appendChild(sliderControl)
        slider.appendChild(sliderNav)

        this.slider = slider;
        this.sliderBox = sliderBox;
        this.sliderNav = sliderNav;
        this.sliderControl = sliderControl;
    }
    autoPlayer() {
        this.timer = setInterval(() => {
            this.next();
        }, 2000)
    }
    next() {
        this.index++;
        /*临界值检查*/
        if (this.index > (this.sliderBoxItemCount - 1)) {
            this.index = 0;
        }
        this.sliderBox.style.left = -this.index * this.sliderBoxItemWidth + "px";
        this.switchSlider(this.index);
    }
    prev() {
        this.index--;
        /*临界值检查*/
        if (this.index < 0) {
            this.index = this.sliderBoxItemCount - 1;
        }
        this.sliderBox.style.left = -this.index * this.sliderBoxItemWidth + "px";
        this.switchSlider(this.index);
    }

    addEventHandle() {
        /* 获取标签 */
        this.sliderControl.onclick = (e) => {
            if (e.target.className == "prev") {
                this.prev();
            } else if (e.target.className == "next") {
                this.next();
            }
        }
    }

    switchSlider(index) {
        Array.from(this.sliderNav.children).forEach((ele) => {
            ele.className = "slider-nav-item"
        })
        this.sliderNav.children[index].className = "slider-nav-item active";
    }
    addMouseHandle() {
        /* 鼠标移入的时候 */
        this.slider.onmouseenter = () => {
            clearInterval(this.timer)
        }

        /* 鼠标移出的时候 */
        this.slider.onmouseleave = () => {
            this.autoPlayer();
        }
    }
    addMouseHandleWithItem() {
        Array.from(this.sliderNav.children).forEach((ele, index) => {
            ele.onclick = () => {
                /* 切换标签 */
                this.index = index;
                this.sliderBox.style.left = -this.index * this.sliderBoxItemWidth + "px";
                this.switchSlider(this.index);
            }
        })
    }
}


let swiperHtml = ` <li class="slider-box-item">
<a href="">
<p class="pImg"> <img src="${ele.imgSrc}" alt=""> </p>
<div class="text">
    <p class="p1">${ele.title}</p>
    <p class="p2">
        <span class="span1">
            <em>${ele.discount}</em>
            <i></i>
        </span>
        <span class="span2">￥${ele.price}</span>
        <del>￥${ele.delPrice}</del>
    </p>

</div>
</a>

</li>`;
new swiper(swiper4_data, root = document.body, swiperHtml, 594, 3, slider2)