/* 拿到标签 */
class swiper4 {
    constructor(data, root = document.body) {
        this.data = data;
        this.sliderBox = null;
        this.sliderNav = null;
        this.slider = null;
        this.root = root;
    }
    init() {
        /* 初始化数据 */
        this.index = 0;
        this.sliderBoxStyleLeft = 0;
        this.sliderBoxItemWidth = 193;


        this.createHTML()
        this.root.appendChild(this.slider);
        // this.randomColor();

        this.sliderBoxItemCount = (this.data.length);
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



            // return `<li class="slider-box-item"><img src=${ele}></li>`
            return ` <li class="slider-box-item">
            <a href="">
            <p class="pImg"> <img src="${ele.imgSrc}" alt=""> </p>
            <div class="text">
                <p class="condition">${ele.discount}</p>
                <p class="p1">${ele.title}</p>

                <div class="timer2 clearfloat" data_time=${ele.timer}>
                <p >
                <i></i>
                <span class="spanH"></span>:
                <span class="spanM"></span>:
                <span class="spanS"></span>
                </p>
                </div>

                <p class="p2">
                    <span class="span2">￥${ele.price}</span>
                    <del>￥${ele.delPrice}</del>
                </p>

            </div>
        </a>

        </li>`



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
        slider.className = "slider4"
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
        this.index = this.index + 4;
        /*临界值检查*/

        if (this.index > (this.sliderBoxItemCount - 1)) {
            this.index = 0;
        }
        this.sliderBox.style.left = -this.index * this.sliderBoxItemWidth + "px";
        this.switchSlider(this.index);
    }
    prev() {
        this.index = this.index - 4;
        /*临界值检查*/
        if (this.index < 0) {
            this.index = this.sliderBoxItemCount - 4;
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