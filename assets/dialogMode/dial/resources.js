/**************dimen.js ************/
var dp = scale;

//default分辨率(320分辨率)
var dialog_title_canvas_height = 45*dp;
var cmbusiness_canvas_height = 28*dp;

var dialog_remind_btn_canvas_height = 47*dp;

var dialog_content_play_waiting_canvas_width = 18*dp;
var dialog_content_play_waiting_canvas_height = 18*dp;

var phoneNumJSpre = "<label class='css_dialog_phone_highlight_color'>";
var phoneNumJSpre_green = "<label class='css_dialog_phone_highlight_color_green'>";
var phoneJSpost = "</label>";

//拨号界面加载图片的长和宽
var dialog_call_loading_icon_width = 28*dp;
var dialog_call_loading_icon_height = 28*dp;
var dialog_phone_deafault_canvas = 28*dp;


//480分辨率
if (deviceWidth == 480) {
	dialog_call_loading_icon_width = 38;
	dialog_call_loading_icon_height = 38;
}
//540分辨率
else if (deviceWidth == 540) {
	dialog_content_play_waiting_canvas_width = 32;
	dialog_content_play_waiting_canvas_height = 32;
	dialog_phone_deafault_canvas = 48;
}
//720分辨率 
else if (deviceWidth == 720) {
	dialog_title_canvas_height = 111;
	dialog_remind_btn_canvas_height = 107;
	dialog_call_loading_icon_width = 58;
	dialog_call_loading_icon_height = 58;
	
	dialog_phone_deafault_canvas = 64;
}

/*********** /common/*.js ************/
var btn_arrow_down_nor = skinPath + "dialogModeRes/image/default/btn_arrow_down_nor.png";
var btn_arrow_down_press = skinPath + "dialogModeRes/image/default/btn_arrow_down_press.png";
var btn_arrow_up_nor = skinPath + "dialogModeRes/image/default/btn_arrow_up_nor.png";
var btn_arrow_up_press = skinPath + "dialogModeRes/image/default/btn_arrow_up_press.png";

var chat_corner_left = skinPath + "dialogModeRes/image/default/chat_corner_left.png";
var chat_corner_right = skinPath + "dialogModeRes/image/default/chat_corner_right.png";

/*********** callView.js************/
//新版联系人默认图片
var contact_icon_default = skinPath + "dialogModeRes/image/default/contact_avatar_default.png";

/************ latestCallView.js ************/

var ic_cal_log_item_btn_call_nor = skinPath + "dialogModeRes/image/default/ic_list_call_nor.png";
var ic_cal_log_item_btn_call_press = skinPath + "dialogModeRes/image/default/ic_list_call_press.png";
var ic_cal_log_item_btn_sms_nor = skinPath + "dialogModeRes/image/default/ic_list_sms_nor.png";
var ic_cal_log_item_btn_sms_press = skinPath + "dialogModeRes/image/default/ic_list_sms_press.png";
var ic_cal_log_item_btn_arrow_up = skinPath + "dialogModeRes/image/default/ic_dial_list_arrow_up.png";
var ic_cal_log_item_btn_arrow_down = skinPath + "dialogModeRes/image/default/ic_dial_list_arrow_down.png";

/************** missedCallView.js **************/
var ic_call_log_menu_icon_save = skinPath + "dialogModeRes/image/default/ic_dial_list_save.png";
var ic_call_log_menu_icon_mark = skinPath + "dialogModeRes/image/default/ic_dial_list_mark.png";
var ic_call_log_menu_icon_delete = skinPath + "dialogModeRes/image/default/ic_dial_list_delete.png";

var ic_nocontact = skinPath + "dialogModeRes/image/default/ic_nocontact.png";
var ic_regetcontact = skinPath + "dialogModeRes/image/default/ic_refresh_dial.png";
var ic_emotion_error = skinPath + "dialogModeRes/image/default/emotion_error.png";
var ic_btn_marked_dial = skinPath + "dialogModeRes/image/default/ic_marked_dial.png";

