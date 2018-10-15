// 上滑到底部回调
var pullLoadCallback;
// 初始值不能为0
var marginBottom = 320;

function addMainDivListener(mainDiv) {
    mainDiv.addEventListener("touchend", function() {
        if (marginBottom <= 0) {
            var scrollTop = document.body.scrollTop;
            document.body.scrollTop = scrollTop - 1;
        }
    }, false);
}

/**
 * 回调业务请求方法
 */
function callback() {
    if (pullLoadMoreHelper.isLoading) {
        console.log("pull-load current loading is not finished");
        return;
    }
    if (pullLoadCallback) {
        console.log("pullLoadCallback");
        pullLoadMoreHelper.startRefresh();
        pullLoadCallback();
    }
}

var pullLoadMoreHelper = {
    isLoading : false,
    init : function() {
        window.onscroll = function() {
            marginBottom = document.body.scrollHeight - document.body.scrollTop - window.innerHeight;
            console.log("marginBottom = " + marginBottom);
            if (marginBottom <= 5) {
                callback();
            }
        };
    },
    //停止加载更多的刷新动画
    stopRefresh : function() {
        this.upDownDiv.removeChild(this.slip_up_arrow);
        this.slip_up_arrow = document.createElement("div");
        this.slip_up_arrow.id = "up_arrow";
        this.slip_up_arrow.className = "up_down_arrow";
        this.slip_up_arrow.style.backgroundImage = up_down_arrow_img;
        this.slip_up_text.innerHTML = '上拉加载更多';
        this.upDownDiv.appendChild(this.slip_up_arrow);
        this.isLoading = false;
    },
    //开始加载更多的刷新动画
    startRefresh : function() {
        this.upDownDiv.removeChild(this.slip_up_arrow);
        this.slip_up_arrow = document.createElement("div");
        this.slip_up_arrow.id = "up_arrow";
        this.slip_up_arrow.className = "up_down_arrow";
        this.slip_up_arrow.style.backgroundImage = up_down_arrow_img;
        this.upDownDiv.appendChild(this.slip_up_arrow);
        this.slip_up_text.innerHTML = 'Loading...';
        this.slip_up_arrow.style['webkitTransitionDuration'] = '0ms';
        this.slip_up_arrow.className += ' loading';
        this.isLoading = true;
    },
    //隐藏加载更多的刷新动画
    hideRefreshDiv : function() {
        this.stopRefresh();
        this.upDownDiv.style.display = "none";
    },

    //恢复加载更多的刷新动画
    recoverRefreshDiv : function() {
        this.upDownDiv.style.display = "block";
    },
    //创建加载更多的底部视图
    createLoadMoreDiv : function(mainDiv, pullBottomCallback) {
        this.upDownDiv = document.createElement("div");
        this.upDownDiv.className = "up_down";
        this.slip_up_arrow = document.createElement("div");
        this.slip_up_arrow.id = "up_arrow";
        this.slip_up_arrow.className = "up_down_arrow";
        this.slip_up_arrow.style.backgroundImage = up_down_arrow_img;
        this.slip_up_text = document.createElement("div");
        this.slip_up_text.id = "up_text";
        this.slip_up_text.className = "up_down_text";
        this.slip_up_text.innerHTML = "上拉加载更多";
        this.upDownDiv.appendChild(this.slip_up_arrow);
        this.upDownDiv.appendChild(this.slip_up_text);
        mainDiv.appendChild(this.upDownDiv);

        addMainDivListener(mainDiv);

        pullLoadCallback = pullBottomCallback;
        this.init();
    },

    //禁止加载更多的功能
    disablePullLoadMore : function() {
        this.stopRefresh();
        this.upDownDiv.innerHTML = "";
        this.upDownDiv.style.display = "none";
    }
};