/************* sub_tel.js*****************/
var ic_list_arrow_left = skinPath + "dialogModeRes/image/default/ic_list_arrow_left.png";

/****************** contactCreateView.js ***********/
var btn_contact_reduce_nor = skinPath + "dialogModeRes/image/default/btn_contact_reduce_nor.png";
var btn_contact_reduce_press = skinPath + "dialogModeRes/image/default/btn_contact_reduce_press.png";

/****************** contactSearchView.js ************/
//新版联系人默认图片
var contact_item_order_bg = skinPath + "dialogModeRes/image/default/contact_sequence_bg.png";
var contact_icon_frame = skinPath + "dialogModeRes/image/default/contact_avatar_frame.png";

/**************** contactView **************/
var btn_call_nor = skinPath + "dialogModeRes/image/default/btn_call_nor.png";
var btn_call_press = skinPath + "dialogModeRes/image/default/btn_call_press.png";
var btn_sms_nor = skinPath + "dialogModeRes/image/default/btn_sms_nor.png";
var btn_sms_press = skinPath + "dialogModeRes/image/default/btn_sms_press.png";

/*************** phoneNumView.js**************/
var ic_sms = skinPath + "dialogModeRes/image/default/ic_sms.png";

/**************** latestSmsView.js ************/
var ic_weixin_nor = skinPath + "dialogModeRes/image/default/ic_weixin.png";
var ic_weixin_press = skinPath + "dialogModeRes/image/default/ic_weixin_press.png";
var ic_weixin_dim = skinPath + "dialogModeRes/image/default/ic_weixin_dim.png";

var ic_timeline_nor = skinPath + "dialogModeRes/image/default/ic_timeline.png";
var ic_timeline_press = skinPath + "dialogModeRes/image/default/ic_timeline_press.png";
var ic_timeline_dim = skinPath + "dialogModeRes/image/default/ic_timeline_dim.png";

var ic_weibo_nor = skinPath + "dialogModeRes/image/default/ic_weibo.png";
var ic_weibo_press = skinPath + "dialogModeRes/image/default/ic_weibo_press.png";
var ic_weibo_dim = skinPath + "dialogModeRes/image/default/ic_weibo_dim.png";

//分享
var ic_qqzone_nor = skinPath + "dialogModeRes/image/default/ic_qqzone_nor.png";
var ic_qqzone_press = skinPath + "dialogModeRes/image/default/ic_qqzone_press.png";
var ic_qqzone_dim = skinPath + "dialogModeRes/image/default/ic_qqzone_dim.png";

/*********** offlinePackageView.js ***************/
var btn_download_nor = skinPath + "dialogModeRes/image/default/btn_download_nor.png";
var btn_download_press = skinPath + "dialogModeRes/image/default/btn_download_press.png";

/************ smsView.js ****************/
var contact_arrow_down = skinPath + "dialogModeRes/image/default/contact_arrow_down.png";

var btn_add_nor = skinPath + "dialogModeRes/image/default/btn_add_nor.png";
var btn_add_press = skinPath + "dialogModeRes/image/default/btn_add_press.png";

var btn_bless_content_nor = skinPath + "dialogModeRes/image/default/btn_bless_content_nor.png";
var btn_bless_content_press = skinPath + "dialogModeRes/image/default/btn_bless_content_press.png";

var btn_change_contact_nor = skinPath + "dialogModeRes/image/default/btn_change_contact_nor.png";
var btn_change_contact_press = skinPath + "dialogModeRes/image/default/btn_change_contact_press.png";

var sms_muilt_micro_nor = skinPath + "dialogModeRes/image/default/btn_sms_minimic_nor.png";
var sms_muilt_micro_press = skinPath + "dialogModeRes/image/default/btn_sms_minimic_press.png";


// allway stay in the end of this file 
window.resourcesJsloadFinish = true;
console.log("trnaslate resources load finish");
