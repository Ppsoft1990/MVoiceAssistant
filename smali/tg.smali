.class Ltg;
.super Ljava/lang/Object;
.source "Skin.java"

# interfaces
.implements Lcom/iflytek/base/skin/ISkin;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colors()Ljava/util/Properties;
    .locals 3

    .prologue
    .line 1240
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1241
    .local v0, "properties":Ljava/util/Properties;
    const-string/jumbo v1, "title_color"

    const-string/jumbo v2, "#727c8a"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    const-string/jumbo v1, "title_color_new"

    const-string/jumbo v2, "#4798D7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    const-string/jumbo v1, "title_color_press_new"

    const-string/jumbo v2, "#459be7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    const-string/jumbo v1, "red"

    const-string/jumbo v2, "#ff0000"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    const-string/jumbo v1, "blue"

    const-string/jumbo v2, "#0000ff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    const-string/jumbo v1, "white"

    const-string/jumbo v2, "#FFFFFFFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    const-string/jumbo v1, "white_extra"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    const-string/jumbo v1, "black"

    const-string/jumbo v2, "#000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    const-string/jumbo v1, "transparent"

    const-string/jumbo v2, "#00000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    const-string/jumbo v1, "gray"

    const-string/jumbo v2, "#FF7B7676"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    const-string/jumbo v1, "title_white"

    const-string/jumbo v2, "#FFFFFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    const-string/jumbo v1, "setting_bg"

    const-string/jumbo v2, "#ffdde4f4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    const-string/jumbo v1, "setting_text"

    const-string/jumbo v2, "#ff365183"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    const-string/jumbo v1, "guide_text"

    const-string/jumbo v2, "#2a4690"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    const-string/jumbo v1, "contact_number_text"

    const-string/jumbo v2, "#FFFFFFFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    const-string/jumbo v1, "sms_edit_text"

    const-string/jumbo v2, "#182b3f"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    const-string/jumbo v1, "sms_receive_text"

    const-string/jumbo v2, "#d1d2fe"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string/jumbo v1, "setting_high_text_color"

    const-string/jumbo v2, "#FF56b2ff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    const-string/jumbo v1, "summary"

    const-string/jumbo v2, "#bebebe"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    const-string/jumbo v1, "mail_button_text_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    const-string/jumbo v1, "mail_text_date_color"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    const-string/jumbo v1, "add_number_view_date_color"

    const-string/jumbo v2, "#999999"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    const-string/jumbo v1, "list_dialog_text_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    const-string/jumbo v1, "permission_dialog_text_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    const-string/jumbo v1, "permission_record_text_color"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    const-string/jumbo v1, "permission_content_text_color"

    const-string/jumbo v2, "#838383"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    const-string/jumbo v1, "contact_yellow_page_press"

    const-string/jumbo v2, "#34CCCCCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    const-string/jumbo v1, "share_pic_bg_color"

    const-string/jumbo v2, "#F4F9FF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    const-string/jumbo v1, "dialog_split_line"

    const-string/jumbo v2, "#eae0ed"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    const-string/jumbo v1, "menu_press"

    const-string/jumbo v2, "#efefef"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    const-string/jumbo v1, "home_tab_bg_color"

    const-string/jumbo v2, "#eef2f6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    const-string/jumbo v1, "sign_in_button_color"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    const-string/jumbo v1, "sign_in_button_diable_color"

    const-string/jumbo v2, "#b4b9ba"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    const-string/jumbo v1, "color_custom_signed_label_toast_text"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    const-string/jumbo v1, "color_custom_signed_value_toast_text"

    const-string/jumbo v2, "#fa6564"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    const-string/jumbo v1, "remind_delay_guide_no_prompt_text"

    const-string/jumbo v2, "#838383"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    const-string/jumbo v1, "remind_schedule_dialog_title"

    const-string/jumbo v2, "#393939"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    const-string/jumbo v1, "remind_title_bar_text"

    const-string/jumbo v2, "#FFFFFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    const-string/jumbo v1, "remind_alarm_news_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    const-string/jumbo v1, "remind_alarm_news_close"

    const-string/jumbo v2, "#FFFFFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    const-string/jumbo v1, "remind_edit_panel_bg"

    const-string/jumbo v2, "#ededed"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const-string/jumbo v1, "remind_set_repeat_item_select_indicator"

    const-string/jumbo v2, "#f25555"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    const-string/jumbo v1, "reminder_repeat_setting_summary_text"

    const-string/jumbo v2, "#777777"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    const-string/jumbo v1, "external_reminder_source_desc"

    const-string/jumbo v2, "#626262"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    const-string/jumbo v1, "reminder_dialog_action_txt"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    const-string/jumbo v1, "remind_dialog_close_button"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    const-string/jumbo v1, "remind_dialog_delay_switch"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    const-string/jumbo v1, "remind_dialog_page"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    const-string/jumbo v1, "remind_dialog_date"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    const-string/jumbo v1, "remind_dialog_content"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    const-string/jumbo v1, "remind_dialog_delay_item_bg_normal"

    const-string/jumbo v2, "#e6e6ed"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    const-string/jumbo v1, "remind_dialog_delay_item_bg_pressed"

    const-string/jumbo v2, "#d5d5e0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    const-string/jumbo v1, "btn_reminder_add_nor"

    const-string/jumbo v2, "#37ba91"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    const-string/jumbo v1, "btn_reminder_add_press"

    const-string/jumbo v2, "#31a782"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    const-string/jumbo v1, "reminder_edit_summary"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    const-string/jumbo v1, "reminder_edit_summary_text"

    const-string/jumbo v2, "#838383"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    const-string/jumbo v1, "remind_title_bar_left_btn"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    const-string/jumbo v1, "remind_title_bar_right_btn"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    const-string/jumbo v1, "reminder_dialog_weather_description"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    const-string/jumbo v1, "reminder_dialog_weather_temperature"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    const-string/jumbo v1, "reminder_dialog_weather_city"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    const-string/jumbo v1, "reminder_dialog_weather_wind"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    const-string/jumbo v1, "reminder_dialog_weather_error"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    const-string/jumbo v1, "remind_manager_undelete_btn_color"

    const-string/jumbo v2, "#a2a2a2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    const-string/jumbo v1, "remind_manager_undelete_btn_back_color"

    const-string/jumbo v2, "#dcdcdc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    const-string/jumbo v1, "remind_manager_delete_btn_unfocus_color"

    const-string/jumbo v2, "#ef5654"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    const-string/jumbo v1, "remind_manager_delete_btn_focus_color"

    const-string/jumbo v2, "#da4c4b"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    const-string/jumbo v1, "remind_delete_button__text_color"

    const-string/jumbo v2, "#ff362f"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    const-string/jumbo v1, "remind_item_title_disable_color"

    const-string/jumbo v2, "#a7afa7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    const-string/jumbo v1, "remind_item_summery_disable_color"

    const-string/jumbo v2, "#bbbbbb"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    const-string/jumbo v1, "sms_write_contact_show_text_color"

    const-string/jumbo v2, "#29557b"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    const-string/jumbo v1, "contact_number_text"

    const-string/jumbo v2, "#6188aa"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    const-string/jumbo v1, "sms_dlg_date"

    const-string/jumbo v2, "#ACB2BB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    const-string/jumbo v1, "sms_dlg_name"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    const-string/jumbo v1, "mms_content_dialog_top_text_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    const-string/jumbo v1, "restaurant_title_panel_bg"

    const-string/jumbo v2, "#f8731a"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    const-string/jumbo v1, "restaurant_pressed_text_color"

    const-string/jumbo v2, "#FFFFFFFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    const-string/jumbo v1, "restaurant_shop_list_item_bg"

    const-string/jumbo v2, "#f2f2f7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    const-string/jumbo v1, "main_item_title"

    const-string/jumbo v2, "#4A7193"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    const-string/jumbo v1, "main_title"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    const-string/jumbo v1, "main_speech_view_send_btn_text_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    const-string/jumbo v1, "main_speech_view_send_text_color"

    const-string/jumbo v2, "#bdbdbd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    const-string/jumbo v1, "browser_title_bar_name"

    const-string/jumbo v2, "#9a9a9a"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    const-string/jumbo v1, "browser_title"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    const-string/jumbo v1, "browser_exception_line"

    const-string/jumbo v2, "#c8c8c8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    const-string/jumbo v1, "dlg_company_logo"

    const-string/jumbo v2, "#696775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    const-string/jumbo v1, "dlg_positive_button_text"

    const-string/jumbo v2, "#4282f7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    const-string/jumbo v1, "dlg_neutral_button_text"

    const-string/jumbo v2, "#ff3b2f"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    const-string/jumbo v1, "dlg_botton_press"

    const-string/jumbo v2, "#efefef"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    const-string/jumbo v1, "dlg_checkbox_tips"

    const-string/jumbo v2, "#838383"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    const-string/jumbo v1, "dlg_download_size_info"

    const-string/jumbo v2, "#838383"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    const-string/jumbo v1, "xpreference_title"

    const-string/jumbo v2, "#454547"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    const-string/jumbo v1, "xpreference_summary"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    const-string/jumbo v1, "xpreference_title_for_setting"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    const-string/jumbo v1, "xpreference_title_for_setting_new"

    const-string/jumbo v2, "#51595f"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    const-string/jumbo v1, "xpreference_title_gray_for_setting"

    const-string/jumbo v2, "#b6b6b6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    const-string/jumbo v1, "xpreference_summary_for_setting"

    const-string/jumbo v2, "#878787"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    const-string/jumbo v1, "xpreference_summary_for_setting_new"

    const-string/jumbo v2, "#a5a8a8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    const-string/jumbo v1, "xpreference_summary_gray_for_setting"

    const-string/jumbo v2, "#b6b6b6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    const-string/jumbo v1, "xpreference_activity_error"

    const-string/jumbo v2, "#4882b6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    const-string/jumbo v1, "select_call_tone"

    const-string/jumbo v2, "#79797B"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    const-string/jumbo v1, "select_call_tone_statement"

    const-string/jumbo v2, "#A4A4A4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    const-string/jumbo v1, "setting_item_normal"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    const-string/jumbo v1, "setting_item_pressed"

    const-string/jumbo v2, "#efefef"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    const-string/jumbo v1, "setting_item_setup_text"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    const-string/jumbo v1, "xpreference_adblock_num_clear_button_diable"

    const-string/jumbo v2, "#b6b6b6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    const-string/jumbo v1, "yudian_function_child_item_title"

    const-string/jumbo v2, "#aaaa00"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    const-string/jumbo v1, "yudian_function_child_item_summary"

    const-string/jumbo v2, "#367de9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    const-string/jumbo v1, "yudian_function_group_item_title"

    const-string/jumbo v2, "#4882b6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    const-string/jumbo v1, "yudian_function_group_item_summary"

    const-string/jumbo v2, "#959eae"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    const-string/jumbo v1, "menu_item_text"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    const-string/jumbo v1, "menu_item_sub_text"

    const-string/jumbo v2, "#838383"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    const-string/jumbo v1, "plugin_label_text_color"

    const-string/jumbo v2, "#838383"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    const-string/jumbo v1, "web_title_text"

    const-string/jumbo v2, "#FFFFFFFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    const-string/jumbo v1, "web_title_date_text"

    const-string/jumbo v2, "#d0e3eb"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    const-string/jumbo v1, "weather_last_update_text_color"

    const-string/jumbo v2, "#a5a7ae"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    const-string/jumbo v1, "weather_title_keyword_text_color"

    const-string/jumbo v2, "#425d78"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    const-string/jumbo v1, "weather_text_shadow_color"

    const-string/jumbo v2, "#66000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    const-string/jumbo v1, "music_play_text_color"

    const-string/jumbo v2, "#66abe0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    const-string/jumbo v1, "music_order_btn_text_color"

    const-string/jumbo v2, "#69bf65"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    const-string/jumbo v1, "window_bg"

    const-string/jumbo v2, "#F2F2F2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    const-string/jumbo v1, "music_dlg_color"

    const-string/jumbo v2, "#676779"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    const-string/jumbo v1, "music_threebutton_color"

    const-string/jumbo v2, "#515167"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    const-string/jumbo v1, "hotword_edit_hint_color"

    const-string/jumbo v2, "#DFE0E3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    const-string/jumbo v1, "contact_select_dialog_title_text"

    const-string/jumbo v2, "#676779"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    const-string/jumbo v1, "contact_select_dialog_title_text_extra"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    const-string/jumbo v1, "guide_sendmsg_tips_color"

    const-string/jumbo v2, "#afafaf"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    const-string/jumbo v1, "contact_add_list_item_title_color"

    const-string/jumbo v2, "#9292AB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    const-string/jumbo v1, "contact_add_list_bg_color"

    const-string/jumbo v2, "#f8f8f9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    const-string/jumbo v1, "contact_item_bubble_normal_color"

    const-string/jumbo v2, "#CCA276"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    const-string/jumbo v1, "contact_item_bubble_normal_color_extra"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    const-string/jumbo v1, "contact_item_bubble_pressed_color"

    const-string/jumbo v2, "#FFFFFFFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    const-string/jumbo v1, "sms_edit_send_btn_pressed_color"

    const-string/jumbo v2, "#E5E5E7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    const-string/jumbo v1, "sms_car_func_text_color"

    const-string/jumbo v2, "#676779"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    const-string/jumbo v1, "sms_edit_sms_content_text"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    const-string/jumbo v1, "btn_press_txt_color"

    const-string/jumbo v2, "#9ccc9c"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    const-string/jumbo v1, "download_item_normal_color"

    const-string/jumbo v2, "#f8f8f8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    const-string/jumbo v1, "download_item_press_color"

    const-string/jumbo v2, "#51abe9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    const-string/jumbo v1, "download_tab_select"

    const-string/jumbo v2, "#FCFDFD"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    const-string/jumbo v1, "download_tab_unselect"

    const-string/jumbo v2, "#FCFDFC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    const-string/jumbo v1, "download_tab_select_text"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    const-string/jumbo v1, "download_tab_unselect_text"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    const-string/jumbo v1, "download_tips_text"

    const-string/jumbo v2, "#B1B1B1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    const-string/jumbo v1, "download_tips_stop_text"

    const-string/jumbo v2, "#FF56B2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    const-string/jumbo v1, "download_progress"

    const-string/jumbo v2, "#70C7FF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    const-string/jumbo v1, "download_progress_new"

    const-string/jumbo v2, "#54BE7F"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    const-string/jumbo v1, "download_stop_progress"

    const-string/jumbo v2, "#CFD3D5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    const-string/jumbo v1, "download_progress_bg"

    const-string/jumbo v2, "#EAEBEC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    const-string/jumbo v1, "download_progress_bg_new"

    const-string/jumbo v2, "#E3E4E6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    const-string/jumbo v1, "download_item_continue_btn_text"

    const-string/jumbo v2, "#37ba91"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    const-string/jumbo v1, "download_list_bg"

    const-string/jumbo v2, "#F2F2F2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    const-string/jumbo v1, "authentication_dilog_title_text"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    const-string/jumbo v1, "authentication_dilog_message_text"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    const-string/jumbo v1, "authentication_dilog_button_text"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    const-string/jumbo v1, "guide_text_color"

    const-string/jumbo v2, "#c3c3cd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    const-string/jumbo v1, "guide_text_third_color"

    const-string/jumbo v2, "#7e7e7e"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    const-string/jumbo v1, "prompt_exemption_color"

    const-string/jumbo v2, "#7e7e7e"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    const-string/jumbo v1, "prompt_exemption_press_color"

    const-string/jumbo v2, "#0f95c6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    const-string/jumbo v1, "car_mod_start_btn_color"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    const-string/jumbo v1, "car_mod_start_btn_disable_color"

    const-string/jumbo v2, "#9fdaa0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    const-string/jumbo v1, "free_text_color"

    const-string/jumbo v2, "#eda528"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    const-string/jumbo v1, "car_mode_title_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    const-string/jumbo v1, "car_mode_item_title_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    const-string/jumbo v1, "car_mode_item_content_color"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    const-string/jumbo v1, "car_mode_item_content_small_color"

    const-string/jumbo v2, "#696969"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    const-string/jumbo v1, "more_body_title_item"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    const-string/jumbo v1, "news_download_tips"

    const-string/jumbo v2, "#444444"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    const-string/jumbo v1, "news_download_name"

    const-string/jumbo v2, "#5B5B66"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    const-string/jumbo v1, "news_download_size"

    const-string/jumbo v2, "#B5B594"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    const-string/jumbo v1, "news_alert_setting"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    const-string/jumbo v1, "news_alert_setting_sub"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    const-string/jumbo v1, "new_comer_guide_text"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    const-string/jumbo v1, "sytly_hold_mic_dialog_top_text_color"

    const-string/jumbo v2, "#FFFFFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    const-string/jumbo v1, "sytly_hold_mic_dialog_bottom_text_color"

    const-string/jumbo v2, "#FFFFFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    const-string/jumbo v1, "flight_query_input_tip_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    const-string/jumbo v1, "flight_query_confirm_btn_color"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    const-string/jumbo v1, "flight_query_error_tip_color"

    const-string/jumbo v2, "#f25555"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    const-string/jumbo v1, "video_tab_selected_color"

    const-string/jumbo v2, "#F4A43D"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    const-string/jumbo v1, "video_common_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    const-string/jumbo v1, "video_pubdate_color"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    const-string/jumbo v1, "cinema_common_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    const-string/jumbo v1, "cinema_color"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    const-string/jumbo v1, "adaptation_dialog_title_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    const-string/jumbo v1, "adaptation_dialog_btn_color"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    const-string/jumbo v1, "getmore_hotel_name"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    const-string/jumbo v1, "getmore_hotel_price"

    const-string/jumbo v2, "#55abee"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    const-string/jumbo v1, "getmore_hotel_address_and_score"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    const-string/jumbo v1, "ctrip_black_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    const-string/jumbo v1, "ctrip_dark_color"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    const-string/jumbo v1, "ctrip_blue_color"

    const-string/jumbo v2, "#55abee"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    const-string/jumbo v1, "ctrip_white_color"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    const-string/jumbo v1, "carmode_text_color"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    const-string/jumbo v1, "evagame_tip_text_color"

    const-string/jumbo v2, "#FF515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    const-string/jumbo v1, "evagame_tip_text_color_half_transparent"

    const-string/jumbo v2, "#88515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    const-string/jumbo v1, "evagame_wrong_input_text_color"

    const-string/jumbo v2, "#ffeb3e3e"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    const-string/jumbo v1, "oral_show_answer_text_color"

    const-string/jumbo v2, "#616161"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    const-string/jumbo v1, "oral_show_answer_desc_text_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    const-string/jumbo v1, "oral_show_answer_txt_color"

    const-string/jumbo v2, "#fedd6c"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    const-string/jumbo v1, "oral_show_answer_desc_text_spell_color"

    const-string/jumbo v2, "#f1543a"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    const-string/jumbo v1, "plugin_info_name_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    const-string/jumbo v1, "plugin_info_size_color"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    const-string/jumbo v1, "plugin_download_progress_color"

    const-string/jumbo v2, "#4282f7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    const-string/jumbo v1, "plugin_download_progress_bg_color"

    const-string/jumbo v2, "#e3e4e6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    const-string/jumbo v1, "plugin_manager_plugin_list_desc_color"

    const-string/jumbo v2, "#616161"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    const-string/jumbo v1, "plugin_test_version_color"

    const-string/jumbo v2, "#999999"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    const-string/jumbo v1, "plugin_extends_bg_color"

    const-string/jumbo v2, "#3a3a41"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    const-string/jumbo v1, "plugin_label_bg_color"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    const-string/jumbo v1, "plugin_label_btn_text_color"

    const-string/jumbo v2, "#5b84d0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    const-string/jumbo v1, "color_plugin_list_background"

    const-string/jumbo v2, "#ebebeb"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    const-string/jumbo v1, "color_plugin_test_version"

    const-string/jumbo v2, "#838383"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    const-string/jumbo v1, "call_broadcast_view_states_color"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    const-string/jumbo v1, "call_broadcast_view_number_content_color"

    const-string/jumbo v2, "#717171"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    const-string/jumbo v1, "call_broadcast_view_number_title_color"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    const-string/jumbo v1, "call_broadcast_view_sogou_content_color"

    const-string/jumbo v2, "#bdbdbd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    const-string/jumbo v1, "popupWondow_content_text"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    const-string/jumbo v1, "shortcut_content_btn"

    const-string/jumbo v2, "#616161"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    const-string/jumbo v1, "dial_specific_progress_pressed"

    const-string/jumbo v2, "#dedede"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    const-string/jumbo v1, "dial_specific_progress_normal"

    const-string/jumbo v2, "#f7f7f7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    const-string/jumbo v1, "dial_specific_list_bg_localism"

    const-string/jumbo v2, "#dbe9fd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    const-string/jumbo v1, "dial_specific_broadcast_tip"

    const-string/jumbo v2, "#838383"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    const-string/jumbo v1, "schedule_tone_setting_text"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    const-string/jumbo v1, "schedule_tone_setting_title_bg"

    const-string/jumbo v2, "#ebebeb"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    const-string/jumbo v1, "permission_setup_item_text_color"

    const-string/jumbo v2, "#37ba91"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    const-string/jumbo v1, "permission_setup_item_tip_color"

    const-string/jumbo v2, "#838383"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    const-string/jumbo v1, "share_select_title_color"

    const-string/jumbo v2, "#333333"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    const-string/jumbo v1, "weather_big_float_content_color"

    const-string/jumbo v2, "#333333"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    const-string/jumbo v1, "dialog_speech_buttton_enable"

    const-string/jumbo v2, "#515151"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    const-string/jumbo v1, "dialog_speech_buttton_disable"

    const-string/jumbo v2, "#838383"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    const-string/jumbo v1, "update_tip_color"

    const-string/jumbo v2, "#878787"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    const-string/jumbo v1, "dialog_remind_button_nor"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    const-string/jumbo v1, "dialog_remind_button_sel"

    const-string/jumbo v2, "#eef2f6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    const-string/jumbo v1, "color_standard_c1"

    const-string/jumbo v2, "#52595e"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    const-string/jumbo v1, "color_standard_c2"

    const-string/jumbo v2, "#757a7e"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    const-string/jumbo v1, "color_standard_c3"

    const-string/jumbo v2, "#979b9e"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    const-string/jumbo v1, "color_standard_c4"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    const-string/jumbo v1, "color_standard_c5"

    const-string/jumbo v2, "#4798d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    const-string/jumbo v1, "color_standard_c6"

    const-string/jumbo v2, "#49c4a3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    const-string/jumbo v1, "color_standard_c7"

    const-string/jumbo v2, "#ff0000"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    const-string/jumbo v1, "btn_upload_normal_color"

    const-string/jumbo v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    const-string/jumbo v1, "btn_upload_press_color"

    const-string/jumbo v2, "#d5e4fc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    const-string/jumbo v1, "title_text_color"

    const-string/jumbo v2, "#E8EAF4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    return-object v0
.end method

.method public images1080()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "main_button_mic"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_button_mic.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string/jumbo v1, "main_button_mic_error"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_button_mic_error.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string/jumbo v1, "sms_edit_title_bg"

    const-string/jumbo v2, "TYPE=0x1|NEED_SCALE=true|NAME=sms_title_bg.png|X_DIVS=20,21|Y_DIVS=90,91"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string/jumbo v1, "ic_remind_playercard_selected"

    const-string/jumbo v2, "TYPE=0x1|NAME=ic_remind_playercard_selected.png|X_DIVS=16,39|Y_DIVS=60,82|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-object v0
.end method

.method public images320()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "sms_edit_title_bg"

    const-string/jumbo v2, "TYPE=0x1|NEED_SCALE=true|NAME=sms_title_bg.png|X_DIVS=20,21|Y_DIVS=30,31"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo v1, "btn_cancel_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_cancel_nor.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string/jumbo v1, "btn_cancel_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_cancel_press.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v1, "main_btn_done_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_done_nor.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v1, "main_btn_done_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_done_press.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v1, "menu_new_plugin"

    const-string/jumbo v2, "TYPE=0x0|NAME=menu_new_plugin.png|SCALE_RATIO=0.6|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v1, "btn_menu_uninstall_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_menu_uninstall_nor.png|SCALE_RATIO=0.5|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v1, "btn_menu_uninstall_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_menu_uninstall_press.png|SCALE_RATIO=0.5|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v1, "btn_menu_update_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_menu_update_nor.png|SCALE_RATIO=0.5|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v1, "btn_menu_update_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_menu_update_press.png|SCALE_RATIO=0.5|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string/jumbo v1, "ic_remind_playercard_selected"

    const-string/jumbo v2, "TYPE=0x1|NAME=ic_remind_playercard_selected.png|X_DIVS=13,83|Y_DIVS=22,82|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object v0
.end method

.method public images480()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "sms_edit_title_bg"

    const-string/jumbo v2, "TYPE=0x1|NEED_SCALE=true|NAME=sms_title_bg.png|X_DIVS=20,21|Y_DIVS=45,46"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v1, "btn_cancel_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_cancel_nor.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v1, "btn_cancel_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_cancel_press.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v1, "mic_normal"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_normal.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v1, "mic_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_press.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v1, "main_btn_done_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_done_nor.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v1, "main_btn_done_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_done_press.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-object v0
.end method

.method public images540()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "btn_cancel_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_cancel_nor.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v1, "btn_cancel_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_cancel_press.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v1, "main_btn_done_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_done_nor.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v1, "main_btn_done_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_done_press.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v1, "sms_edit_title_bg"

    const-string/jumbo v2, "TYPE=0x1|NEED_SCALE=true|NAME=sms_title_bg.png|X_DIVS=21,22|Y_DIVS=60,61"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v1, "menu_new_plugin"

    const-string/jumbo v2, "TYPE=0x0|NAME=menu_new_plugin.png|SCALE_RATIO=0.9|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-object v0
.end method

.method public images640()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "btn_cancel_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_cancel_nor.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v1, "btn_cancel_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_cancel_press.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v1, "main_btn_done_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_done_nor.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v1, "main_btn_done_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_done_press.png|NEED_CACHE=true|NEED_SCALE=true|SCALE_RATIO=0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v1, "sms_edit_title_bg"

    const-string/jumbo v2, "TYPE=0x1|NEED_SCALE=true|NAME=sms_title_bg.png|X_DIVS=21,22|Y_DIVS=60,61"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-object v0
.end method

.method public images720()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "viafly_main_guide_one"

    const-string/jumbo v2, "TYPE=0x0|NAME=guide_slid1.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v1, "viafly_main_guide_two"

    const-string/jumbo v2, "TYPE=0x0|NAME=guide_slid2.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v1, "viafly_main_guide_three"

    const-string/jumbo v2, "TYPE=0x0|NAME=guide_slid3.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v1, "viafly_main_guide_four"

    const-string/jumbo v2, "TYPE=0x0|NAME=guide_slid4.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v1, "viafly_main_guide_five"

    const-string/jumbo v2, "TYPE=0x0|NAME=guide_slid5.jpg|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v1, "guide_logo"

    const-string/jumbo v2, "TYPE=0x0|NAME=guide_logo.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v1, "guide_over_start_sel"

    const-string/jumbo v2, "TYPE=0x0|NAME=guide_over_start_sel.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v1, "guide_over_start_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=guide_over_start_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v1, "guide_check_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=guide_check_bg.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v1, "guide_uncheck_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=guide_uncheck_bg.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v1, "share"

    const-string/jumbo v2, "TYPE=0x0|NAME=share.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v1, "list_item_divider"

    const-string/jumbo v2, "TYPE=0x0|NAME=list_item_divider.png|X_TILE_MODE=0x1|Y_TILE_MODE=0x2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v1, "list_item_background_pressed"

    const-string/jumbo v2, "TYPE=0x0|NAME=list_item_background_pressed.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v1, "dialogmode_button_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=dialogmode_button_normal.png|X_DIVS=10,30|Y_DIVS=10,30"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v1, "dialogmode_button_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=dialogmode_button_pressed.png|X_DIVS=10,30|Y_DIVS=10,30"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v1, "dialogmode_button_disabled"

    const-string/jumbo v2, "TYPE=0x1|NAME=dialogmode_button_disabled.png|X_DIVS=10,30|Y_DIVS=10,30"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v1, "progress_bar_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=progress_bar_bg.png|X_DIVS=20,70|Y_DIVS=7,12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v1, "second_progress_bar_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=second_progress_bar_bg.png|X_DIVS=10,90|Y_DIVS=10,12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v1, "setting_remind_icon"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_setting_remind.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v1, "arrow_right"

    const-string/jumbo v2, "TYPE=0x0|NAME=arrow_right.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v1, "arrow_down"

    const-string/jumbo v2, "TYPE=0x0|NAME=arrow_right_unfold.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v1, "main_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_bg.png|X_TILE_MODE=0x1|Y_TILE_MODE=0x1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v1, "split_tittle_line"

    const-string/jumbo v2, "TYPE=0x1|NAME=split_tittle_line.png|X_DIVS=4,5|Y_DIVS=1,2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v1, "share_cancel"

    const-string/jumbo v2, "TYPE=0x1|NAME=share_cancel.png|X_DIVS=5,30|Y_DIVS=5,28"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v1, "share_cancel_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=share_cancel_press.png|X_DIVS=5,30|Y_DIVS=5,28"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v1, "ic_translation_qq"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_translation_qq.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v1, "ic_translation_qq_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_translation_qq_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v1, "ic_translation_qq_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_translation_qq_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v1, "ic_translation_message"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_translation_message.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v1, "ic_translation_message_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_translation_message_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string/jumbo v1, "ic_translation_message_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_translation_message_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v1, "ic_translation_more"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_translation_more.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v1, "ic_translation_more_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_translation_more_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v1, "share_pic1"

    const-string/jumbo v2, "TYPE=0x0|NAME=pic1.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v1, "share_pic2"

    const-string/jumbo v2, "TYPE=0x0|NAME=pic2.jpg|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v1, "share_pic3"

    const-string/jumbo v2, "TYPE=0x0|NAME=pic3.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v1, "share_lingxi_QRCode"

    const-string/jumbo v2, "TYPE=0x0|NAME=share_lingxi_QRCode.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v1, "browser_navi_press_l"

    const-string/jumbo v2, "TYPE=0x0|NAME=browser_navi_press_l.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v1, "browser_navi_press_m"

    const-string/jumbo v2, "TYPE=0x0|NAME=browser_navi_press_m.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v1, "browser_navi_press_r"

    const-string/jumbo v2, "TYPE=0x0|NAME=browser_navi_press_r.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v1, "ic_browser_arrow_l"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_browser_arrow_l.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string/jumbo v1, "ic_browser_arrow_l_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_browser_arrow_l_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string/jumbo v1, "ic_browser_arrow_r_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_browser_arrow_r_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v1, "ic_browser_refresh_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_browser_refresh_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v1, "ic_browser_arrow_home"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_browser_arrow_home.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v1, "ic_browser_arrow_home_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_browser_arrow_home_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string/jumbo v1, "ic_browser_arrow_delete"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_browser_arrow_delete.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v1, "ic_browser_arrow_delete_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_browser_arrow_delete_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v1, "emotion_error"

    const-string/jumbo v2, "TYPE=0x0|NAME=emotion_error.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v1, "ico_refresh_tryagain"

    const-string/jumbo v2, "TYPE=0x0|NAME=ico_refresh_tryagain.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v1, "ico_install_network"

    const-string/jumbo v2, "TYPE=0x0|NAME=ico_install_network.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string/jumbo v1, "btn_refresh_tryagain_nor_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_refresh_tryagain_nor_bg.png|X_DIVS=10,15|Y_DIVS=10,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string/jumbo v1, "btn_refresh_tryagain_press_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_refresh_tryagain_press_bg.png|X_DIVS=10,15|Y_DIVS=10,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string/jumbo v1, "contact_checkbox_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME = contact_checkbox_nor.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string/jumbo v1, "contact_checkbox_sel"

    const-string/jumbo v2, "TYPE=0x0|NAME = contact_checkbox_sel.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string/jumbo v1, "contact_checkbox_nor_dialog"

    const-string/jumbo v2, "TYPE=0x0|NAME = contact_checkbox_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string/jumbo v1, "contact_checkbox_sel_dialog"

    const-string/jumbo v2, "TYPE=0x0|NAME = contact_checkbox_sel.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string/jumbo v1, "dial_transparent"

    const-string/jumbo v2, "TYPE=0x1|NAME=dial_transparent.png|X_DIVS=0,1|Y_DIVS=0,1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string/jumbo v1, "sms_item_divider"

    const-string/jumbo v2, "TYPE=0x0|NAME=sms_item_divider.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string/jumbo v1, "sms_receive_sim1"

    const-string/jumbo v2, "TYPE=0x0|NAME=sms_receive_sim1.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string/jumbo v1, "sms_receive_sim2"

    const-string/jumbo v2, "TYPE=0x0|NAME=sms_receive_sim2.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v1, "sms_dlg_btn_delete_normal"

    const-string/jumbo v2, "TYPE=0x0|NAME=sms_dlg_btn_delete_normal.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string/jumbo v1, "sms_dlg_btn_delete_pressed"

    const-string/jumbo v2, "TYPE=0x0|NAME=sms_dlg_btn_delete_pressed.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v1, "sms_btn_close_normal"

    const-string/jumbo v2, "TYPE=0x0|NAME=sms_btn_close_normal.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v1, "sms_btn_close_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=sms_btn_close_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string/jumbo v1, "sms_broadcast_setting_nor_hz"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_sms_setting_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string/jumbo v1, "sms_broadcast_setting_press_hz"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_sms_setting_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string/jumbo v1, "sms_receive_left_scroll_normal_hz"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_sms_pre.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string/jumbo v1, "sms_receive_right_scroll_normal_hz"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_sms_next.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string/jumbo v1, "sms_receive_dlg_close_btn_normal"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_sms_close_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v1, "sms_receive_dlg_close_btn_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_sms_close_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string/jumbo v1, "sms_dlg_title_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=sms_popup_title_bg.png|X_DIVS=22,23|Y_DIVS=21,22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string/jumbo v1, "sms_dlg_ic_sms_lingxi"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_sms_lingxi.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string/jumbo v1, "sms_dlg_btn_call_normal_hz"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_call_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v1, "sms_dlg_btn_call_pressed_hz"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_call_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string/jumbo v1, "sms_dlg_btn_delete_normal_hz"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_sms_delete_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v1, "sms_dlg_btn_delete_pressed_hz"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_sms_delete_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string/jumbo v1, "sms_btn_popup_save_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_popup_save_nor_dail.png|X_DIVS=23,24|Y_DIVS=23,24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string/jumbo v1, "sms_btn_popup_save_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_popup_save_press_dail.png|X_DIVS=23,24|Y_DIVS=23,24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string/jumbo v1, "dlg_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=dlg_bg.png|X_DIVS=13,15|Y_DIVS=12,14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string/jumbo v1, "dlg_speakover_btn_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=dlg_speakover_btn_normal.png|X_DIVS=11,14|Y_DIVS=5,120"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string/jumbo v1, "dlg_speakover_btn_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=dlg_speakover_btn_pressed.png|X_DIVS=11,14|Y_DIVS=5,120"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string/jumbo v1, "dlg_speakover_btn_disabled"

    const-string/jumbo v2, "TYPE=0x1|NAME=dlg_speakover_btn_disabled.png|X_DIVS=12,22|Y_DIVS=5,120|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v1, "dlg_cancel_btn_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=dlg_cancel_btn_normal.png|X_DIVS=3,6|Y_DIVS=5,125"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string/jumbo v1, "dlg_cancel_btn_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=dlg_cancel_btn_pressed.png|X_DIVS=3,6|Y_DIVS=5,125"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string/jumbo v1, "dlg_single_cancel_btn_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=dlg_single_cancel_btn_normal.png|X_DIVS=10,13|Y_DIVS=5,120"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string/jumbo v1, "dlg_single_cancel_btn_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=dlg_single_cancel_btn_pressed.png|X_DIVS=10,13|Y_DIVS=5,120"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string/jumbo v1, "dlg_recognizing_progress"

    const-string/jumbo v2, "TYPE=0x0|NAME=dlg_recognizing_progress.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string/jumbo v1, "loading_circle"

    const-string/jumbo v2, "TYPE=0x0|NAME=loading_circle.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string/jumbo v1, "dlg_wave0"

    const-string/jumbo v2, "TYPE=0x0|NAME=dlg_wave0.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string/jumbo v1, "dlg_wave1"

    const-string/jumbo v2, "TYPE=0x0|NAME=dlg_wave1.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v1, "dlg_wave2"

    const-string/jumbo v2, "TYPE=0x0|NAME=dlg_wave2.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v1, "dlg_wave3"

    const-string/jumbo v2, "TYPE=0x0|NAME=dlg_wave3.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v1, "dlg_wave4"

    const-string/jumbo v2, "TYPE=0x0|NAME=dlg_wave4.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v1, "dlg_company_logo"

    const-string/jumbo v2, "TYPE=0x0|NAME=dlg_company_logo.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string/jumbo v1, "ic_nonetwork_b"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_nonetwork_b.png|NEED_SCALE=false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string/jumbo v1, "dlg_bottom_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_dialog_nor.png|X_DIVS=20,30|Y_DIVS=15,20|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string/jumbo v1, "mainpage_title_bg_wap"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_title_bg_wap.png|X_DIVS=5,50|Y_DIVS=6,60|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string/jumbo v1, "home_menu_normal"

    const-string/jumbo v2, "TYPE=0x0|NAME=home_menu_normal.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string/jumbo v1, "home_message_indicator"

    const-string/jumbo v2, "TYPE=0x0|NAME=home_message_indicator.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string/jumbo v1, "home_title_app_recommend_reddot"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_title_reddot.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v1, "home_user_online_window_thread"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_user_online_window_thread.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string/jumbo v1, "main_gridview_item_background"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_gridview_item_background.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v1, "main_gridview_item_bg_pressed"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_gridview_item_bg_pressed.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v1, "btn_title_press_l"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_title_press_l.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string/jumbo v1, "btn_title_press_r"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_title_press_r.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string/jumbo v1, "ic_sms_cancel"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_sms_cancel.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v1, "mic_normal"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_normal.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string/jumbo v1, "mic_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_press.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v1, "ic_mic_dot_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mic_dot_dim.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v1, "ic_mic_dot_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mic_dot_nor.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v1, "ic_text_dot_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_text_dot_dim.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v1, "ic_text_dot_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_text_dot_nor.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v1, "btn_mic_base_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_mic_base_nor.png|X_DIVS=7,15|Y_DIVS=7,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v1, "home_title_close_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_closed_default.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v1, "home_title_close_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_closed_highlight.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v1, "home_title_refresh_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_refresh_default.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string/jumbo v1, "home_title_refresh_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_refresh_highlight.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v1, "btn_mic_base_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_mic_base_press.png|X_DIVS=7,15|Y_DIVS=7,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string/jumbo v1, "btn_mic_base_dim"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_mic_base_dim.png|X_DIVS=14,56|Y_DIVS=15,44"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string/jumbo v1, "btn_mic_base_speak_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_mic_base_speak_nor.png|X_DIVS=7,15|Y_DIVS=7,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string/jumbo v1, "btn_cancel_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_cancel_nor.png|NEED_CACHE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string/jumbo v1, "btn_cancel_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_cancel_press.png|NEED_CACHE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string/jumbo v1, "main_btn_done_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_done_nor.png|NEED_CACHE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string/jumbo v1, "main_btn_done_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_done_press.png|NEED_CACHE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v1, "mainpage_inputbox_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_inputbox_nor.png|X_DIVS=8,13|Y_DIVS=8,13|PADDING=5,3,3,3|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string/jumbo v1, "mainpage_inputbox_blue"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_inputbox_blue.png|X_DIVS=8,13|Y_DIVS=8,13|PADDING=5,3,3,3|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string/jumbo v1, "mainpage_shadow_title"

    const-string/jumbo v2, "TYPE=0x0|NAME=mainpage_title_shadow.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string/jumbo v1, "ic_offline"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_offline.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string/jumbo v1, "ic_installed"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_installed.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v1, "ic_mainpage_more"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_more.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string/jumbo v1, "fluentpage_title_bg_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=fluentpage_title_bg_press.png|X_DIVS=5,20|Y_DIVS=5,20|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string/jumbo v1, "mainpage_title_bg_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_title_bg_press.png|X_DIVS=5,20|Y_DIVS=5,20|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string/jumbo v1, "ic_browser_back_arrow"

    const-string/jumbo v2, "TYPE=0x0|NAME=comm_top_back_nor.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v1, "but_back_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=comm_top_back_nor.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v1, "title_broadcast_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=fluepage_title_broadcast_nor.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v1, "title_broadcast_first"

    const-string/jumbo v2, "TYPE=0x0|NAME=fluepage_title_broadcast_first.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v1, "title_broadcast_second"

    const-string/jumbo v2, "TYPE=0x0|NAME=fluepage_title_broadcast_second.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string/jumbo v1, "title_close_btn"

    const-string/jumbo v2, "TYPE=0x0|NAME=title_close_btn.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string/jumbo v1, "title_refresh_btn"

    const-string/jumbo v2, "TYPE=0x0|NAME=title_refresh_btn.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string/jumbo v1, "ic_browser_refresh"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_browser_refresh.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string/jumbo v1, "ic_browser_cancel"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_browser_cancel.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v1, "fluepage_title_more"

    const-string/jumbo v2, "TYPE=0x0|NAME=fluepage_title_more.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string/jumbo v1, "fluepage_title_broadcast_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=fluepage_title_broadcast_nor.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v1, "fluepage_title_broadcast_first"

    const-string/jumbo v2, "TYPE=0x0|NAME=fluepage_title_broadcast_first.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string/jumbo v1, "fluepage_title_broadcast_second"

    const-string/jumbo v2, "TYPE=0x0|NAME=fluepage_title_broadcast_second.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v1, "ic_mainpage_set_feedback"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_set_feedback.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string/jumbo v1, "ic_mainpage_set_help"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_set_help.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string/jumbo v1, "ic_mainpage_set_setting"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_set_setting.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string/jumbo v1, "ic_mainpage_set_share"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_set_share.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string/jumbo v1, "ic_mainpage_set_topplaza"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_set_topplaza.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v1, "ic_mainpage_set_download"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_set_download.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string/jumbo v1, "browser_title_line"

    const-string/jumbo v2, "TYPE=0x0|NAME=browser_title_line.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v1, "main_foot_btn_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=main_foot_btn_normal.png|X_DIVS=10,44|Y_DIVS=10,44|PADDING=0,10,0,10|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v1, "main_foot_btn_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=main_foot_btn_pressed.png|X_DIVS=10,44|Y_DIVS=10,44|PADDING=0,10,0,10|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string/jumbo v1, "main_foot_btn_disabled"

    const-string/jumbo v2, "TYPE=0x1|NAME=main_foot_btn_disabled.png|X_DIVS=10,44|Y_DIVS=10,44|PADDING=0,10,0,10|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string/jumbo v1, "main_foot_left_btn_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=main_foot_left_btn_normal.png|X_DIVS=10,14|Y_DIVS=10,44|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string/jumbo v1, "main_foot_left_btn_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=main_foot_left_btn_pressed.png|X_DIVS=10,14|Y_DIVS=10,44|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v1, "main_foot_right_btn_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=main_foot_right_btn_normal.png|X_DIVS=2,10|Y_DIVS=10,44|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string/jumbo v1, "main_foot_right_btn_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=main_foot_right_btn_pressed.png|X_DIVS=2,10|Y_DIVS=10,44|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string/jumbo v1, "reminder_list_title_sample"

    const-string/jumbo v2, "TYPE=0x1|NAME=reminder_list_title_sample.png|X_DIVS=23,25|Y_DIVS=16,33|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string/jumbo v1, "mainpage_list_mid_help"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_mid_help.png|X_DIVS=3,29|Y_DIVS=2,19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v1, "mainpage_list_mid_help_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_mid_help_press.png|X_DIVS=3,29|Y_DIVS=2,19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v1, "plugin_list_item_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=plugin_list_item_press.png|X_DIVS=3,29|Y_DIVS=2,19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v1, "ic_mapply_popup_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=ic_mapply_popup_bg.png|X_DIVS=12,28|Y_DIVS=12,30"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v1, "main_speech_height_hack"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_speech_height_hack.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string/jumbo v1, "main_speech_mic_normal"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_speech_mic_normal.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v1, "mic_voice_click"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_voice_click.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v1, "mic_voice_click_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_voice_click_new.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string/jumbo v1, "mic_voice_sel"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_voice_sel.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v1, "mic_voice_sel_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_voice_sel_new.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v1, "mic_voice_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_voice_nor.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v1, "mic_voice_nor_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_voice_nor_new.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string/jumbo v1, "main_speech_mic_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_speech_mic_press.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v1, "main_speech_mic_gray"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_speech_mic_gray.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v1, "main_speech_delete"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_speech_delete.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string/jumbo v1, "main_speech_help"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_speech_help.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v1, "main_speech_help_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_speech_help_press.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v1, "main_speech_switch_keyboard"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_speech_switch_keyboard.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string/jumbo v1, "main_speech_switch_keyboard_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_speech_switch_keyboard_press.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string/jumbo v1, "main_speech_mic_input_cancel"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_speech_mic_input_cancel.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string/jumbo v1, "home_tab_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=home_tab_bg.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string/jumbo v1, "mic_page_background"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_page_background.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string/jumbo v1, "main_button_mic"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_button_mic.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string/jumbo v1, "main_button_mic_error"

    const-string/jumbo v2, "TYPE=0x0|NAME=main_button_mic_error.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string/jumbo v1, "shop_list_item_pressed_extra"

    const-string/jumbo v2, "TYPE=0x1|NAME=subpage_list_press.png|X_DIVS=17,18|Y_DIVS=17,18"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string/jumbo v1, "shop_list_item_normal_extra"

    const-string/jumbo v2, "TYPE=0x1|NAME=subpage_list_nor.png|X_DIVS=17,18|Y_DIVS=17,18"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string/jumbo v1, "ic_new_version"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_new_version.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v1, "ic_schedule_delay_phone_close"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_schedule_delay_phone_close.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string/jumbo v1, "ic_schedule_delay_safeapp"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_schedule_delay_safeapp.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string/jumbo v1, "remind_personal_ringtone_edit_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_personal_ringtone_edit_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v1, "remind_personal_ringtone_edit_sel"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_personal_ringtone_edit_sel.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string/jumbo v1, "remind_personal_ringtone_complete_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_personal_ringtone_complete_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string/jumbo v1, "remind_personal_ringtone_complete_sel"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_personal_ringtone_complete_sel.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string/jumbo v1, "ic_subpage_set_remind"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_subpage_set_remind.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string/jumbo v1, "schedule_remind_defaut"

    const-string/jumbo v2, "TYPE=0x0|NAME=schedule_remind_defaut.jpg|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string/jumbo v1, "schedule_remind_defaut"

    const-string/jumbo v2, "NAME=schedule_remind_defaut.jpg|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string/jumbo v1, "ic_reminde_close"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_reminde_close.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string/jumbo v1, "mainpage_title_shadow"

    const-string/jumbo v2, "TYPE=0x0|NAME=mainpage_title_shadow.png|X_TILE_MODE=0x1|Y_TILE_MODE=0x2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string/jumbo v1, "mainpage_list_single"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_single.png|X_DIVS=13,24|Y_DIVS=10,22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string/jumbo v1, "mainpage_list_single_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_single_press.png|X_DIVS=15,20|Y_DIVS=15,20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string/jumbo v1, "mainpage_list_top"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_top.png|X_DIVS=13,24|Y_DIVS=14,22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string/jumbo v1, "mainpage_list_top_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_top_press.png|X_DIVS=13,24|Y_DIVS=14,21"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string/jumbo v1, "mainpage_list_mid"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_mid.png|X_DIVS=6,32|Y_DIVS=2,18"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string/jumbo v1, "mainpage_list_mid_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_mid_press.png|X_DIVS=6,32|Y_DIVS=2,18"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string/jumbo v1, "mainpage_list_nobound_mid"

    const-string/jumbo v2, "TYPE=0x1|NAME=contact_edit_list_bg.png|X_DIVS=6,32|Y_DIVS=2,18"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string/jumbo v1, "mainpage_list_btm"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_btm.png|X_DIVS=13,24|Y_DIVS=3,11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string/jumbo v1, "mainpage_list_btm_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_btm_press.png|X_DIVS=13,24|Y_DIVS=3,11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string/jumbo v1, "btn_popup_l_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_popup_l_nor.png|X_DIVS=14,35|Y_DIVS=3,34"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string/jumbo v1, "btn_popup_l_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_popup_l_press.png|X_DIVS=14,35|Y_DIVS=3,34"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string/jumbo v1, "btn_popup_m_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_btm.png|X_DIVS=14,23|Y_DIVS=10,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string/jumbo v1, "btn_popup_m_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_btm_press.png|X_DIVS=14,23|Y_DIVS=10,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string/jumbo v1, "btn_popup_r_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_popup_r_nor.png|X_DIVS=3,23|Y_DIVS=3,34"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string/jumbo v1, "btn_popup_r_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_popup_r_press.png|X_DIVS=3,23|Y_DIVS=3,34"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string/jumbo v1, "remind_fold"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_list_arrow_left.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string/jumbo v1, "remind_arrow_up"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_arrow_up.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string/jumbo v1, "remind_arrow_down"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_arrow_down.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string/jumbo v1, "list_arrow_up"

    const-string/jumbo v2, "TYPE=0x0|NAME=list_arrow_up.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string/jumbo v1, "list_arrow_down"

    const-string/jumbo v2, "TYPE=0x0|NAME=list_arrow_down.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string/jumbo v1, "remind_list_item_divider"

    const-string/jumbo v2, "TYPE=0x0|NAME=dialogmode_list_divider.png|X_TILE_MODE=0x1|Y_TILE_MODE=0x2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v1, "btn_reminder_add_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_reminder_add_nor.png|X_DIVS=14,26|Y_DIVS=17,26"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string/jumbo v1, "schedule_delete_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=schedule_delete_bg.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string/jumbo v1, "btn_reminder_add_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_reminder_add_press.png|X_DIVS=14,24|Y_DIVS=16,22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string/jumbo v1, "btn_reminder_edit_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_reminder_edit_nor.png|X_DIVS=15,31|Y_DIVS=15,31|PADDING=0,5,0,5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string/jumbo v1, "btn_reminder_edit_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_reminder_edit_press.png|X_DIVS=15,31|Y_DIVS=15,31|PADDING=0,5,0,5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string/jumbo v1, "remind_edit_switch_open"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_edit_switch_open.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string/jumbo v1, "remind_edit_switch_close"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_edit_switch_close.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string/jumbo v1, "remind_set_repeat_week_item_selected_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_set_repeat_week_item_selected_bg.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string/jumbo v1, "remind_set_repeat_week_item_unselected_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_set_repeat_week_item_unselected_bg.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string/jumbo v1, "remind_set_repeat_week_item_divider"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_set_repeat_week_item_divider.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string/jumbo v1, "remind_set_repeat_week_type_selected_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_set_repeat_week_type_selected_bg.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string/jumbo v1, "remind_set_repeat_week_type_unselected_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_set_repeat_week_type_unselected_bg.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string/jumbo v1, "r_repeat_setting_selected_mark"

    const-string/jumbo v2, "TYPE=0x0|NAME=r_repeat_setting_selected_mark.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string/jumbo v1, "remind_dialog_close_bg_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=remind_dialog_close_bg_normal.png|X_DIVS=13,36|Y_DIVS=2,19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string/jumbo v1, "remind_dialog_close_bg_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=remind_dialog_close_bg_pressed.png|X_DIVS=13,36|Y_DIVS=2,19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string/jumbo v1, "remind_dialog_close_bg2_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=remind_dialog_close_bg2_normal.png|X_DIVS=13,36|Y_DIVS=2,19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string/jumbo v1, "remind_dialog_close_bg2_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=remind_dialog_close_bg2_pressed.png|X_DIVS=13,36|Y_DIVS=2,19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string/jumbo v1, "remind_trigger_left_scroll_normal"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_trigger_left_scroll_normal.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string/jumbo v1, "remind_trigger_left_scroll_pressed"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_trigger_left_scroll_pressed.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string/jumbo v1, "remind_trigger_left_scroll_disable"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_trigger_left_scroll_disable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string/jumbo v1, "remind_trigger_right_scroll_normal"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_trigger_right_scroll_normal.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string/jumbo v1, "remind_trigger_right_scroll_pressed"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_trigger_right_scroll_pressed.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string/jumbo v1, "remind_trigger_right_scroll_disable"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_trigger_right_scroll_disable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string/jumbo v1, "remind_dialog_sms_logo"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_dialog_sms_logo.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string/jumbo v1, "remind_dialog_call_logo"

    const-string/jumbo v2, "TYPE=0x0|NAME=remind_dialog_call_logo.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string/jumbo v1, "btn_broadcast_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_broadcast_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string/jumbo v1, "btn_broadcast_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_broadcast_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string/jumbo v1, "btn_broadcast_offline_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_broadcast_offline.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string/jumbo v1, "btn_broadcast_offline_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_broadcast_offline_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string/jumbo v1, "btn_broadcast_off_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_broadcast_off_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string/jumbo v1, "btn_broadcast_off_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_broadcast_off_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string/jumbo v1, "btn_broadcast_nor_first_wave"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_broadcast_nor_first_wave.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string/jumbo v1, "btn_broadcast_nor_second_wave"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_broadcast_nor_second_wave.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string/jumbo v1, "weather_na_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_na_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v1, "shedule_remind_news"

    const-string/jumbo v2, "TYPE=0x0|NAME=schedule_remind_news.jpg|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string/jumbo v1, "remind_manage_checkbox_selected"

    const-string/jumbo v2, "TYPE=0x0|NAME=schedule_checkbox_selected.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string/jumbo v1, "remind_manage_checkbox_selected_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=schedule_checkbox_selected_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string/jumbo v1, "remind_manage_checkbox_unselected"

    const-string/jumbo v2, "TYPE=0x0|NAME=schedule_checkbox_unselected.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string/jumbo v1, "switch_reminder_on_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=switch_reminder_on_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string/jumbo v1, "switch_reminder_off_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=switch_reminder_off_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string/jumbo v1, "ic_subpage_reminder_broadcastreminder"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_subpage_reminder_broadcastreminder.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string/jumbo v1, "ic_subpage_reminder_feature"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_subpage_reminder_feature.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string/jumbo v1, "ic_subpage_reminder_morering"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_subpage_reminder_morering.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string/jumbo v1, "ic_subpage_reminder_weather"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_subpage_reminder_weather.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string/jumbo v1, "ic_remindermainpage_clock"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remindermainpage_clock.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string/jumbo v1, "ic_remind_todoitem_weather_enable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_weather_enable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string/jumbo v1, "ic_remind_todoitem_weather_disable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_weather_disable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string/jumbo v1, "ic_remind_todoitem_news_enable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_news_enable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string/jumbo v1, "ic_remind_todoitem_news_disable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_news_disable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string/jumbo v1, "ic_remind_todoitem_long_enable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_long_enable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string/jumbo v1, "ic_remind_todoitem_long_disable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_long_disable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string/jumbo v1, "ic_remind_todoitem_personal_enable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_personal_enable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string/jumbo v1, "ic_remind_todoitem_personal_disable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_personal_disable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string/jumbo v1, "ic_remind_todoitem_local_enable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_local_enable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string/jumbo v1, "ic_remind_todoitem_local_disable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_local_disable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string/jumbo v1, "ic_remind_todoitem_record_enable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_record_enable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string/jumbo v1, "ic_remind_todoitem_record_disable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_record_disable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string/jumbo v1, "ic_remind_todoitem_record_morning_enable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_record_morning_enable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string/jumbo v1, "ic_remind_todoitem_record_night_enable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_record_night_enable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string/jumbo v1, "ic_remind_todoitem_record_remind_enable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_record_remind_enable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string/jumbo v1, "ic_remind_todoitem_record_morning_disable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_record_morning_disable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string/jumbo v1, "ic_remind_todoitem_record_night_disable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_record_night_disable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string/jumbo v1, "ic_remind_todoitem_record_remind_disable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_todoitem_record_remind_disable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string/jumbo v1, "ic_remindermainpage_weather"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remindermainpage_weather.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string/jumbo v1, "ic_new_schedule_sel"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_new_schedule_sel.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string/jumbo v1, "ic_new_schedule_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_new_schedule_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string/jumbo v1, "ic_remindermainpage_heart"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remindermainpage_heart.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string/jumbo v1, "ic_remindermainpage_hot"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remindermainpage_hot.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string/jumbo v1, "ic_remindermainpage_note"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remindermainpage_note.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string/jumbo v1, "ic_remindermainpage_recommend"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remindermainpage_recommend.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string/jumbo v1, "ic_browser_reminder_history"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_browser_reminder_history.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string/jumbo v1, "ic_browser_reminder_history_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_browser_reminder_history_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string/jumbo v1, "ic_umbrella_reminder_demo"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_umbrella_reminder_demo.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string/jumbo v1, "settings_arrow_down"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_list_arrow_left.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string/jumbo v1, "settings_checkbox_selected_enabled"

    const-string/jumbo v2, "TYPE=0x0|NAME=settings_checkbox_selected_enabled.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string/jumbo v1, "settings_checkbox_unselected_disabled"

    const-string/jumbo v2, "TYPE=0x0|NAME=settings_checkbox_unselected_disabled.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string/jumbo v1, "settings_checkbox_unselected_enabled"

    const-string/jumbo v2, "TYPE=0x0|NAME=settings_checkbox_unselected_enabled.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string/jumbo v1, "radio_button_unselected"

    const-string/jumbo v2, "TYPE=0x0|NAME=radio_button_unselected.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string/jumbo v1, "radio_button_selected"

    const-string/jumbo v2, "TYPE=0x0|NAME=radio_button_selected.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string/jumbo v1, "settings_title_bar_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=settings_title_bar_bg.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string/jumbo v1, "setting_list_item_divider"

    const-string/jumbo v2, "TYPE=0x1|NAME=split_line.png|X_DIVS=4,6|Y_DIVS=1,2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string/jumbo v1, "setting_item_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_single.png|X_DIVS=15,20|Y_DIVS=15,20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string/jumbo v1, "setting_item_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_single_press.png|X_DIVS=15,20|Y_DIVS=15,20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string/jumbo v1, "but_on"

    const-string/jumbo v2, "TYPE=0x0|NAME=but_on.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string/jumbo v1, "but_off"

    const-string/jumbo v2, "TYPE=0x0|NAME=but_off.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string/jumbo v1, "bg_setting_circle_checked"

    const-string/jumbo v2, "TYPE=0x0|NAME=bg_setting_circle_checked.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string/jumbo v1, "bg_setting_circle_unchecked"

    const-string/jumbo v2, "TYPE=0x0|NAME=bg_setting_circle_unchecked.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string/jumbo v1, "bg_checkbox"

    const-string/jumbo v2, "TYPE=0x0|NAME=bg_checkbox.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string/jumbo v1, "but_on_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=but_on_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string/jumbo v1, "but_off_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=but_off_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string/jumbo v1, "switch_on"

    const-string/jumbo v2, "TYPE=0x0|NAME=switch_on.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string/jumbo v1, "switch_off"

    const-string/jumbo v2, "TYPE=0x0|NAME=switch_off.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string/jumbo v1, "switch_off_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=switch_setting_off_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string/jumbo v1, "switch_on_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=switch_setting_on_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string/jumbo v1, "setting_ic_subpage_list_arrow"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_subpage_list_arrow.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string/jumbo v1, "setting_ic_subpage_list_arrow_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_subpage_list_arrow_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string/jumbo v1, "setting_bg_top_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_top.png|X_DIVS=14,20|Y_DIVS=14,20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string/jumbo v1, "setting_bg_top_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_top_press.png|X_DIVS=14,20|Y_DIVS=14,20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string/jumbo v1, "setting_bg_mid_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_mid.png|X_DIVS=13,15|Y_DIVS=5,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string/jumbo v1, "setting_bg_mid_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_mid_press.png|X_DIVS=13,15|Y_DIVS=5,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string/jumbo v1, "setting_bg_bottom_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_btm.png|X_DIVS=15,22|Y_DIVS=2,12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string/jumbo v1, "setting_bg_bottom_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_btm_press.png|X_DIVS=15,22|Y_DIVS=2,12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string/jumbo v1, "setting_bg_bottom_normal_1"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_btm.png|X_DIVS=15,22|Y_DIVS=2,12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string/jumbo v1, "setting_bg_bottom_pressed_1"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_btm_press.png|X_DIVS=15,22|Y_DIVS=2,12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string/jumbo v1, "setting_title_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=setting_title.png|X_DIVS=10,50|Y_DIVS=20,60"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string/jumbo v1, "check_version_button_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_check_update_nor.png|X_DIVS=16,46|Y_DIVS=16,22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string/jumbo v1, "check_version_button_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_check_update_press.png|X_DIVS=16,46|Y_DIVS=16,22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string/jumbo v1, "adblock_clear_button_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_list_download_nor.png|X_DIVS=5,10|Y_DIVS=5,10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string/jumbo v1, "adblock_clear_button_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_list_download_press.png|X_DIVS=5,10|Y_DIVS=5,10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string/jumbo v1, "adblock_clear_button_disabled"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_list_download_disabled.png|X_DIVS=5,10|Y_DIVS=5,10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string/jumbo v1, "btn_more_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_more_nor.png|X_DIVS=7,13|Y_DIVS=7,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string/jumbo v1, "btn_more_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_more_press.png|X_DIVS=7,13|Y_DIVS=7,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string/jumbo v1, "address_input_bg_dial"

    const-string/jumbo v2, "TYPE=0x1|NAME=address_input_bg_dial.png|X_DIVS=15,18|Y_DIVS=1,6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string/jumbo v1, "btn_input_del_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_input_del_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string/jumbo v1, "ic_broadcast_default_icon"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_broadcast_default_icon.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string/jumbo v1, "ic_add_privacy_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_add_privacy_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string/jumbo v1, "btn_contact_reduce_nor_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_contact_reduce_nor_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string/jumbo v1, "btn_contact_reduce_press_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_contact_reduce_press_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string/jumbo v1, "btn_privacy_nor_dial"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_privacy_nor_dial.png|X_DIVS=11,12|Y_DIVS=11,12|PADDING=0,5,0,5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string/jumbo v1, "btn_privacy_press_dial"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_privacy_press_dial.png|X_DIVS=11,12|Y_DIVS=11,12|PADDING=0,5,0,5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string/jumbo v1, "menu_item_bg_pressed"

    const-string/jumbo v2, "TYPE=0x0|NAME=menu_item_bg_pressed.png|X_TILE_MODE=0x1|Y_TILE_MODE=0x0|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string/jumbo v1, "little_red_dot"

    const-string/jumbo v2, "TYPE=0x0|NAME=little_red_dot.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string/jumbo v1, "menu_item_divider"

    const-string/jumbo v2, "TYPE=0x0|NAME=menu_item_divider.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string/jumbo v1, "ic_menu_item_sharp"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_menu_item_sharp.png|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string/jumbo v1, "dialogmode_question_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=dialogmode_question_bg.png|X_DIVS=7,12|Y_DIVS=10,25|PADDING=0,0,0,0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string/jumbo v1, "dialogmode_button_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=dialogmode_button_normal.png|X_DIVS=10,30|Y_DIVS=10,30"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string/jumbo v1, "dialogmode_button_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=dialogmode_button_pressed.png|X_DIVS=10,30|Y_DIVS=10,30"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string/jumbo v1, "dialogmode_button_disabled"

    const-string/jumbo v2, "TYPE=0x1|NAME=dialogmode_button_disabled.png|X_DIVS=10,30|Y_DIVS=10,30"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string/jumbo v1, "ic_music_sendsongs"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_music_sendsongs.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string/jumbo v1, "ic_music_download"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_music_download.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string/jumbo v1, "ic_music_bell"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_music_bell.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string/jumbo v1, "ic_music_coloringring"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_music_coloringring.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string/jumbo v1, "btn_music_songs_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_music_songs_nor.png|X_DIVS=13,18|Y_DIVS=10,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string/jumbo v1, "btn_music_songs_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_music_songs_press.png|X_DIVS=13,18|Y_DIVS=10,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string/jumbo v1, "ic_music_fee_confirm_loading_progress"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_music_fee_confirm_loading_progress.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string/jumbo v1, "result_edit_text_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=result_edit_text_bg.png|X_DIVS=14,30|Y_DIVS=13,30|PADDING=3,3,3,3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string/jumbo v1, "btn_upload_normal"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=hotword_btn_upload_normal.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string/jumbo v1, "btn_upload_pressed"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=hotword_btn_upload_pressed.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string/jumbo v1, "hotword_edit_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=hotword_edit_normal.png|X_DIVS=12,13|Y_DIVS=12,13|PADDING=10,10,10,10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string/jumbo v1, "hotword_edit_select"

    const-string/jumbo v2, "TYPE=0x1|NAME=hotword_edit_select.png|X_DIVS=22,24|Y_DIVS=22,24|PADDING=10,10,10,10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string/jumbo v1, "novice_popup_bg2"

    const-string/jumbo v2, "TYPE=0x1|NAME=novice_popup_bg2.png|X_DIVS=17,23|Y_DIVS=17,23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string/jumbo v1, "weather_cloudy_small"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=weather_cloudy_small.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string/jumbo v1, "ic_novice_nice"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=ic_novice_nice.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string/jumbo v1, "call_broadcast_dialog_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=bg_callerbroadcast.png|X_DIVS=20,24|Y_DIVS=19,21"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string/jumbo v1, "call_broadcast_dialog_logo"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=logo_callerbroadcast.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string/jumbo v1, "call_broadcast_dialog_divider"

    const-string/jumbo v2, "TYPE=0x1|NAME=call_broadcast_divider_dial.png|X_DIVS=1,4|Y_DIVS=28,32"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string/jumbo v1, "call_broadcast_dialog_icon_on"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=btn_broadcast_on_dial.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string/jumbo v1, "call_broadcast_dialog_icon_off"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=btn_broadcast_off_dial.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string/jumbo v1, "call_broadcast_dialog_btn_bg_on"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_broadcast_on_bg_dial.png|X_DIVS=21,23|Y_DIVS=21,23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string/jumbo v1, "call_broadcast_dialog_btn_bg_off"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_broadcast_off_bg_dial.png|X_DIVS=21,23|Y_DIVS=21,23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string/jumbo v1, "call_broadcast_dialog_btn_bg_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_broadcast_press_dial.png|X_DIVS=21,23|Y_DIVS=21,23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string/jumbo v1, "ic_shunfeng"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=ic_shunfeng_dial.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string/jumbo v1, "ic_mark_dial_nor"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=ic_mark_dial_nor.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string/jumbo v1, "ic_mark_dial_sel"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=ic_mark_dial_sel.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string/jumbo v1, "sms_edit_add_extra_normal"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=ic_sms_add.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string/jumbo v1, "cancel_btn_normal"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=cancel_btn_normal.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string/jumbo v1, "sms_edit_title_bg"

    const-string/jumbo v2, "TYPE=0x1|NEED_SCALE=true|NAME=sms_title_bg.png|X_DIVS=1,2|Y_DIVS=60,61"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string/jumbo v1, "contact_add_checkbox_normal_extra"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=contact_checkbox_nor.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string/jumbo v1, "contact_add_checkbox_selected_extra"

    const-string/jumbo v2, "TYPE=0x0|NEED_SCALE=true|NAME=contact_checkbox_sel.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string/jumbo v1, "contact_add_list_item_header_bg_extra"

    const-string/jumbo v2, "TYPE=0x1|NEED_SCALE=true|NAME=sms_list_title_bg.png|X_DIVS=10,11|Y_DIVS=10,11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string/jumbo v1, "contact_add_list_item_divider"

    const-string/jumbo v2, "TYPE=0x0|NAME=contact_add_list_item_divider.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string/jumbo v1, "contact_item_bubble_bg_normal_extra"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_contact_nor.png|X_DIVS=8,21|Y_DIVS=8,21|PADDING=7,1,7,1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string/jumbo v1, "contact_item_bubble_bg_pressed_extra"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_contact_press.png|X_DIVS=14,15|Y_DIVS=14,15|PADDING=7,1,7,1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string/jumbo v1, "contact_item_compound_normal_extra"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_contact_delete_nor.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string/jumbo v1, "contact_search_indicator_extra"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_contact_search.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string/jumbo v1, "sms_edit_button_normal_extra"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_single.png|X_DIVS=13,24|Y_DIVS=10,22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string/jumbo v1, "sms_edit_button_press_extra"

    const-string/jumbo v2, "TYPE=0x1|NAME=mainpage_list_single_press.png|X_DIVS=15,20|Y_DIVS=15,20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string/jumbo v1, "sms_contact_number_choose_list_item_bg_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=subpage_list_press.png|X_DIVS=9,10|Y_DIVS=9,10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string/jumbo v1, "sms_minimic_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_sms_minimic_nor.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string/jumbo v1, "sms_minimic_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_sms_minimic_press.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string/jumbo v1, "sms_content_dialog_top"

    const-string/jumbo v2, "TYPE=0x1|NAME=novice_popup_top_dial.png|X_DIVS=13,24|Y_DIVS=11,12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string/jumbo v1, "btn_sms_content_dialog_l_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=novice_popup_l_dial.png|X_DIVS=10,11|Y_DIVS=3,4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string/jumbo v1, "btn_sms_content_dialog_l_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=novice_popup_l_dial_press.png|X_DIVS=10,11|Y_DIVS=3,4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string/jumbo v1, "btn_sms_content_dialog_r_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=novice_popup_r_dial.png|X_DIVS=3,4|Y_DIVS=3,4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string/jumbo v1, "btn_sms_content_dialog_r_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=novice_popup_r_dial_press.png|X_DIVS=3,4|Y_DIVS=3,4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string/jumbo v1, "android_market_icon"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_downloadmanager_default.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string/jumbo v1, "ic_no_download"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_no_download.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string/jumbo v1, "download_checkbox_unselected_enabled"

    const-string/jumbo v2, "TYPE=0x0|NAME=download_checkbox_unselected_enabled.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string/jumbo v1, "download_checkbox_selected_enabled"

    const-string/jumbo v2, "TYPE=0x0|NAME=download_checkbox_selected_enabled.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string/jumbo v1, "ic_download"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_download.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string/jumbo v1, "menu_offline"

    const-string/jumbo v2, "TYPE=0x0|NAME=menu_offline.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string/jumbo v1, "app_icon"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_downloadmanager_default.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string/jumbo v1, "ic_downloadmanager_music"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_downloadmanager_music.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string/jumbo v1, "download_tab_select"

    const-string/jumbo v2, "TYPE=0x1|NAME=download_tab_select.png|X_DIVS=1,2|Y_DIVS=1,3|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string/jumbo v1, "downloadmanager_tab_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=downloadmanager_tab_nor.png|X_DIVS=1,2|Y_DIVS=1,3|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string/jumbo v1, "downloadmanager_tab_sel"

    const-string/jumbo v2, "TYPE=0x1|NAME=downloadmanager_tab_sel.png|X_DIVS=1,2|Y_DIVS=1,3|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string/jumbo v1, "btn_downloadmanager_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_downloadmanager_nor.png|X_DIVS=10,13|Y_DIVS=10,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string/jumbo v1, "btn_downloadmanager_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_downloadmanager_press.png|X_DIVS=10,13|Y_DIVS=10,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string/jumbo v1, "authentication_close_btn_bg_normal"

    const-string/jumbo v2, "TYPE=0x0|NAME=authentication_close_btn_bg_normal.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string/jumbo v1, "authentication_close_btn_bg_pressed"

    const-string/jumbo v2, "TYPE=0x0|NAME=authentication_close_btn_bg_pressed.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string/jumbo v1, "authentication_confirm_btn_bg_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=authentication_confirm_btn_bg_normal.png|X_DIVS=15,31|Y_DIVS=15,31|PADDING=0,15,0,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string/jumbo v1, "authentication_confirm_btn_bg_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=authentication_confirm_btn_bg_pressed.png|X_DIVS=15,31|Y_DIVS=15,31|PADDING=0,15,0,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string/jumbo v1, "authentication_tips_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=authentication_tips_bg.png|X_DIVS=5,7|Y_DIVS=12,14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string/jumbo v1, "authentication_toast_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=authentication_toast_bg.png|X_DIVS=5,7|Y_DIVS=5,7|PADDING=5,20,5,20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string/jumbo v1, "authentication_dialog_title_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=help_title_bg.png|X_DIVS=13,16|Y_DIVS=13,16"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string/jumbo v1, "authentication_dialog_content_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=help_content_bg.png|X_DIVS=5,7|Y_DIVS=5,7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string/jumbo v1, "authentication_dialog_button_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=help_content_bg.png|X_DIVS=5,7|Y_DIVS=5,7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string/jumbo v1, "ic_auth_sence"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_auth_sence.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string/jumbo v1, "ic_auth_fail_sence"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_auth_fail_sence.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string/jumbo v1, "ic_network"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_network.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string/jumbo v1, "ic_right"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_right.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string/jumbo v1, "auth_activate_btn_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_activate_nor.png|X_DIVS=15,31|Y_DIVS=15,31"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string/jumbo v1, "auth_activate_btn_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_activate_press.png|X_DIVS=15,31|Y_DIVS=15,31"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string/jumbo v1, "auth_btn_disable"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_calloff_press.png|X_DIVS=15,31|Y_DIVS=15,31"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string/jumbo v1, "lockscreen_icon"

    const-string/jumbo v2, "TYPE=0x0|NAME=lockscreen_icon.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string/jumbo v1, "subpage_list_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=subpage_list_nor.png|X_DIVS=6,32|Y_DIVS=6,32"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string/jumbo v1, "subpage_list_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=subpage_list_press.png|X_DIVS=6,32|Y_DIVS=6,32"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string/jumbo v1, "new_comer_guide_title_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=new_comer_guide_title_bg.png|X_DIVS=10,20|Y_DIVS=15,20|PADDING=10,15,10,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string/jumbo v1, "mic_initial_1"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_1.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string/jumbo v1, "mic_initial_2"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_2.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string/jumbo v1, "mic_initial_3"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_3.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string/jumbo v1, "mic_initial_4"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_4.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string/jumbo v1, "mic_initial_5"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_5.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string/jumbo v1, "mic_wave_1"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_1.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string/jumbo v1, "mic_wave_2"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_2.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string/jumbo v1, "mic_wave_3"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_3.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string/jumbo v1, "mic_wave_4"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_4.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string/jumbo v1, "mic_wave_5"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_5.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string/jumbo v1, "mic_wave_6"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_6.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string/jumbo v1, "mic_wave_7"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_7.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string/jumbo v1, "mic_loading_null"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_null.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string/jumbo v1, "mic_loading_1"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_1.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string/jumbo v1, "mic_loading_2"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_2.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string/jumbo v1, "mic_loading_3"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_3.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string/jumbo v1, "mic_loading_4"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_4.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string/jumbo v1, "mic_loading_5"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_5.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string/jumbo v1, "mic_loading_6"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_6.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string/jumbo v1, "mic_loading_7"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_7.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string/jumbo v1, "mic_loading_8"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_8.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string/jumbo v1, "mic_loading_9"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_9.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string/jumbo v1, "mic_loading_10"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_10.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string/jumbo v1, "mic_loading_11"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_11.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string/jumbo v1, "mic_loading_12"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_12.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string/jumbo v1, "mic_loading_13"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_13.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string/jumbo v1, "mic_loading_14"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_14.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string/jumbo v1, "mic_loading_15"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_15.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string/jumbo v1, "mic_loading_16"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_16.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string/jumbo v1, "mic_loading_17"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_17.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string/jumbo v1, "mic_loading_18"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_18.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string/jumbo v1, "mic_loading_19"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_19.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string/jumbo v1, "mic_loading_20"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_20.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string/jumbo v1, "mic_loading_21"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_21.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string/jumbo v1, "mic_loading_22"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_22.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string/jumbo v1, "mic_loading_23"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_23.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string/jumbo v1, "mic_pop_delete"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_pop_delete.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string/jumbo v1, "mic_home"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_home.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string/jumbo v1, "mic_home_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_home_press.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string/jumbo v1, "home_used_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=home_used_nor.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string/jumbo v1, "home_used_sel"

    const-string/jumbo v2, "TYPE=0x0|NAME=home_used_sel.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string/jumbo v1, "home_find_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=home_find_nor.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string/jumbo v1, "home_find_sel"

    const-string/jumbo v2, "TYPE=0x0|NAME=home_find_sel.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string/jumbo v1, "mic_pop_recognizing_progress"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_pop_recognizing_progress.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string/jumbo v1, "sim_card"

    const-string/jumbo v2, "TYPE=0x0|NAME=sim_card.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string/jumbo v1, "sim_card_select_dialog_card1_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=sim_card_select_dialog_card1_normal.png|X_DIVS=18,19|Y_DIVS=20,21|PADDING=10,15,10,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string/jumbo v1, "sim_card_select_dialog_card1_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=sim_card_select_dialog_card1_pressed.png|X_DIVS=18,19|Y_DIVS=20,21|PADDING=10,15,10,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string/jumbo v1, "sim_card_select_dialog_card2_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=sim_card_select_dialog_card2_normal.png|X_DIVS=2,3|Y_DIVS=20,21|PADDING=10,15,10,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string/jumbo v1, "sim_card_select_dialog_card2_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=sim_card_select_dialog_card2_pressed.png|X_DIVS=2,3|Y_DIVS=20,21|PADDING=10,15,10,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string/jumbo v1, "sim_card_select_dialog_cancel_btn_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_reminder_delete_nor.png|X_DIVS=20,21|Y_DIVS=20,21|PADDING=10,15,10,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string/jumbo v1, "sim_card_select_dialog_cancel_btn_pressed"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_reminder_delete_press.png|X_DIVS=20,21|Y_DIVS=20,21|PADDING=10,15,10,15|PADDING=10,15,10,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string/jumbo v1, "remind_list_title"

    const-string/jumbo v2, "TYPE=0x1|NAME=remind_list_title.png|X_DIVS=13,19|Y_DIVS=15,24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string/jumbo v1, "ic_browser_arrow_r"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_browser_arrow_r.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string/jumbo v1, "btn_novel_setting_popup_window_close"

    const-string/jumbo v2, "TYPE=0x0|NAME=toast_close.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string/jumbo v1, "btn_novel_setting_popup_window_jump"

    const-string/jumbo v2, "TYPE=0x1|NAME=toast_btn.png|X_DIVS=7,13|Y_DIVS=7,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string/jumbo v1, "hold_mic_prompt_cancel_open"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_delete_open.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string/jumbo v1, "hold_mic_prompt_cancel_close"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_delete_close.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string/jumbo v1, "hold_mic_prompt_timeout"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mic_input_outtime.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string/jumbo v1, "btn_reminder_cancel_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_reminder_cancel_nor.png|X_DIVS=13,24|Y_DIVS=3,11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string/jumbo v1, "btn_reminder_cancel_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_reminder_cancel_press.png|X_DIVS=13,24|Y_DIVS=35,39"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string/jumbo v1, "mic_initial_w_1"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_w_1.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string/jumbo v1, "mic_initial_w_2"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_w_2.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string/jumbo v1, "mic_initial_w_3"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_w_3.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string/jumbo v1, "mic_initial_w_4"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_w_4.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string/jumbo v1, "mic_initial_w_5"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_w_5.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string/jumbo v1, "mic_wave_w_1"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_w_1.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string/jumbo v1, "mic_wave_w_2"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_w_2.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string/jumbo v1, "mic_wave_w_3"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_w_3.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string/jumbo v1, "mic_wave_w_4"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_w_4.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string/jumbo v1, "mic_wave_w_5"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_w_5.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string/jumbo v1, "mic_wave_w_6"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_w_6.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string/jumbo v1, "mic_wave_w_7"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_w_7.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string/jumbo v1, "mic_initial_mms_1"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_w_1.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string/jumbo v1, "mic_initial_mms_2"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_w_2.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string/jumbo v1, "mic_initial_mms_3"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_w_3.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string/jumbo v1, "mic_initial_mms_4"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_w_4.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string/jumbo v1, "mic_initial_mms_5"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_w_5.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string/jumbo v1, "mic_loading_null"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_null.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string/jumbo v1, "mic_loading_mms_1"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_1.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string/jumbo v1, "mic_loading_mms_2"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_2.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string/jumbo v1, "mic_loading_mms_3"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_3.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string/jumbo v1, "mic_loading_mms_4"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_4.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string/jumbo v1, "mic_loading_mms_5"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_5.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string/jumbo v1, "mic_loading_mms_6"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_6.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string/jumbo v1, "mic_loading_mms_7"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_7.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string/jumbo v1, "mic_loading_mms_8"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_8.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string/jumbo v1, "mic_loading_mms_9"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_9.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    const-string/jumbo v1, "mic_loading_mms_10"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_10.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string/jumbo v1, "mic_loading_mms_11"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_11.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string/jumbo v1, "mic_loading_mms_12"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_12.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string/jumbo v1, "mic_loading_mms_13"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_13.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string/jumbo v1, "mic_loading_mms_14"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_14.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string/jumbo v1, "mic_loading_mms_15"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_15.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string/jumbo v1, "mic_loading_mms_16"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_16.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string/jumbo v1, "mic_loading_mms_17"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_17.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string/jumbo v1, "mic_loading_mms_18"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_18.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    const-string/jumbo v1, "mic_loading_mms_19"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_19.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const-string/jumbo v1, "mic_loading_mms_20"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_20.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    const-string/jumbo v1, "mic_loading_mms_21"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_21.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    const-string/jumbo v1, "mic_loading_mms_22"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_22.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const-string/jumbo v1, "mic_loading_mms_23"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_w_23.png|NEED_SCALE=true|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string/jumbo v1, "weather_cloudy_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_cloudy_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string/jumbo v1, "weather_fog_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_fog_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string/jumbo v1, "weather_great_rain_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_great_rain_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string/jumbo v1, "weather_great_snow_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_great_snow_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string/jumbo v1, "weather_heavy_rain_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_heavy_rain_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string/jumbo v1, "weather_heavy_snow_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_heavy_snow_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string/jumbo v1, "weather_ice_rain_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_ice_rain_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string/jumbo v1, "weather_light_rain_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_light_rain_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string/jumbo v1, "weather_light_snow_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_light_snow_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string/jumbo v1, "weather_moderate_rain_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_moderate_rain_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string/jumbo v1, "weather_moderate_snow_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_moderate_snow_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string/jumbo v1, "weather_thunder_rain_with_hail_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_thunder_rain_with_hail_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string/jumbo v1, "weather_overcast_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_overcast_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string/jumbo v1, "weather_rain_mix_snow_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_rain_mix_snow_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string/jumbo v1, "weather_sand_storm_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_sand_storm_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string/jumbo v1, "weather_sun_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_sun_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string/jumbo v1, "weather_thunder_rain_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_thunder_rain_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string/jumbo v1, "novice_popup_bg2"

    const-string/jumbo v2, "TYPE=0x1|NAME=novice_popup_bg2.png|X_DIVS=15,20|Y_DIVS=15,20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string/jumbo v1, "adaptation_confirm_btn_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_activate_nor.png|X_DIVS=15,31|Y_DIVS=15,31|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string/jumbo v1, "adaptation_confirm_btn_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_activate_press.png|X_DIVS=15,31|Y_DIVS=15,31|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string/jumbo v1, "adaptation_cancel_btn_normal"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_calloff_nor.png|X_DIVS=15,31|Y_DIVS=15,31|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string/jumbo v1, "adaptation_cancel_btn_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_calloff_press.png|X_DIVS=15,31|Y_DIVS=15,31|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string/jumbo v1, "btn_install_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_install_nor.png|X_DIVS=15,31|Y_DIVS=15,31"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string/jumbo v1, "btn_install_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_install_press.png|X_DIVS=15,31|Y_DIVS=15,31"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string/jumbo v1, "ic_checkbox_carmode_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_checkbox_carmode_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string/jumbo v1, "ic_checkbox_carmode_sel"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_checkbox_carmode_sel.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    const-string/jumbo v1, "ic_checkbox_carmode_nor_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_checkbox_carmode_nor_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const-string/jumbo v1, "ic_checkbox_carmode_sel_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_checkbox_carmode_sel_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string/jumbo v1, "btn_list_linxi_update_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_list_linxi_update_press.png|X_DIVS=13,15|Y_DIVS=13,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const-string/jumbo v1, "btn_list_linxi_update_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_list_linxi_update_nor.png|X_DIVS=13,15|Y_DIVS=13,15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const-string/jumbo v1, "ic_plugin_default"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_plugin_default.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string/jumbo v1, "btn_menu_install_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_menu_install_nor.png|X_DIVS=13,15|Y_DIVS=13,15|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string/jumbo v1, "btn_menu_install_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_menu_install_press.png|X_DIVS=13,15|Y_DIVS=13,15|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    const-string/jumbo v1, "btn_menu_uninstall_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_menu_uninstall_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string/jumbo v1, "btn_menu_uninstall_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_menu_uninstall_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string/jumbo v1, "btn_menu_update_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_menu_update_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    const-string/jumbo v1, "btn_menu_update_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_menu_update_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string/jumbo v1, "menu_new_plugin"

    const-string/jumbo v2, "TYPE=0x0|NAME=menu_new_plugin.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string/jumbo v1, "plugin_icon_default"

    const-string/jumbo v2, "TYPE=0x0|NAME=plugin_icon_default.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string/jumbo v1, "ic_subpage_list_arrow"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_subpage_list_arrow.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string/jumbo v1, "browser_navi_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=browser_navi_bg.png|X_DIVS=6,32|Y_DIVS=6,32|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string/jumbo v1, "ic_timeline"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_timeline.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string/jumbo v1, "ic_qqzone"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_qqzone.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string/jumbo v1, "ic_weixin"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_weixin.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string/jumbo v1, "ic_weibo"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_weibo.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string/jumbo v1, "ic_timeline_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_timeline_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string/jumbo v1, "ic_qqzone_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_qqzone_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string/jumbo v1, "ic_weixin_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_weixin_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string/jumbo v1, "ic_weibo_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_weibo_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string/jumbo v1, "ic_timeline_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_timeline_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string/jumbo v1, "ic_qqzone_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_qqzone_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string/jumbo v1, "ic_weixin_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_weixin_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string/jumbo v1, "ic_weibo_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_weibo_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    const-string/jumbo v1, "contact_share_logo_text"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_share_contact.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-string/jumbo v1, "contact_reduce_nor_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_contact_reduce_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string/jumbo v1, "contact_reduce_press_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_contact_reduce_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string/jumbo v1, "ic_game"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_game.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string/jumbo v1, "ic_bank_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_bank_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string/jumbo v1, "ic_diaproduct_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_diaproduct_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string/jumbo v1, "ic_express_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_express_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string/jumbo v1, "ic_hotel_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_hotel_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const-string/jumbo v1, "ic_servise_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_servise_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string/jumbo v1, "ic_shopping_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_shopping_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string/jumbo v1, "ic_takeout_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_takeout_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const-string/jumbo v1, "ic_ticket_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_ticket_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string/jumbo v1, "ic_more"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_more.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string/jumbo v1, "ic_more_bubbles"

    const-string/jumbo v2, "TYPE=0x1|NAME=ic_more_bubbles.png|X_DIVS=20,30|Y_DIVS=20,30|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string/jumbo v1, "ic_adddesktop"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_adddesktop.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string/jumbo v1, "ic_entersetting"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_setting_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string/jumbo v1, "ic_subpage_translate"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_subpage_translate.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string/jumbo v1, "btn_push_pop_s_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_push_pop_s_nor.png|X_DIVS=10,12|Y_DIVS=10,12|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    const-string/jumbo v1, "btn_push_pop_s_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_push_pop_s_press.png|X_DIVS=10,12|Y_DIVS=10,12|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-string/jumbo v1, "btn_guide_fail_pic_close"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_guide_fail_pic_close.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string/jumbo v1, "ic_list_dial_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_list_dial_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string/jumbo v1, "ic_list_message_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_list_message_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    const-string/jumbo v1, "ic_list_reminder_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_list_reminder_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    const-string/jumbo v1, "ic_list_openapp_small"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_list_openapp_small.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    const-string/jumbo v1, "bg_remind_floatwindow"

    const-string/jumbo v2, "TYPE=0x1|NAME=bg_remind_floatwindow.png|X_DIVS=18,34|Y_DIVS=1,207|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string/jumbo v1, "ic_remind_floatwindow_broadcast_light"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_floatwindow_broadcast_light.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    const-string/jumbo v1, "ic_remind_floatwindow_broadcast_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_floatwindow_broadcast_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string/jumbo v1, "ic_remind_floatwindow_broadcast_wave"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_floatwindow_broadcast_wave.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    const-string/jumbo v1, "ic_remind_floatwindow_close"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_floatwindow_close.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    const-string/jumbo v1, "ic_remind_floatwindow_close_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_floatwindow_close_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    const-string/jumbo v1, "ic_remind_floatwindow_set"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_floatwindow_set.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    const-string/jumbo v1, "ic_remind_floatwindow_set_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_floatwindow_set_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    const-string/jumbo v1, "ic_remind_logo"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_logo.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    const-string/jumbo v1, "ic_remind_umbrella"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_umbrella.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-string/jumbo v1, "bg_remind_floatwindow_line_horizontal"

    const-string/jumbo v2, "TYPE=0x0|NAME=bg_remind_floatwindow_line_transverse.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    const-string/jumbo v1, "bg_remind_floatwindow_line_vertical"

    const-string/jumbo v2, "TYPE=0x0|NAME=bg_remind_floatwindow_line_vertical.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const-string/jumbo v1, "bg_remind_floatwindow_wave"

    const-string/jumbo v2, "TYPE=0x0|NAME=bg_remind_floatwindow_wave.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string/jumbo v1, "bg_remind_floatwindow_mid_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=bg_remind_floatwindow_mid_press.png|X_DIVS=20,27|Y_DIVS=6,11|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string/jumbo v1, "bg_remind_floatwindow_bottom_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=bg_remind_floatwindow_bottom_press.png|X_DIVS=20,27|Y_DIVS=9,14|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    const-string/jumbo v1, "ic_smart_float_umbrella"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_float_umbrella.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    const-string/jumbo v1, "ic_smart_card_umbrella"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_card_umbrella.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    const-string/jumbo v1, "ic_smart_float_air_pollution"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_float_air_pollution.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    const-string/jumbo v1, "ic_smart_card_air_poluttion"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_card_air_poluttion.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const-string/jumbo v1, "ic_smart_float_bad_weather"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_float_bad_weather.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const-string/jumbo v1, "ic_smart_card_bad_weather"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_card_bad_weather.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    const-string/jumbo v1, "ic_smart_float_cooling"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_float_cooling.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    const-string/jumbo v1, "ic_smart_float_hotevent"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_float_hotevent.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string/jumbo v1, "ic_smart_card_cooling"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_card_cooling.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string/jumbo v1, "ic_smart_card_hotevent"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_card_hotevent.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string/jumbo v1, "ic_smart_float_wifi"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_float_wifi.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string/jumbo v1, "ic_smart_card_wifi"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_card_wifi.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string/jumbo v1, "ic_smart_float_flow"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_float_flow.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string/jumbo v1, "ic_smart_card_flow"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_card_flow.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string/jumbo v1, "ic_smart_card_logo"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_card_logo.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string/jumbo v1, "ic_smart_card_edit"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_card_edit.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string/jumbo v1, "ic_smart_card_close"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_card_close.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string/jumbo v1, "ic_cooling_reminder_demo"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_cooling_reminder_demo.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string/jumbo v1, "hum_inner_rotation"

    const-string/jumbo v2, "TYPE=0x0|NAME=hum_inner_rotation.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string/jumbo v1, "hum_inner_rotation"

    const-string/jumbo v2, "TYPE=0x0|NAME=hum_inner_rotation.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string/jumbo v1, "hum_music_pre"

    const-string/jumbo v2, "TYPE=0x0|NAME=hum_music_pre.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string/jumbo v1, "hum_music"

    const-string/jumbo v2, "TYPE=0x0|NAME=hum_music.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string/jumbo v1, "hum_out_rotation"

    const-string/jumbo v2, "TYPE=0x0|NAME=hum_out_rotation.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-string/jumbo v1, "hum_waiting"

    const-string/jumbo v2, "TYPE=0x0|NAME=hum_waiting.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string/jumbo v1, "hum_ic_music_more_up_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_arrow_up_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    const-string/jumbo v1, "hum_ic_music_more_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_arrow_down_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    const-string/jumbo v1, "hum_ic_music_more_up_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_arrow_up_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string/jumbo v1, "hum_ic_music_more_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_arrow_down_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string/jumbo v1, "hum_item_song_hero"

    const-string/jumbo v2, "TYPE=0x0|NAME=hum_item_song_hero.jpg|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-string/jumbo v1, "hum_item_song_fly"

    const-string/jumbo v2, "TYPE=0x0|NAME=hum_item_song_fly.jpg|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string/jumbo v1, "hum_item_song_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=hum_item_song_bg.png|X_DIVS=2,7|Y_DIVS=0,17|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string/jumbo v1, "hum_item_song_start"

    const-string/jumbo v2, "TYPE=0x0|NAME=hum_item_song_start.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string/jumbo v1, "hum_item_song_stop"

    const-string/jumbo v2, "TYPE=0x0|NAME=hum_item_song_stop.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string/jumbo v1, "radar_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=radar_bg.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string/jumbo v1, "radar_equipment"

    const-string/jumbo v2, "TYPE=0x0|NAME=radar_equipment.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string/jumbo v1, "radar_pointer"

    const-string/jumbo v2, "TYPE=0x0|NAME=radar_pointer.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const-string/jumbo v1, "btn_radar_return_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_radar_return_nor.png|X_DIVS=7,14|Y_DIVS=7,14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string/jumbo v1, "btn_diy_broadcast_play_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_diy_broadcast_play_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string/jumbo v1, "btn_diy_broadcast_stop_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_diy_broadcast_stop_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string/jumbo v1, "diy_bordcast_checkbox_dial"

    const-string/jumbo v2, "TYPE=0x1|NAME=diy_bordcast_checkbox_dial.png|X_DIVS=10,15|Y_DIVS=47,52"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const-string/jumbo v1, "diy_broadcast_banner_text_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=diy_broadcast_banner_text_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string/jumbo v1, "diy_broadcast_banner_bg_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=diy_broadcast_banner_bg_dial.png|NEED_SCALE=false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string/jumbo v1, "ic_anchor_default_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_anchor_default_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string/jumbo v1, "ic_anchor_dongbei_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_anchor_dongbei_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string/jumbo v1, "ic_anchor_henan_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_anchor_henan_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string/jumbo v1, "ic_anchor_hunan_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_anchor_hunan_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string/jumbo v1, "ic_anchor_sichuan_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_anchor_sichuan_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string/jumbo v1, "ic_anchor_yueyu_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_anchor_yueyu_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string/jumbo v1, "diy_broadcast_list_bg_dial"

    const-string/jumbo v2, "TYPE=0x1|NAME=diy_broadcast_list_bg_dial.png|X_DIVS=10,12|Y_DIVS=10,12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string/jumbo v1, "ic_diy_broadcast_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_diy_broadcast_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string/jumbo v1, "diy_broadcast_divider_dial"

    const-string/jumbo v2, "TYPE=0x0|NAME=diy_broadcast_divider_dial.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string/jumbo v1, "dialog_btn_warn_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=dialog_btn_delete_nor.png|X_DIVS=7,13|Y_DIVS=7,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const-string/jumbo v1, "dialog_btn_warn_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=dialog_btn_delete_press.png|X_DIVS=7,13|Y_DIVS=7,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string/jumbo v1, "dialog_btn_confirm_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=dialog_btn_define_nor.png|X_DIVS=7,13|Y_DIVS=7,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string/jumbo v1, "dialog_btn_confirm_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=dialog_btn_define_press.png|X_DIVS=7,13|Y_DIVS=7,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string/jumbo v1, "dialog_btn_cancel_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=dialog_btn_cancel_nor.png|X_DIVS=7,13|Y_DIVS=7,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const-string/jumbo v1, "dialog_btn_cancel_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=dialog_btn_cancel_press.png|X_DIVS=7,13|Y_DIVS=7,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string/jumbo v1, "ic_permission_list_arrow_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_permission_list_arrow_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string/jumbo v1, "ic_permission_list_arrow_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_permission_list_arrow_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string/jumbo v1, "btn_dlg_l_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_dlg_l_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string/jumbo v1, "btn_dlg_l_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_dlg_l_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string/jumbo v1, "btn_dlg_r_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_dlg_r_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string/jumbo v1, "btn_dlg_r_press"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_dlg_r_press.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string/jumbo v1, "mic_initial_b_1"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_b_1.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string/jumbo v1, "mic_initial_b_2"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_b_2.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string/jumbo v1, "mic_initial_b_3"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_b_3.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    const-string/jumbo v1, "mic_initial_b_4"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_b_4.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string/jumbo v1, "mic_initial_b_5"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_initial_b_5.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string/jumbo v1, "mic_wave_b_1"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_b_1.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const-string/jumbo v1, "mic_wave_b_2"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_b_2.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    const-string/jumbo v1, "mic_wave_b_3"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_b_3.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    const-string/jumbo v1, "mic_wave_b_4"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_b_4.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    const-string/jumbo v1, "mic_wave_b_5"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_b_5.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    const-string/jumbo v1, "mic_wave_b_6"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_b_6.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string/jumbo v1, "mic_wave_b_7"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_wave_b_7.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    const-string/jumbo v1, "mic_loading_b_1"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_1.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    const-string/jumbo v1, "mic_loading_b_2"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_2.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    const-string/jumbo v1, "mic_loading_b_3"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_3.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const-string/jumbo v1, "mic_loading_b_4"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_4.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string/jumbo v1, "mic_loading_b_5"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_5.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string/jumbo v1, "mic_loading_b_6"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_6.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string/jumbo v1, "mic_loading_b_7"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_7.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string/jumbo v1, "mic_loading_b_8"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_8.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const-string/jumbo v1, "mic_loading_b_9"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_9.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const-string/jumbo v1, "mic_loading_b_10"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_10.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    const-string/jumbo v1, "mic_loading_b_11"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_11.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const-string/jumbo v1, "mic_loading_b_12"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_12.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    const-string/jumbo v1, "mic_loading_b_13"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_13.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    const-string/jumbo v1, "mic_loading_b_14"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_14.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    const-string/jumbo v1, "mic_loading_b_15"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_15.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const-string/jumbo v1, "mic_loading_b_16"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_16.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    const-string/jumbo v1, "mic_loading_b_17"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_17.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string/jumbo v1, "mic_loading_b_18"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_18.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    const-string/jumbo v1, "mic_loading_b_19"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_19.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    const-string/jumbo v1, "mic_loading_b_20"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_20.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    const-string/jumbo v1, "mic_loading_b_21"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_21.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    const-string/jumbo v1, "mic_loading_b_22"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_22.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    const-string/jumbo v1, "mic_loading_b_23"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_loading_b_23.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    const-string/jumbo v1, "subpage_translation_title_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=subpage_translation_title_bg.png|X_DIVS=7,13|Y_DIVS=7,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    const-string/jumbo v1, "subpage_translation_title_bg_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=subpage_translation_title_bg_press.png|X_DIVS=7,13|Y_DIVS=7,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string/jumbo v1, "ic_remind_alarmplayer_on"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_alarmplayer_on.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-string/jumbo v1, "ic_remind_alarmplayer_pause"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_alarmplayer_pause.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string/jumbo v1, "ic_remind_inputbox_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=ic_remind_inputbox_nor.png|X_DIVS=8,17|Y_DIVS=8,18|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string/jumbo v1, "ic_remind_playercard_selected"

    const-string/jumbo v2, "TYPE=0x1|NAME=ic_remind_playercard_selected.png|X_DIVS=13,58|Y_DIVS=45,82|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const-string/jumbo v1, "subpage_card_bg"

    const-string/jumbo v2, "TYPE=0x1|NAME=subpage_card_bg.png|X_DIVS=8,22|Y_DIVS=8,22|NEED_CACHE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    const-string/jumbo v1, "ic_mainpage_loading_1"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_loading_1.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const-string/jumbo v1, "ic_mainpage_refresh_btn_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=subpage_translation_title_bg.png|X_DIVS=7,13|Y_DIVS=7,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const-string/jumbo v1, "ic_remind_alarmplayer_norpic"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_remind_alarmplayer_norpic.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const-string/jumbo v1, "ic_mainpage_refresh_btn_press"

    const-string/jumbo v2, "TYPE=0x1|NAME=subpage_translation_title_bg_press.png|X_DIVS=7,13|Y_DIVS=7,13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const-string/jumbo v1, "ic_smart_card_train"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_card_train.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const-string/jumbo v1, "ic_smart_float_train"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_float_train.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    const-string/jumbo v1, "ic_smart_card_taxi"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_card_taxi.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    const-string/jumbo v1, "ic_smart_float_taxi"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_smart_float_taxi.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const-string/jumbo v1, "ic_reminder_close_sml"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_reminder_close_sml.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const-string/jumbo v1, "ic_reminder_set_sml"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_reminder_set_sml.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string/jumbo v1, "ic_train_reminder_demo"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_train_reminder_demo.jpg|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string/jumbo v1, "ic_taxi_reminder_demo"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_taxi_reminder_demo.jpg|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string/jumbo v1, "ic_flow_reminder_demo"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_flow_reminder_demo.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const-string/jumbo v1, "ic_daily_flow_reminder_demo"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_daily_flow_reminder_demo.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const-string/jumbo v1, "card_life_cartoon"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_cartoon.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string/jumbo v1, "card_life_data"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_data.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string/jumbo v1, "card_life_default"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_default.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const-string/jumbo v1, "card_life_express"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_express.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string/jumbo v1, "card_life_more"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_more.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string/jumbo v1, "card_life_plug"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_plug.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const-string/jumbo v1, "card_life_smart"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_smart.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-string/jumbo v1, "card_life_speak"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_speak.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const-string/jumbo v1, "card_life_music"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_music.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string/jumbo v1, "card_life_novel"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_novel.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const-string/jumbo v1, "card_life_rule"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_rule.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    const-string/jumbo v1, "card_life_phone"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_phone.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const-string/jumbo v1, "card_life_test"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_test.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const-string/jumbo v1, "card_life_train"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_train.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    const-string/jumbo v1, "card_life_taxi"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_taxi.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const-string/jumbo v1, "card_life_fm"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_fm.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const-string/jumbo v1, "card_life_map"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_map.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string/jumbo v1, "card_life_star"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_star.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string/jumbo v1, "card_life_flight"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_life_flight.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const-string/jumbo v1, "ic_mainpage_weather_city"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_weather_city.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    const-string/jumbo v1, "ic_mainpage_weather_schedule"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_weather_schedule.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string/jumbo v1, "ic_close_schedule_setting_sel"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_close_schedule_setting_sel.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    const-string/jumbo v1, "ic_close_schedule_setting_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_close_schedule_setting_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    const-string/jumbo v1, "btn_mainpage_weather_pm25_bg"

    const-string/jumbo v2, "TYPE=0x0|NAME=btn_mainpage_weather_pm25_bg.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string/jumbo v1, "btn_mainpage_weather_scheduleopen_sel"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_mainpage_weather_scheduleopen_sel.png|X_DIVS=15,100|Y_DIVS=10,55"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string/jumbo v1, "btn_mainpage_weather_scheduleopen_nor"

    const-string/jumbo v2, "TYPE=0x1|NAME=btn_mainpage_weather_scheduleopen_nor.png|X_DIVS=15,100|Y_DIVS=10,55"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const-string/jumbo v1, "ic_mainpage_error"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_error.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    const-string/jumbo v1, "ic_mainpage_loading"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_loading.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const-string/jumbo v1, "ic_mainpage_arrow_right"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_arrow_right.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string/jumbo v1, "card_cmcc_refresh_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_cmcc_refresh_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const-string/jumbo v1, "card_cmcc_recharge"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_cmcc_recharge.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string/jumbo v1, "card_cmcc_flow"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_cmcc_flow.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string/jumbo v1, "card_cmcc_monitor"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_cmcc_monitor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string/jumbo v1, "card_cmcc_check_ic"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_cmcc_check_ic.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const-string/jumbo v1, "card_cmcc_shouji_ic"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_cmcc_shouji_ic.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string/jumbo v1, "card_cmcc_yanzheng_ic"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_cmcc_yanzheng_ic.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    const-string/jumbo v1, "ic_mainpage_sign_jinbi"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_mainpage_sign_jinbi.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string/jumbo v1, "ic_signin_enable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ico_qiandao_enable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const-string/jumbo v1, "ic_signin_disable"

    const-string/jumbo v2, "TYPE=0x0|NAME=ico_qiandao_disable.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const-string/jumbo v1, "ic_coin_toast"

    const-string/jumbo v2, "TYPE=0x0|NAME=ico_jinbi_toast.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string/jumbo v1, "card_listen_ic"

    const-string/jumbo v2, "TYPE=0x0|NAME=card_listen_ic.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const-string/jumbo v1, "ic_traffic_close"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_traffic_close.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-string/jumbo v1, "ic_traffic_open"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_traffic_open.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const-string/jumbo v1, "ic_traffic_close_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_traffic_close_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const-string/jumbo v1, "ic_traffic_open_dim"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_traffic_open_dim.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string/jumbo v1, "ic_hotevent_reminder_demo"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_hotevent_reminder_demo.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const-string/jumbo v1, "ic_star_aution"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_star_aution.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string/jumbo v1, "ic_star_arrow_down"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_star_arrow_down.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string/jumbo v1, "ic_star_arrow_up"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_star_arrow_up.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-string/jumbo v1, "ic_star_default_icon"

    const-string/jumbo v2, "TYPE=0x0|NAME=ic_star_default_icon.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string/jumbo v1, "comm_top_back_sel"

    const-string/jumbo v2, "TYPE=0x0|NAME=comm_top_back_sel.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string/jumbo v1, "comm_top_back_nor"

    const-string/jumbo v2, "TYPE=0x0|NAME=comm_top_back_nor.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string/jumbo v1, "weather_cloudy_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_cloudy_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    const-string/jumbo v1, "weather_fog_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_fog_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    const-string/jumbo v1, "weather_great_rain_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_great_rain_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const-string/jumbo v1, "weather_great_snow_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_great_snow_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const-string/jumbo v1, "weather_heavy_rain_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_heavy_rain_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const-string/jumbo v1, "weather_heavy_snow_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_heavy_snow_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-string/jumbo v1, "weather_ice_rain_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_ice_rain_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    const-string/jumbo v1, "weather_light_rain_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_light_rain_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string/jumbo v1, "weather_light_snow_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_light_snow_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const-string/jumbo v1, "weather_moderate_rain_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_moderate_rain_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string/jumbo v1, "weather_moderate_snow_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_moderate_snow_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    const-string/jumbo v1, "weather_thunder_rain_with_hail_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_thunder_rain_with_hail_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string/jumbo v1, "weather_overcast_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_overcast_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string/jumbo v1, "weather_rain_mix_snow_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_rain_mix_snow_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    const-string/jumbo v1, "weather_sand_storm_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_sand_storm_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    const-string/jumbo v1, "weather_sun_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_sun_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const-string/jumbo v1, "weather_thunder_rain_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_thunder_rain_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    const-string/jumbo v1, "weather_na_small_new"

    const-string/jumbo v2, "TYPE=0x0|NAME=weather_na_small_new.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-string/jumbo v1, "mic_new_wave_01"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_new_wave_01.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const-string/jumbo v1, "mic_new_wave_02"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_new_wave_02.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const-string/jumbo v1, "mic_new_wave_03"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_new_wave_03.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-string/jumbo v1, "mic_new_wave_04"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_new_wave_04.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const-string/jumbo v1, "mic_new_wave_05"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_new_wave_05.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    const-string/jumbo v1, "mic_new_wave_06"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_new_wave_06.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const-string/jumbo v1, "mic_new_wave_07"

    const-string/jumbo v2, "TYPE=0x0|NAME=mic_new_wave_07.png|NEED_SCALE=true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    return-object v0
.end method

.method public images800()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1227
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method public statelist()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1486
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1487
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "list_item_background_states"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=image.list_item_background_pressed|PRESSED=image.list_item_background_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    const-string/jumbo v1, "title_panel_title_btn_bg"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=color.transparent|PRESSED=color.transparent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    const-string/jumbo v1, "normal_btn_states"

    const-string/jumbo v2, "NORMAL=image.dialogmode_button_normal|FOCUSED=image.dialogmode_button_pressed|PRESSED=image.dialogmode_button_pressed|DISABLED=image.dialogmode_button_disabled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    const-string/jumbo v1, "webview_find_more_states"

    const-string/jumbo v2, "NORMAL=image.mainpage_list_btm|FOCUSED=image.mainpage_list_btm|PRESSED=image.mainpage_list_btm_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    const-string/jumbo v1, "guide_over_start_states"

    const-string/jumbo v2, "NORMAL=image.guide_over_start_nor|FOCUSED=image.guide_over_start_sel|PRESSED=image.guide_over_start_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    const-string/jumbo v1, "home_title_left_states"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=image.btn_title_press_l|PRESSED=image.btn_title_press_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    const-string/jumbo v1, "home_title_right_states"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=image.btn_title_press_r|PRESSED=image.btn_title_press_r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    const-string/jumbo v1, "fluepage_title_btn_states"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=color.transparent|PRESSED=color.transparent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    const-string/jumbo v1, "home_title_close_btn_states"

    const-string/jumbo v2, "NORMAL=image.home_title_close_nor|FOCUSED=image.home_title_close_press|PRESSED=image.home_title_close_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    const-string/jumbo v1, "home_title_refresh_btn_states"

    const-string/jumbo v2, "NORMAL=image.home_title_refresh_nor|FOCUSED=image.home_title_refresh_press|PRESSED=image.home_title_refresh_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    const-string/jumbo v1, "mainpage_title_btn_states"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=image.mainpage_title_bg_press|PRESSED=image.mainpage_title_bg_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    const-string/jumbo v1, "mainpage_title_btn_states_new"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=color.title_color_press_new|PRESSED=color.title_color_press_new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    const-string/jumbo v1, "btn_mic_base_states"

    const-string/jumbo v2, "NORMAL=image.btn_mic_base_nor|FOCUSED=image.btn_mic_base_press|PRESSED=image.btn_mic_base_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    const-string/jumbo v1, "btn_mic_long_click_states"

    const-string/jumbo v2, "NORMAL=image.btn_mic_base_press|FOCUSED=image.btn_mic_base_nor|PRESSED=image.btn_mic_base_nor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    const-string/jumbo v1, "btn_mic_base_speak_states"

    const-string/jumbo v2, "NORMAL=image.btn_mic_base_nor|FOCUSED=image.btn_mic_base_press|PRESSED=image.btn_mic_base_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    const-string/jumbo v1, "btn_cancel_states"

    const-string/jumbo v2, "NORMAL=image.btn_cancel_nor|FOCUSED=image.btn_cancel_press|PRESSED=image.btn_cancel_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    const-string/jumbo v1, "mainpage_list_mid_help_states"

    const-string/jumbo v2, "NORMAL=image.mainpage_list_mid_help|FOCUSED=image.mainpage_list_mid_help_press|PRESSED=image.mainpage_list_mid_help_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    const-string/jumbo v1, "plugin_list_item_states"

    const-string/jumbo v2, "NORMAL=image.mainpage_list_mid_help|FOCUSED=image.plugin_list_item_press|PRESSED=image.plugin_list_item_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    const-string/jumbo v1, "main_speech_mic_states"

    const-string/jumbo v2, "NORMAL=image.main_speech_mic_normal|FOCUSED=image.main_speech_mic_press|PRESSED=image.main_speech_mic_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    const-string/jumbo v1, "main_speech_switch_keyboard_states"

    const-string/jumbo v2, "NORMAL=image.main_speech_switch_keyboard|FOCUSED=image.main_speech_switch_keyboard_press|PRESSED=image.main_speech_switch_keyboard_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    const-string/jumbo v1, "mic_states"

    const-string/jumbo v2, "NORMAL=image.mic_normal|FOCUSED=image.mic_press|PRESSED=image.mic_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    const-string/jumbo v1, "home_discover_states"

    const-string/jumbo v2, "NORMAL=image.home_find_nor|FOCUSED=image.home_find_sel|PRESSED=image.home_find_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    const-string/jumbo v1, "home_common_states"

    const-string/jumbo v2, "NORMAL=image.home_used_nor|FOCUSED=image.home_used_sel|PRESSED=image.home_used_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    const-string/jumbo v1, "mic_home_states"

    const-string/jumbo v2, "NORMAL=image.mic_home|FOCUSED=image.mic_home_press|PRESSED=image.mic_home_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    const-string/jumbo v1, "mic_search_input_states"

    const-string/jumbo v2, "NORMAL=image.mainpage_inputbox_nor|FOCUSED=image.mainpage_inputbox_blue|PRESSED=image.mainpage_inputbox_blue"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    const-string/jumbo v1, "mic_voice_states"

    const-string/jumbo v2, "NORMAL=image.mic_voice_nor_new|FOCUSED=image.mic_voice_click_new|PRESSED=image.mic_voice_click_new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    const-string/jumbo v1, "mic_voice_states_focus"

    const-string/jumbo v2, "NORMAL=image.mic_voice_sel_new|FOCUSED=image.mic_voice_click_new|PRESSED=image.mic_voice_click_new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    const-string/jumbo v1, "schedule_checkbox"

    const-string/jumbo v2, "ENABLED_AND_UNCHECKED=image.remind_manage_checkbox_unselected|ENABLED_AND_CHECKED=image.remind_manage_checkbox_selected|DISABLED_AND_UNCHECKED=image.remind_manage_checkbox_unselected|DISABLED_AND_CHECKED=image.remind_manage_checkbox_selected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    const-string/jumbo v1, "setting_item_background_states"

    const-string/jumbo v2, "NORMAL=color.setting_item_normal|FOCUSED=color.setting_item_pressed|PRESSED=color.setting_item_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    const-string/jumbo v1, "radio_button"

    const-string/jumbo v2, "ENABLED_AND_UNCHECKED=image.radio_button_unselected|ENABLED_AND_CHECKED=image.radio_button_selected|DISABLED_AND_UNCHECKED=image.radio_button_unselected|DISABLED_AND_CHECKED=image.radio_button_selected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    const-string/jumbo v1, "checkbox"

    const-string/jumbo v2, "ENABLED_AND_UNCHECKED=image.settings_checkbox_unselected_enabled|ENABLED_AND_CHECKED=image.settings_checkbox_selected_enabled|DISABLED_AND_UNCHECKED=image.settings_checkbox_unselected_disabled|DISABLED_AND_CHECKED=image.settings_checkbox_selected_disabled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    const-string/jumbo v1, "skin_list_item_background_states"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=color.transparent|PRESSED=color.transparent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    const-string/jumbo v1, "skin_btn_states"

    const-string/jumbo v2, "NORMAL=image.main_foot_btn_normal|FOCUSED=image.main_foot_btn_pressed|PRESSED=image.main_foot_btn_pressed|DISABLED=image.main_foot_btn_disabled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    const-string/jumbo v1, "setting_list_item_top_states"

    const-string/jumbo v2, "NORMAL=image.setting_bg_top_normal|FOCUSED=image.setting_bg_top_pressed|PRESSED=image.setting_bg_top_pressed|DISABLED=image.setting_bg_top_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    const-string/jumbo v1, "setting_list_item_middle_states"

    const-string/jumbo v2, "NORMAL=image.setting_bg_mid_normal|FOCUSED=image.setting_bg_mid_pressed|PRESSED=image.setting_bg_mid_pressed|DISABLED=image.setting_bg_mid_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    const-string/jumbo v1, "setting_list_item_bottom_states"

    const-string/jumbo v2, "NORMAL=image.setting_bg_bottom_normal|FOCUSED=image.setting_bg_bottom_pressed|PRESSED=image.setting_bg_bottom_pressed|DISABLED=image.setting_bg_bottom_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    const-string/jumbo v1, "setting_list_item_states"

    const-string/jumbo v2, "NORMAL=image.setting_item_normal|FOCUSED=image.setting_item_press|PRESSED=image.setting_item_press|DISABLED=image.setting_item_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    const-string/jumbo v1, "setting_checkbox_states"

    const-string/jumbo v2, "ENABLED_AND_UNCHECKED=image.switch_off|ENABLED_AND_CHECKED=image.switch_on|DISABLED_AND_UNCHECKED=image.switch_off_dim|DISABLED_AND_CHECKED=image.switch_on_dim"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    const-string/jumbo v1, "setting_checkbox_states_new"

    const-string/jumbo v2, "ENABLED_AND_UNCHECKED=image.but_off|ENABLED_AND_CHECKED=image.but_on|DISABLED_AND_UNCHECKED=image.but_off_dim|DISABLED_AND_CHECKED=image.but_on_dim"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    const-string/jumbo v1, "setting_circle_checkbox_states"

    const-string/jumbo v2, "ENABLED_AND_UNCHECKED=image.bg_setting_circle_unchecked|ENABLED_AND_CHECKED=image.bg_setting_circle_checked|DISABLED_AND_UNCHECKED=image.bg_setting_circle_unchecked|DISABLED_AND_CHECKED=image.bg_setting_circle_checked"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    const-string/jumbo v1, "setting_checkbox_states_traffic_setting"

    const-string/jumbo v2, "ENABLED_AND_UNCHECKED=image.ic_traffic_close|ENABLED_AND_CHECKED=image.ic_traffic_open|DISABLED_AND_UNCHECKED=image.ic_traffic_close_dim|DISABLED_AND_CHECKED=image.ic_traffic_open_dim"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const-string/jumbo v1, "setting_subpage_list_arrow_states"

    const-string/jumbo v2, "NORMAL=image.setting_ic_subpage_list_arrow|FOCUSED=image.setting_ic_subpage_list_arrow_dim|PRESSED=image.setting_ic_subpage_list_arrow_dim|DISABLED=image.setting_ic_subpage_list_arrow_dim"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    const-string/jumbo v1, "contact_reduce_button_states"

    const-string/jumbo v2, "NORMAL=image.btn_contact_reduce_nor_dial|FOCUSED=image.btn_contact_reduce_press_dial|PRESSED=image.btn_contact_reduce_press_dial"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    const-string/jumbo v1, "privacy_contact_button_states"

    const-string/jumbo v2, "NORMAL=image.btn_privacy_nor_dial|FOCUSED=image.btn_privacy_press_dial|PRESSED=image.btn_privacy_press_dial"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    const-string/jumbo v1, "privacy_contact_empty_list_states"

    const-string/jumbo v2, "NORMAL=image.setting_bg_mid_normal|FOCUSED=image.setting_bg_mid_normal|PRESSED=image.setting_bg_mid_normal|DISABLED=image.setting_bg_mid_normal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    const-string/jumbo v1, "schedule_manage_delete_btn_state"

    const-string/jumbo v2, "NORMAL=color.remind_manager_delete_btn_unfocus_color|FOCUSED=color.remind_manager_delete_btn_focus_color|PRESSED=color.remind_manager_delete_btn_focus_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    const-string/jumbo v1, "sms_dlg_btn_delete"

    const-string/jumbo v2, "NORMAL=image.sms_dlg_btn_delete_normal|FOCUSED=image.sms_dlg_btn_delete_pressed|PRESSED=image.sms_dlg_btn_delete_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    const-string/jumbo v1, "sms_dlg_btn_call_hz"

    const-string/jumbo v2, "NORMAL=image.sms_dlg_btn_call_normal_hz|FOCUSED=image.sms_dlg_btn_call_pressed_hz|PRESSED=image.sms_dlg_btn_call_pressed_hz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    const-string/jumbo v1, "sms_dlg_btn_delete_hz"

    const-string/jumbo v2, "NORMAL=image.sms_dlg_btn_delete_normal_hz|FOCUSED=image.sms_dlg_btn_delete_pressed_hz|PRESSED=image.sms_dlg_btn_delete_pressed_hz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    const-string/jumbo v1, "sms_dlg_btn_read_hz"

    const-string/jumbo v2, "NORMAL=image.btn_broadcast_nor|FOCUSED=image.btn_broadcast_press|PRESSED=image.btn_broadcast_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    const-string/jumbo v1, "sms_dlg_btn_no_read_hz"

    const-string/jumbo v2, "NORMAL=image.btn_broadcast_off_nor|FOCUSED=image.btn_broadcast_off_press|PRESSED=image.btn_broadcast_off_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    const-string/jumbo v1, "sms_dlg_btn_read_offline_hz"

    const-string/jumbo v2, "NORMAL=image.btn_broadcast_offline_nor|FOCUSED=image.btn_broadcast_offline_press|PRESSED=image.btn_broadcast_offline_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    const-string/jumbo v1, "sms_btn_close"

    const-string/jumbo v2, "NORMAL=image.sms_btn_close_normal|FOCUSED=image.sms_btn_close_press|PRESSED=image.sms_btn_close_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    const-string/jumbo v1, "sms_broadcast_setting_hz"

    const-string/jumbo v2, "NORMAL=image.sms_broadcast_setting_nor_hz|FOCUSED=image.sms_broadcast_setting_press_hz|PRESSED=image.sms_broadcast_setting_press_hz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    const-string/jumbo v1, "sms_receive_dlg_close_btn_states"

    const-string/jumbo v2, "NORMAL=image.sms_receive_dlg_close_btn_normal|FOCUSED=image.sms_receive_dlg_close_btn_press|PRESSED=image.sms_receive_dlg_close_btn_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    const-string/jumbo v1, "sms_receive_dlg_save_btn_states"

    const-string/jumbo v2, "NORMAL=image.sms_btn_popup_save_normal|FOCUSED=image.sms_btn_popup_save_press|PRESSED=image.sms_btn_popup_save_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    const-string/jumbo v1, "sms_minimic_states"

    const-string/jumbo v2, "NORMAL=image.sms_minimic_nor|FOCUSED=image.sms_minimic_nor|PRESSED=image.sms_minimic_press|DISABLED=image.sms_minimic_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    const-string/jumbo v1, "btn_sms_content_dialog_l"

    const-string/jumbo v2, "NORMAL=image.btn_sms_content_dialog_l_nor|FOCUSED=image.btn_sms_content_dialog_l_press|PRESSED=image.btn_sms_content_dialog_l_press|DISABLED=image.btn_sms_content_dialog_l_nor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    const-string/jumbo v1, "btn_sms_content_dialog_r"

    const-string/jumbo v2, "NORMAL=image.btn_sms_content_dialog_r_nor|FOCUSED=image.btn_sms_content_dialog_r_press|PRESSED=image.btn_sms_content_dialog_r_press|DISABLED=image.btn_sms_content_dialog_r_nor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    const-string/jumbo v1, "btn_main_seppch_view_btn_panel"

    const-string/jumbo v2, "NORMAL=image.mainpage_list_single|FOCUSED=image.mainpage_list_single|PRESSED=image.mainpage_list_single_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    const-string/jumbo v1, "contact_yellow_page_states"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=color.contact_yellow_page_press|PRESSED=color.contact_yellow_page_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    const-string/jumbo v1, "ic_browser_arrow_l"

    const-string/jumbo v2, "NORMAL=image.ic_browser_arrow_l|FOCUSED=image.ic_browser_arrow_l|PRESSED=image.ic_browser_arrow_l|DISABLED=image.ic_browser_arrow_l_dim"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    const-string/jumbo v1, "ic_browser_arrow_r"

    const-string/jumbo v2, "NORMAL=image.ic_browser_arrow_r|FOCUSED=image.ic_browser_arrow_r|PRESSED=image.ic_browser_arrow_r|DISABLED=image.ic_browser_arrow_r_dim"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    const-string/jumbo v1, "ic_browser_refresh"

    const-string/jumbo v2, "NORMAL=image.ic_browser_refresh|FOCUSED=image.ic_browser_refresh|PRESSED=image.ic_browser_refresh|DISABLED=image.ic_browser_refresh_dim"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    const-string/jumbo v1, "ic_browser_arrow_home"

    const-string/jumbo v2, "NORMAL=image.ic_browser_arrow_home|FOCUSED=image.ic_browser_arrow_home|PRESSED=image.ic_browser_arrow_home|DISABLED=image.ic_browser_arrow_home_dim"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    const-string/jumbo v1, "ic_browser_arrow_delete"

    const-string/jumbo v2, "NORMAL=image.ic_browser_arrow_delete|FOCUSED=image.ic_browser_arrow_delete|PRESSED=image.ic_browser_arrow_delete|DISABLED=image.ic_browser_arrow_delete_dim"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    const-string/jumbo v1, "btn_refresh_tryagain_state"

    const-string/jumbo v2, "NORMAL=image.btn_refresh_tryagain_nor_bg|FOCUSED=image.btn_refresh_tryagain_press_bg|PRESSED=image.btn_refresh_tryagain_press_bg|DISABLED=image.btn_refresh_tryagain_nor_bg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    const-string/jumbo v1, "browser_navi_press_left_state"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=image.browser_navi_press_l|PRESSED=image.browser_navi_press_l|DISABLED=color.transparent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    const-string/jumbo v1, "browser_navi_press_middle_state"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=image.browser_navi_press_m|PRESSED=image.browser_navi_press_m|DISABLED=color.transparent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    const-string/jumbo v1, "browser_navi_press_right_state"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=image.browser_navi_press_r|PRESSED=image.browser_navi_press_r|DISABLED=color.transparent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    const-string/jumbo v1, "shop_list_selector_extra"

    const-string/jumbo v2, "NORMAL=image.shop_list_item_normal_extra|FOCUSED=image.shop_list_item_pressed_extra|PRESSED=image.shop_list_item_pressed_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    const-string/jumbo v1, "remind_edit_top_item_state"

    const-string/jumbo v2, "NORMAL=image.mainpage_list_top|FOCUSED=image.mainpage_list_top|PRESSED=image.mainpage_list_top_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    const-string/jumbo v1, "remind_add_new_schedule_state"

    const-string/jumbo v2, "NORMAL=image.ic_new_schedule_nor|FOCUSED=image.ic_new_schedule_sel|PRESSED=image.ic_new_schedule_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    const-string/jumbo v1, "remind_personal_ringtone_edit"

    const-string/jumbo v2, "NORMAL=image.remind_personal_ringtone_edit_nor|FOCUSED=image.remind_personal_ringtone_edit_sel|PRESSED=image.remind_personal_ringtone_edit_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    const-string/jumbo v1, "remind_personal_ringtone_complete"

    const-string/jumbo v2, "NORMAL=image.remind_personal_ringtone_complete_nor|FOCUSED=image.remind_personal_ringtone_complete_sel|PRESSED=image.remind_personal_ringtone_complete_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    const-string/jumbo v1, "remind_edit_mid_item_state"

    const-string/jumbo v2, "NORMAL=image.mainpage_list_mid|FOCUSED=image.mainpage_list_mid|PRESSED=image.mainpage_list_mid_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    const-string/jumbo v1, "remind_edit_mid_item_state"

    const-string/jumbo v2, "NORMAL=image.mainpage_list_mid|FOCUSED=image.mainpage_list_mid|PRESSED=image.mainpage_list_mid_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    const-string/jumbo v1, "remind_edit_more_setting_state"

    const-string/jumbo v2, "NORMAL=image.btn_more_nor|FOCUSED=image.btn_more_nor|PRESSED=image.btn_more_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    const-string/jumbo v1, "remind_edit_btm_item_state"

    const-string/jumbo v2, "NORMAL=image.mainpage_list_btm|FOCUSED=image.mainpage_list_btm|PRESSED=image.mainpage_list_btm_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    const-string/jumbo v1, "btn_reminder_add_bg"

    const-string/jumbo v2, "NORMAL=color.btn_reminder_add_nor|FOCUSED=color.btn_reminder_add_press|PRESSED=color.btn_reminder_add_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    const-string/jumbo v1, "btn_reminder_title_button_bg"

    const-string/jumbo v2, "NORMAL=image.btn_reminder_edit_nor|FOCUSED=image.btn_reminder_edit_press|PRESSED=image.btn_reminder_edit_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    const-string/jumbo v1, "remind_dialog_close_bg"

    const-string/jumbo v2, "NORMAL=image.remind_dialog_close_bg_normal|FOCUSED=image.remind_dialog_close_bg_pressed|PRESSED=image.remind_dialog_close_bg_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    const-string/jumbo v1, "remind_dialog_close_bg2"

    const-string/jumbo v2, "NORMAL=image.remind_dialog_close_bg2_normal|FOCUSED=image.remind_dialog_close_bg2_pressed|PRESSED=image.remind_dialog_close_bg2_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    const-string/jumbo v1, "remind_dialog_delay_item_bg"

    const-string/jumbo v2, "NORMAL=color.remind_dialog_delay_item_bg_normal|FOCUSED=color.remind_dialog_delay_item_bg_pressed|PRESSED=color.remind_dialog_delay_item_bg_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    const-string/jumbo v1, "remind_trigger_left_scroll"

    const-string/jumbo v2, "NORMAL=image.remind_trigger_left_scroll_normal|FOCUSED=image.remind_trigger_left_scroll_pressed|PRESSED=image.remind_trigger_left_scroll_pressed|DISABLED=image.remind_trigger_left_scroll_disable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    const-string/jumbo v1, "remind_trigger_right_scroll"

    const-string/jumbo v2, "NORMAL=image.remind_trigger_right_scroll_normal|FOCUSED=image.remind_trigger_right_scroll_pressed|PRESSED=image.remind_trigger_right_scroll_pressed|DISABLED=image.remind_trigger_right_scroll_disable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    const-string/jumbo v1, "btn_broadcast_broadcast_wave"

    const-string/jumbo v2, "NORMAL=image.btn_broadcast_nor|FOCUSED=image.btn_broadcast_press|PRESSED=image.btn_broadcast_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    const-string/jumbo v1, "switch_reminder_checkbox"

    const-string/jumbo v2, "ENABLED_AND_UNCHECKED=image.switch_reminder_off_nor|ENABLED_AND_CHECKED=image.switch_reminder_on_nor|DISABLED_AND_UNCHECKED=image.switch_reminder_off_nor|DISABLED_AND_CHECKED=image.switch_reminder_on_nor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    const-string/jumbo v1, "dlg_single_cancel_btn_state"

    const-string/jumbo v2, "NORMAL=image.dlg_single_cancel_btn_normal|FOCUSED=image.dlg_single_cancel_btn_pressed|PRESSED=image.dlg_single_cancel_btn_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    const-string/jumbo v1, "dlg_cancel_btn_states"

    const-string/jumbo v2, "NORMAL=image.dlg_cancel_btn_normal|FOCUSED=image.dlg_cancel_btn_pressed|PRESSED=image.dlg_cancel_btn_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    const-string/jumbo v1, "dlg_speakover_btn_states"

    const-string/jumbo v2, "NORMAL=image.dlg_speakover_btn_normal|FOCUSED=image.dlg_speakover_btn_pressed|PRESSED=image.dlg_speakover_btn_pressed|DISABLED=image.dlg_speakover_btn_disabled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    const-string/jumbo v1, "custom_menu_item_bg_states"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=color.menu_press|PRESSED=color.menu_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    const-string/jumbo v1, "music_business_btn_states"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=color.transparent|PRESSED=image.mainpage_list_mid_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    const-string/jumbo v1, "btn_music_songs_states"

    const-string/jumbo v2, "NORMAL=image.btn_music_songs_nor|FOCUSED=image.btn_music_songs_press|PRESSED=image.btn_music_songs_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    const-string/jumbo v1, "hotword_btn_states"

    const-string/jumbo v2, "NORMAL=color.btn_upload_normal_color|FOCUSED=color.btn_upload_press_color|PRESSED=color.btn_upload_press_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    const-string/jumbo v1, "hotword_edit_states"

    const-string/jumbo v2, "NORMAL=image.hotword_edit_normal|FOCUSED=image.hotword_edit_select|PRESSED=image.hotword_edit_select"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    const-string/jumbo v1, "sms_edit_add_states_extra"

    const-string/jumbo v2, "NORMAL=image.sms_edit_add_extra_normal|FOCUSED=image.sms_edit_add_extra_normal|PRESSED=image.sms_edit_add_extra_normal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    const-string/jumbo v1, "contact_add_checkbox_states_extra"

    const-string/jumbo v2, "ENABLED_AND_UNCHECKED=image.contact_add_checkbox_normal_extra|ENABLED_AND_CHECKED=image.contact_add_checkbox_selected_extra|DISABLED_AND_UNCHECKED=image.contact_add_checkbox_normal_extra|DISABLED_AND_CHECKED=image.contact_add_checkbox_selected_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    const-string/jumbo v1, "contact_item_bubble_bg_states_extra"

    const-string/jumbo v2, "NORMAL=image.contact_item_bubble_bg_normal_extra|FOCUSED=image.contact_item_bubble_bg_pressed_extra|PRESSED=image.contact_item_bubble_bg_pressed_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    const-string/jumbo v1, "sms_contact_edit_extra"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=color.transparent|PRESSED=color.transparent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    const-string/jumbo v1, "sms_edit_button_states_extra"

    const-string/jumbo v2, "NORMAL=image.sms_edit_button_normal_extra|FOCUSED=image.sms_edit_button_press_extra|PRESSED=image.sms_edit_button_press_extra|DISABLED=image.sms_edit_button_normal_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    const-string/jumbo v1, "sms_number_choose_checkbox_states"

    const-string/jumbo v2, "ENABLED_AND_UNCHECKED=image.contact_checkbox_nor_dialog|ENABLED_AND_CHECKED=image.contact_checkbox_sel_dialog|DISABLED_AND_UNCHECKED=image.contact_checkbox_nor_dialog|DISABLED_AND_CHECKED=image.contact_checkbox_sel_dialog"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    const-string/jumbo v1, "sms_number_choose_item_bg"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=color.transparent|PRESSED=image.sms_contact_number_choose_list_item_bg_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    const-string/jumbo v1, "download_delete_checkbox_states"

    const-string/jumbo v2, "ENABLED_AND_UNCHECKED=image.download_checkbox_unselected_enabled|ENABLED_AND_CHECKED=image.download_checkbox_selected_enabled|DISABLED_AND_UNCHECKED=image.download_checkbox_unselected_enabled|DISABLED_AND_CHECKED=image.download_checkbox_selected_enabled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    const-string/jumbo v1, "download_item_states"

    const-string/jumbo v2, "NORMAL=color.download_item_normal_color|FOCUSED=color.download_item_normal_color|PRESSED=image.subpage_list_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    const-string/jumbo v1, "download_continue_btn_states"

    const-string/jumbo v2, "NORMAL=image.btn_downloadmanager_nor|FOCUSED=image.btn_downloadmanager_nor|PRESSED=image.btn_downloadmanager_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    const-string/jumbo v1, "authentication_close_btn_states"

    const-string/jumbo v2, "NORMAL=image.authentication_close_btn_bg_normal|FOCUSED=image.authentication_close_btn_bg_pressed|PRESSED=image.authentication_close_btn_bg_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    const-string/jumbo v1, "authentication_confirm_btn_states"

    const-string/jumbo v2, "NORMAL=image.authentication_confirm_btn_bg_normal|FOCUSED=image.authentication_confirm_btn_bg_pressed|PRESSED=image.authentication_confirm_btn_bg_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    const-string/jumbo v1, "novel_item_state"

    const-string/jumbo v2, "NORMAL=image.mainpage_list_mid|FOCUSED=image.mainpage_list_mid|PRESSED=image.mainpage_list_mid_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    const-string/jumbo v1, "mainpage_list_mid_state"

    const-string/jumbo v2, "NORMAL=image.mainpage_list_mid|FOCUSED=image.mainpage_list_mid|PRESSED=image.mainpage_list_mid_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    const-string/jumbo v1, "list_dialog_cancle_state"

    const-string/jumbo v2, "NORMAL=image.btn_reminder_cancel_nor|FOCUSED=image.btn_reminder_cancel_press|PRESSED=image.btn_reminder_cancel_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    const-string/jumbo v1, "hotel_getmore_item_state"

    const-string/jumbo v2, "NORMAL=image.subpage_list_nor|FOCUSED=image.subpage_list_nor|PRESSED=image.subpage_list_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    const-string/jumbo v1, "permission_list_item_state"

    const-string/jumbo v2, "NORMAL=image.mainpage_list_single|FOCUSED=image.mainpage_list_single|PRESSED=image.mainpage_list_single_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    const-string/jumbo v1, "plugin_install_bg_state"

    const-string/jumbo v2, "NORMAL=image.btn_install_nor|FOCUSED=image.btn_install_press|PRESSED=image.btn_install_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    const-string/jumbo v1, "btn_list_linxi_update_states"

    const-string/jumbo v2, "NORMAL=image.btn_list_linxi_update_nor|FOCUSED=image.btn_list_linxi_update_press|PRESSED=image.btn_list_linxi_update_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    const-string/jumbo v1, "btn_menu_install_status"

    const-string/jumbo v2, "NORMAL=image.btn_menu_install_nor|FOCUSED=image.btn_menu_install_press|PRESSED=image.btn_menu_install_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    const-string/jumbo v1, "btn_menu_uninstall_status"

    const-string/jumbo v2, "NORMAL=image.btn_menu_uninstall_nor|FOCUSED=image.btn_menu_uninstall_press|PRESSED=image.btn_menu_uninstall_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    const-string/jumbo v1, "btn_menu_update_status"

    const-string/jumbo v2, "NORMAL=image.btn_menu_update_nor|FOCUSED=image.btn_menu_update_press|PRESSED=image.btn_menu_update_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    const-string/jumbo v1, "adaptation_dialog_confirm_bt_states"

    const-string/jumbo v2, "NORMAL=image.adaptation_confirm_btn_normal|FOCUSED=image.adaptation_confirm_btn_press|PRESSED=image.adaptation_confirm_btn_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    const-string/jumbo v1, "adaptation_dialog_cancel_bt_states"

    const-string/jumbo v2, "NORMAL=image.adaptation_cancel_btn_normal|FOCUSED=image.adaptation_cancel_btn_press|PRESSED=image.adaptation_cancel_btn_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    const-string/jumbo v1, "adaptation_checkbox_states"

    const-string/jumbo v2, "ENABLED_AND_UNCHECKED=image.ic_checkbox_carmode_nor|ENABLED_AND_CHECKED=image.ic_checkbox_carmode_sel|DISABLED_AND_UNCHECKED=image.ic_checkbox_carmode_nor|DISABLED_AND_CHECKED=image.ic_checkbox_carmode_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    const-string/jumbo v1, "share_cancel_btn_state"

    const-string/jumbo v2, "NORMAL=image.share_cancel|FOCUSED=image.share_cancel|PRESSED=image.share_cancel_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    const-string/jumbo v1, "share_qqmobile_btn_state"

    const-string/jumbo v2, "NORMAL=image.ic_translation_qq|FOCUSED=image.ic_translation_qq|PRESSED=image.ic_translation_qq_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    const-string/jumbo v1, "share_mms_btn_state"

    const-string/jumbo v2, "NORMAL=image.ic_translation_message|FOCUSED=image.ic_translation_message|PRESSED=image.ic_translation_message_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    const-string/jumbo v1, "share_more_btn_state"

    const-string/jumbo v2, "NORMAL=image.ic_translation_more|FOCUSED=image.ic_translation_more|PRESSED=image.ic_translation_more_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    const-string/jumbo v1, "oral_get_help_close_state"

    const-string/jumbo v2, "NORMAL=image.mainpage_list_single|FOCUSED=image.mainpage_list_single|PRESSED=image.mainpage_list_single_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    const-string/jumbo v1, "ic_timeline_btn_state"

    const-string/jumbo v2, "NORMAL=image.ic_timeline|FOCUSED=image.ic_timeline|PRESSED=image.ic_timeline_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    const-string/jumbo v1, "ic_qqzone_btn_state"

    const-string/jumbo v2, "NORMAL=image.ic_qqzone|FOCUSED=image.ic_qqzone|PRESSED=image.ic_qqzone_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    const-string/jumbo v1, "ic_weixin_btn_state"

    const-string/jumbo v2, "NORMAL=image.ic_weixin|FOCUSED=image.ic_weixin|PRESSED=image.ic_weixin_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    const-string/jumbo v1, "ic_weibo_btn_state"

    const-string/jumbo v2, "NORMAL=image.ic_weibo|FOCUSED=image.ic_weibo|PRESSED=image.ic_weibo_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    const-string/jumbo v1, "contact_reduce"

    const-string/jumbo v2, "NORMAL=image.contact_reduce_nor_bg|FOCUSED=image.contact_reduce_nor_bg|PRESSED=image.contact_reduce_press_bg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    const-string/jumbo v1, "btn_enter_call_sms_setting"

    const-string/jumbo v2, "NORMAL=image.auth_activate_btn_normal|FOCUSED=image.auth_activate_btn_press|PRESSED=image.auth_activate_btn_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    const-string/jumbo v1, "btn_push_pop_s_status"

    const-string/jumbo v2, "NORMAL=image.btn_push_pop_s_nor|FOCUSED=image.btn_push_pop_s_press|PRESSED=image.btn_push_pop_s_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    const-string/jumbo v1, "ic_remind_floatwindow_broadcast_status"

    const-string/jumbo v2, "NORMAL=image.ic_remind_floatwindow_broadcast_nor|FOCUSED=image.ic_remind_floatwindow_broadcast_light|PRESSED=image.ic_remind_floatwindow_broadcast_light"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    const-string/jumbo v1, "ic_remind_floatwindow_close_status"

    const-string/jumbo v2, "NORMAL=image.ic_remind_floatwindow_close|FOCUSED=image.ic_remind_floatwindow_close_press|PRESSED=image.ic_remind_floatwindow_close_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    const-string/jumbo v1, "ic_remind_floatwindow_set_status"

    const-string/jumbo v2, "NORMAL=image.ic_remind_floatwindow_set|FOCUSED=image.ic_remind_floatwindow_set_press|PRESSED=image.ic_remind_floatwindow_set_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    const-string/jumbo v1, "big_window_linearlayout_bottom_part_status"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=image.bg_remind_floatwindow_mid_press|PRESSED=image.bg_remind_floatwindow_mid_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    const-string/jumbo v1, "big_window_linearlayout_bottom_btn_status"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=image.bg_remind_floatwindow_bottom_press|PRESSED=image.bg_remind_floatwindow_bottom_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    const-string/jumbo v1, "translation_mode_switch_btn_status"

    const-string/jumbo v2, "NORMAL=image.subpage_translation_title_bg|FOCUSED=image.subpage_translation_title_bg_press|PRESSED=image.subpage_translation_title_bg_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    const-string/jumbo v1, "hum_music"

    const-string/jumbo v2, "NORMAL=image.hum_music|FOCUSED=image.hum_music_pre|PRESSED=image.hum_music_pre"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    const-string/jumbo v1, "dial_specific_progress"

    const-string/jumbo v2, "NORMAL=color.dial_specific_progress_normal|FOCUSED=color.dial_specific_progress_pressed|PRESSED=color.dial_specific_progress_pressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    const-string/jumbo v1, "dialog_btn_warn_status"

    const-string/jumbo v2, "NORMAL=image.dialog_btn_warn_nor|FOCUSED=image.dialog_btn_warn_press|PRESSED=image.dialog_btn_warn_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    const-string/jumbo v1, "dialog_btn_cancel_status"

    const-string/jumbo v2, "NORMAL=image.dialog_btn_cancel_nor|FOCUSED=image.dialog_btn_cancel_press|PRESSED=image.dialog_btn_cancel_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    const-string/jumbo v1, "dialog_btn_confirm_status"

    const-string/jumbo v2, "NORMAL=image.dialog_btn_confirm_nor|FOCUSED=image.dialog_btn_confirm_press|PRESSED=image.dialog_btn_confirm_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    const-string/jumbo v1, "dialog_bottom_btn_status"

    const-string/jumbo v2, "NORMAL=color.transparent|FOCUSED=color.dlg_botton_press|PRESSED=color.dlg_botton_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    const-string/jumbo v1, "btn_dlg_l_nor"

    const-string/jumbo v2, "NORMAL=image.btn_dlg_l_nor|FOCUSED=image.btn_dlg_l_press|PRESSED=image.btn_dlg_l_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    const-string/jumbo v1, "btn_dlg_r_nor"

    const-string/jumbo v2, "NORMAL=image.btn_dlg_r_nor|FOCUSED=image.btn_dlg_r_press|PRESSED=image.btn_dlg_r_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    const-string/jumbo v1, "ic_mainpage_refresh_btn_state"

    const-string/jumbo v2, "NORMAL=image.ic_mainpage_refresh_btn_nor|FOCUSED=image.ic_mainpage_refresh_btn_press|PRESSED=image.ic_mainpage_refresh_btn_press"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    const-string/jumbo v1, "weather_card_schedule_open_btn_state"

    const-string/jumbo v2, "NORMAL=image.btn_mainpage_weather_scheduleopen_nor|FOCUSED=image.btn_mainpage_weather_scheduleopen_sel|PRESSED=image.btn_mainpage_weather_scheduleopen_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    const-string/jumbo v1, "weather_card_schedule_close_btn_state"

    const-string/jumbo v2, "NORMAL=image.ic_close_schedule_setting_nor|FOCUSED=image.ic_close_schedule_setting_sel|PRESSED=image.ic_close_schedule_setting_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    const-string/jumbo v1, "dialog_remind_button_state"

    const-string/jumbo v2, "NORMAL=color.dialog_remind_button_nor|FOCUSED=color.dialog_remind_button_sel|PRESSED=color.dialog_remind_button_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    const-string/jumbo v1, "fluepage_title_back_btn_states"

    const-string/jumbo v2, "NORMAL=image.comm_top_back_nor|FOCUSED=image.comm_top_back_sel|PRESSED=image.comm_top_back_sel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    return-object v0
.end method

.method public styles1080()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "style_custom_dialog_title"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=authentication_dilog_title_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string/jumbo v1, "style_custom_dialog_message"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=authentication_dilog_message_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string/jumbo v1, "style_custom_dialog_button"

    const-string/jumbo v2, "TEXT_SIZE=21|TEXT_COLOR=authentication_dilog_button_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-object v0
.end method

.method public styles320()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "style_shop_list_item_address_value"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=xpreference_summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v1, "style_dialogmode_web_title_text2"

    const-string/jumbo v2, "TEXT_SIZE=20|TEXT_COLOR=web_title_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v1, "style_home_title"

    const-string/jumbo v2, "TEXT_SIZE=21|TEXT_COLOR=main_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v1, "style_main_speech_view_send_btn"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=main_speech_view_send_btn_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v1, "style_main_speech_view_send_text"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=main_speech_view_send_btn_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v1, "call_auto_dial_name"

    const-string/jumbo v2, "TEXT_SIZE=22|TEXT_COLOR=call_broadcast_view_number_title_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v1, "call_auto_dial_number"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=call_broadcast_view_number_content_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v1, "call_auto_dial_state"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=call_broadcast_view_states_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v1, "sytly_hold_mic_dialog_top_text"

    const-string/jumbo v2, "TEXT_SIZE=15|TEXT_COLOR=sytly_hold_mic_dialog_top_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v1, "sytly_hold_mic_dialog_top_text"

    const-string/jumbo v2, "TEXT_SIZE=11|TEXT_COLOR=sytly_hold_mic_dialog_top_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v1, "style_custom_dialog_title"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=authentication_dilog_title_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v1, "style_custom_dialog_message"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=authentication_dilog_message_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v1, "style_custom_dialog_button"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=authentication_dilog_button_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v1, "oral_show_answer_desc_txt"

    const-string/jumbo v2, "TEXT_SIZE=10|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v1, "style_weather_big_float_content"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v1, "style_sms_edit_sms_content_extra"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=sms_edit_sms_content_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v1, "style_plugin_manager_plugin_name"

    const-string/jumbo v2, "TEXT_SIZE=15|TEXT_COLOR=plugin_manager_plugin_list_desc_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-object v0
.end method

.method public styles480()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "style_shop_list_item_address_value"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=xpreference_summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v1, "style_dialogmode_web_title_text2"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=web_title_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v1, "style_guide_weather_tips"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v1, "style_home_title"

    const-string/jumbo v2, "TEXT_SIZE=21|TEXT_COLOR=main_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v1, "style_main_speech_view_send_btn"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=main_speech_view_send_btn_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v1, "style_main_speech_view_send_text"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=main_speech_view_send_btn_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v1, "style_new_comer_guide_text"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=new_comer_guide_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string/jumbo v1, "call_auto_dial_name"

    const-string/jumbo v2, "TEXT_SIZE=24|TEXT_COLOR=call_broadcast_view_number_title_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v1, "sytly_hold_mic_dialog_top_text"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=sytly_hold_mic_dialog_top_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v1, "style_custom_dialog_title"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=authentication_dilog_title_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v1, "style_custom_dialog_message"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=authentication_dilog_message_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v1, "style_custom_dialog_button"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=authentication_dilog_button_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v1, "style_sms_edit_sms_content_extra"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=sms_edit_sms_content_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v1, "style_plugin_manager_plugin_name"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=plugin_manager_plugin_list_desc_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v1, "style_menu_item_sub_text"

    const-string/jumbo v2, "TEXT_SIZE=11|TEXT_COLOR=menu_item_sub_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v1, "style_weather_big_float_content"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v1, "style_shake_summary_for_setting"

    const-string/jumbo v2, "TEXT_SIZE=11|TEXT_COLOR=xpreference_summary_for_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-object v0
.end method

.method public styles540()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "style_new_comer_guide_text"

    const-string/jumbo v2, "TEXT_SIZE=15|TEXT_COLOR=new_comer_guide_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v1, "style_offline_fail_content"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-object v0
.end method

.method public styles640()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "style_guide_weather_tips"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v1, "style_home_title"

    const-string/jumbo v2, "TEXT_SIZE=21|TEXT_COLOR=main_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v1, "style_custom_dialog_title"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=authentication_dilog_title_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v1, "style_custom_dialog_message"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=authentication_dilog_message_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v1, "style_custom_dialog_button"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=authentication_dilog_button_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v1, "style_sms_edit_sms_content_extra"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=sms_edit_sms_content_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-object v0
.end method

.method public styles720()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 964
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "style_title"

    const-string/jumbo v2, "TEXT_SIZE=21|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    const-string/jumbo v1, "style_title_white"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=title_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    const-string/jumbo v1, "style_title_trans"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=title_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-string/jumbo v1, "style_title_speaker"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    const-string/jumbo v1, "style_contact_title"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string/jumbo v1, "call_auto_dial_name"

    const-string/jumbo v2, "TEXT_SIZE=26|TEXT_COLOR=call_broadcast_view_number_title_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string/jumbo v1, "call_auto_dial_number"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=call_broadcast_view_number_content_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string/jumbo v1, "call_auto_dial_sogou_info"

    const-string/jumbo v2, "TEXT_SIZE=10|TEXT_COLOR=call_broadcast_view_sogou_content_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string/jumbo v1, "call_auto_dial_state"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=call_broadcast_view_states_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const-string/jumbo v1, "style_list_dialog_show_text"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=list_dialog_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    const-string/jumbo v1, "style_btn_cancel_show_text"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    const-string/jumbo v1, "style_lockscreen_mode_start_btn"

    const-string/jumbo v2, "TEXT_SIZE=22|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    const-string/jumbo v1, "style_lockscreen_mode_title"

    const-string/jumbo v2, "TEXT_SIZE=22|TEXT_COLOR=guide_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    const-string/jumbo v1, "style_sms_dlg_text"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=sms_dlg_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    const-string/jumbo v1, "style_sms_add_contacts_no_contacts_info"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=xpreference_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    const-string/jumbo v1, "style_sms_content_speech_dialog_btn_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    const-string/jumbo v1, "style_sms_content_speech_dialog_top_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const-string/jumbo v1, "style_number_mark_btn_unclickable_txt_color"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=btn_press_txt_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const-string/jumbo v1, "style_home_title"

    const-string/jumbo v2, "TEXT_SIZE=21|TEXT_COLOR=main_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    const-string/jumbo v1, "style_base_activity_title"

    const-string/jumbo v2, "TEXT_SIZE=21|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    const-string/jumbo v1, "style_dlg_button"

    const-string/jumbo v2, "TEXT_SIZE=22|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    const-string/jumbo v1, "style_main_speech_view_send_btn"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=main_speech_view_send_btn_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    const-string/jumbo v1, "style_main_speech_view_send_btn_disable"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=main_speech_view_send_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    const-string/jumbo v1, "style_main_speech_view_send_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=main_speech_view_send_btn_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const-string/jumbo v1, "style_main_speech_speech_tips"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    const-string/jumbo v1, "style_main_speech_panel_btn"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    const-string/jumbo v1, "style_sign_in_button"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=sign_in_button_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const-string/jumbo v1, "style_sign_in_button_diable"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=sign_in_button_diable_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    const-string/jumbo v1, "style_custom_signed_label_toast_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=color_custom_signed_label_toast_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    const-string/jumbo v1, "style_custom_signed_value_toast_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=color_custom_signed_value_toast_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    const-string/jumbo v1, "style_shop_list_item_address_value"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=xpreference_summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    const-string/jumbo v1, "style_browser_main_title"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=browser_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    const-string/jumbo v1, "style_browser_sub_title"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=browser_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string/jumbo v1, "style_browser_exception_tip"

    const-string/jumbo v2, "TEXT_SIZE=23|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    const-string/jumbo v1, "style_browser_exception_resion"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    const-string/jumbo v1, "style_browser_exception_btn"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    const-string/jumbo v1, "hot_remind_switch_no_add_text"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=remind_dialog_close_button"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const-string/jumbo v1, "hot_remind_switch_added_text"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=mail_text_date_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    const-string/jumbo v1, "hot_schedule_done_text"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=menu_item_sub_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    const-string/jumbo v1, "style_reminder_dialog_title"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=remind_schedule_dialog_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    const-string/jumbo v1, "style_reminder_dialog_remind_page"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=remind_dialog_page"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const-string/jumbo v1, "style_weather_reminder_dialog_remind_page"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=remind_dialog_page"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    const-string/jumbo v1, "style_reminder_dialog_remind_date"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=remind_dialog_date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    const-string/jumbo v1, "style_reminder_dialog_content"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=remind_dialog_content"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    const-string/jumbo v1, "style_reminder_source_desc"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=external_reminder_source_desc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    const-string/jumbo v1, "style_reminder_dialog_action_txt"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=reminder_dialog_action_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    const-string/jumbo v1, "style_reminder_dialog_close_button"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=remind_dialog_close_button"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    const-string/jumbo v1, "style_reminder_dialog_delay_switch"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=remind_dialog_delay_switch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    const-string/jumbo v1, "style_reminder_dialog_delay_item"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=xpreference_summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    const-string/jumbo v1, "style_reminder_dialog_delay_item"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=remind_dialog_delay_switch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    const-string/jumbo v1, "style_reminder_dialog_weather_temperature"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=reminder_dialog_weather_temperature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    const-string/jumbo v1, "style_reminder_dialog_weather_city"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=reminder_dialog_weather_city"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    const-string/jumbo v1, "style_reminder_dialog_weather_wind"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=reminder_dialog_weather_wind"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    const-string/jumbo v1, "style_reminder_dialog_weather_error"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=reminder_dialog_weather_error"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    const-string/jumbo v1, "style_alarm_news_all"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=remind_alarm_news_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    const-string/jumbo v1, "style_alarm_news_close"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=remind_alarm_news_close"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string/jumbo v1, "style_reminder_edit_title_bar_text"

    const-string/jumbo v2, "TEXT_SIZE=21|TEXT_COLOR=remind_title_bar_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string/jumbo v1, "style_reminder_edit_title_bar_left"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=remind_title_bar_left_btn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    const-string/jumbo v1, "style_reminder_edit_title_bar_right"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=remind_title_bar_right_btn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    const-string/jumbo v1, "style_delete_reminder_text"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const-string/jumbo v1, "style_schedule_delay_set_permission_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=dlg_positive_button_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    const-string/jumbo v1, "style_delete_button_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=remind_delete_button__text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    const-string/jumbo v1, "style_reminder_edit_title_text"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=reminder_edit_summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const-string/jumbo v1, "style_reminder_edit_summary_text"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=reminder_edit_summary_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const-string/jumbo v1, "style_reminder_repeat_setting_title_text"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=xpreference_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    const-string/jumbo v1, "style_reminder_repeat_setting_summary_text"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=reminder_repeat_setting_summary_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string/jumbo v1, "style_reminder_repeat_setting_week_item_unchecked"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=xpreference_summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const-string/jumbo v1, "style_reminder_repeat_setting_week_item_checked"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const-string/jumbo v1, "style_reminder_list_title_delete_count"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const-string/jumbo v1, "style_remind_schedule_dialog_title"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=remind_schedule_dialog_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    const-string/jumbo v1, "style_remind_schedule_dialog_news_title"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    const-string/jumbo v1, "style_schedule_time_picker_unit"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    const-string/jumbo v1, "style_schedule_delay_trigger_prompt"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=remind_title_bar_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    const-string/jumbo v1, "notice_center_story_notice_prompt_text_style"

    const-string/jumbo v2, "TEXT_SIZE=15|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    const-string/jumbo v1, "schedule_manage_delete_nor_style"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    const-string/jumbo v1, "schedule_manage_delete_unclick_style"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=remind_manager_undelete_btn_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    const-string/jumbo v1, "style_remind_item_title_disable"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=remind_item_title_disable_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    const-string/jumbo v1, "style_remind_item_summery_disable"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=remind_item_summery_disable_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    const-string/jumbo v1, "style_app_text"

    const-string/jumbo v2, "TEXT_SIZE=22|TEXT_COLOR=xpreference_title|TEXT_STYLE=normal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const-string/jumbo v1, "style_dialogmode_web_title_text2"

    const-string/jumbo v2, "TEXT_SIZE=20|TEXT_COLOR=web_title_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    const-string/jumbo v1, "style_settings_title"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    const-string/jumbo v1, "style_settings_title_new"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=title_white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    const-string/jumbo v1, "style_xpreference_title"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=xpreference_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    const-string/jumbo v1, "style_xpreference_summary"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=xpreference_summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    const-string/jumbo v1, "style_xpreference_title_for_setting"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=xpreference_title_for_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    const-string/jumbo v1, "style_xpreference_title_for_setting_new"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=xpreference_title_for_setting_new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    const-string/jumbo v1, "style_xpreference_title_gray_for_setting"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=xpreference_title_gray_for_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    const-string/jumbo v1, "style_xpreference_title_gray_for_setting_new"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=xpreference_title_gray_for_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    const-string/jumbo v1, "style_xpreference_summary_for_setting"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=xpreference_summary_for_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    const-string/jumbo v1, "style_xpreference_summary_for_setting_new"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=xpreference_summary_for_setting_new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    const-string/jumbo v1, "style_xpreference_summary_gray_for_setting"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=xpreference_summary_gray_for_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    const-string/jumbo v1, "style_xpreference_summary_gray_for_setting_new"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=xpreference_summary_gray_for_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const-string/jumbo v1, "style_shake_summary_for_setting"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=xpreference_summary_for_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    const-string/jumbo v1, "style_menu_item_text"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=menu_item_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    const-string/jumbo v1, "style_menu_item_sub_text"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=menu_item_sub_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    const-string/jumbo v1, "style_menu_item_test"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=color_plugin_test_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    const-string/jumbo v1, "style_menu_item_install_tip"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=menu_item_sub_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const-string/jumbo v1, "style_skin_button"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    const-string/jumbo v1, "style_skin_button_disabled"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const-string/jumbo v1, "style_setting_privacy_contact_button"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    const-string/jumbo v1, "style_setting_privacy_contact_title"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    const-string/jumbo v1, "style_setting_item_setup_text"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=setting_item_setup_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    const-string/jumbo v1, "style_adblock_num_text"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=setting_item_setup_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    const-string/jumbo v1, "style_adblock_num_clear_button"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=setting_item_setup_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    const-string/jumbo v1, "style_adblock_num_clear_button_diable"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=xpreference_adblock_num_clear_button_diable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const-string/jumbo v1, "style_music_song_name_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=mail_button_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    const-string/jumbo v1, "style_music_song_name_text_play"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=music_play_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    const-string/jumbo v1, "style_music_singer_text"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=mail_text_date_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    const-string/jumbo v1, "style_music_singer_text_play"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=music_play_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    const-string/jumbo v1, "style_music_song_source_text"

    const-string/jumbo v2, "TEXT_SIZE=10|TEXT_COLOR=mail_text_date_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    const-string/jumbo v1, "style_music_song_order_text"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=music_order_btn_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    const-string/jumbo v1, "style_music_song_source_text_play"

    const-string/jumbo v2, "TEXT_SIZE=10|TEXT_COLOR=music_play_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    const-string/jumbo v1, "style_music_play_time_text"

    const-string/jumbo v2, "TEXT_SIZE=10|TEXT_COLOR=music_play_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    const-string/jumbo v1, "music_dlg_style"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=music_dlg_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    const-string/jumbo v1, "music_search_tilte_style"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=xpreference_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    const-string/jumbo v1, "music_search_summary_style"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=xpreference_summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    const-string/jumbo v1, "style_dlg_result_edit_button"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=black"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    const-string/jumbo v1, "style_dlg_result_edit"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=black"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    const-string/jumbo v1, "style_dlg_title"

    const-string/jumbo v2, "TEXT_SIZE=22|TEXT_COLOR=sms_dlg_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    const-string/jumbo v1, "style_dlg_text_tip"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=sms_dlg_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    const-string/jumbo v1, "style_hotword_left_number"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const-string/jumbo v1, "style_hotword_left_number_overflow"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=red"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    const-string/jumbo v1, "style_hotword_btn"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    const-string/jumbo v1, "style_contact_select_dialog_cancel"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    const-string/jumbo v1, "style_contact_select_dialog_title"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=contact_select_dialog_title_text_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const-string/jumbo v1, "style_contact_select_dialog_title_extra"

    const-string/jumbo v2, "TEXT_SIZE=24|TEXT_COLOR=contact_select_dialog_title_text_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    const-string/jumbo v1, "style_contact_select_dialog_title_tip"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=contact_select_dialog_title_text_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    const-string/jumbo v1, "style_contact_select_dialog_content"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=contact_select_dialog_title_text_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    const-string/jumbo v1, "style_contact_select_dialog_location"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=contact_item_bubble_normal_color_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    const-string/jumbo v1, "style_contact_select_dialog_phonenumber"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=contact_select_dialog_title_text_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    const-string/jumbo v1, "style_call_log_delete_dialog_text_lebal"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    const-string/jumbo v1, "style_call_log_delete_dialog_text_btn"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    const-string/jumbo v1, "style_contact_add_title_extra"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    const-string/jumbo v1, "style_contact_add_list_item_title_extra"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=mail_text_date_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    const-string/jumbo v1, "style_contact_add_list_item_name_extra"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=contact_select_dialog_title_text_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    const-string/jumbo v1, "style_contact_add_list_item_name_extra_extra"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=contact_select_dialog_title_text_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    const-string/jumbo v1, "style_contact_add_list_item_number_extra"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=contact_item_bubble_normal_color_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string/jumbo v1, "style_sms_edit_sms_content_extra"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=sms_edit_sms_content_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    const-string/jumbo v1, "style_sms_edit_sms_content_extra_hz"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=remind_dialog_close_button"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    const-string/jumbo v1, "style_sms_edit_receive_content"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=sms_edit_sms_content_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    const-string/jumbo v1, "style_sms_receive_name"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    const-string/jumbo v1, "style_sms_receive_send_btn"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    const-string/jumbo v1, "style_sms_edit_send_btn_normal_extra"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=sms_edit_sms_content_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    const-string/jumbo v1, "style_sms_edit_send_btn_pressed_extra"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=sms_edit_send_btn_pressed_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    const-string/jumbo v1, "style_contact_item_bubble_normal"

    const-string/jumbo v2, "TEXT_SIZE=20|TEXT_COLOR=contact_item_bubble_normal_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    const-string/jumbo v1, "style_contact_item_bubble_normal_extra"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=contact_item_bubble_normal_color_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    const-string/jumbo v1, "style_contact_name_extra"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    const-string/jumbo v1, "style_contact_search_name_extra"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=mail_text_date_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    const-string/jumbo v1, "style_contact_search_name_extra_extra"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=mail_button_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    const-string/jumbo v1, "style_download_tab_select"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=download_tab_select_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    const-string/jumbo v1, "style_download_tab_unselect"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=download_tab_unselect_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    const-string/jumbo v1, "style_download_tips"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=download_tips_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    const-string/jumbo v1, "style_download_stop_tips"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=download_tips_stop_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    const-string/jumbo v1, "style_custom_dialog_title"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=xpreference_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    const-string/jumbo v1, "style_download_item_size"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=menu_item_sub_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    const-string/jumbo v1, "style_custom_dialog_message"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=xpreference_summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const-string/jumbo v1, "style_custom_dialog_button"

    const-string/jumbo v2, "TEXT_SIZE=20|TEXT_COLOR=xpreference_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const-string/jumbo v1, "style_custom_toast_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string/jumbo v1, "style_download_item_header"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const-string/jumbo v1, "style_download_item_title"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    const-string/jumbo v1, "style_download_item_progress_text"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=menu_item_sub_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const-string/jumbo v1, "style_download_item_continue_btn_text"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=download_item_continue_btn_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    const-string/jumbo v1, "style_download_delete_dialog_tip"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=menu_item_sub_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const-string/jumbo v1, "style_dialog_title_textview"

    const-string/jumbo v2, "TEXT_SIZE=21|TEXT_COLOR=car_mode_title_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    const-string/jumbo v1, "style_dialog_content_title_textview"

    const-string/jumbo v2, "TEXT_SIZE=20|TEXT_COLOR=car_mode_title_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    const-string/jumbo v1, "style_dialog_content_textview"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=car_mode_title_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    const-string/jumbo v1, "style_dialog_item_content"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=car_mode_item_content_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    const-string/jumbo v1, "style_dialog_item_small_content"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=car_mode_title_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    const-string/jumbo v1, "style_dialog_small_item_content"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    const-string/jumbo v1, "style_sms_save_dialog_date"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=add_number_view_date_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    const-string/jumbo v1, "style_new_comer_guide_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=new_comer_guide_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    const-string/jumbo v1, "style_sohu_news_title_text"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=remind_title_bar_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    const-string/jumbo v1, "style_sim_card_select_cancel_btn"

    const-string/jumbo v2, "TEXT_SIZE=20|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    const-string/jumbo v1, "style_sohunews_alert_setting_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=news_alert_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    const-string/jumbo v1, "style_sohunews_alert_setting_subtext"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=news_alert_setting_sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    const-string/jumbo v1, "sohunews_sub_detail_title"

    const-string/jumbo v2, "TEXT_SIZE=20|TEXT_COLOR=news_alert_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    const-string/jumbo v1, "sohunews_sub_detail_repeat"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=news_alert_setting_sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    const-string/jumbo v1, "style_novel_readbtn_text"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=mail_button_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    const-string/jumbo v1, "style_novel_author_text"

    const-string/jumbo v2, "TEXT_SIZE=11|TEXT_COLOR=mail_text_date_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    const-string/jumbo v1, "style_novel_summary_text"

    const-string/jumbo v2, "TEXT_SIZE=11|TEXT_COLOR=mail_text_date_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    const-string/jumbo v1, "style_novel_setting_popupWondow_tip_text"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    const-string/jumbo v1, "style_novel_setting_popupWondow_setting_btn_text"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    const-string/jumbo v1, "sytly_hold_mic_dialog_top_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=sytly_hold_mic_dialog_top_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    const-string/jumbo v1, "style_video_pubdate_text"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=video_pubdate_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    const-string/jumbo v1, "style_permission_dialog_message"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=permission_dialog_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    const-string/jumbo v1, "style_permission_record_message"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=permission_record_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    const-string/jumbo v1, "permission_setup_title_style"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    const-string/jumbo v1, "permission_setup_item_text_style"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=permission_setup_item_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    const-string/jumbo v1, "permission_setup_item_tip_style"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=permission_setup_item_tip_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    const-string/jumbo v1, "permission_setup_tip_style"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=permission_setup_item_tip_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const-string/jumbo v1, "permission_list_item_text_style"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    const-string/jumbo v1, "style_permission_dialog_content_message"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=permission_content_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    const-string/jumbo v1, "style_adaptation_dialog_title"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=adaptation_dialog_title_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    const-string/jumbo v1, "style_adaptation_dialog_checkbox_tips"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=adaptation_dialog_title_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    const-string/jumbo v1, "style_adaptation_dialog_btn"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=adaptation_dialog_btn_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    const-string/jumbo v1, "style_oral_get_help_txt"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    const-string/jumbo v1, "style_oral_get_help_icon_txt"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    const-string/jumbo v1, "style_mmp_download_dialog_title"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=adaptation_dialog_title_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    const-string/jumbo v1, "remind_delay_guide_no_prompt"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=remind_delay_guide_no_prompt_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    const-string/jumbo v1, "plugin_uninstall_btn"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    const-string/jumbo v1, "plugin_info_name"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=plugin_info_name_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    const-string/jumbo v1, "plugin_info_size"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=plugin_info_size_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    const-string/jumbo v1, "plugin_info_introduction"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=plugin_info_name_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const-string/jumbo v1, "plugin_download_size_info"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=plugin_info_size_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    const-string/jumbo v1, "style_plugin_update_btn"

    const-string/jumbo v2, "TEXT_SIZE=11|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    const-string/jumbo v1, "style_plugin_manager_plugin_list_desc"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=plugin_manager_plugin_list_desc_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    const-string/jumbo v1, "style_plugin_manager_plugin_name"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=plugin_manager_plugin_list_desc_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    const-string/jumbo v1, "style_plugin_test_version"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=plugin_test_version_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    const-string/jumbo v1, "plugin_extends_style"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    const-string/jumbo v1, "plugin_label_text_style"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=plugin_label_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    const-string/jumbo v1, "plugin_label_btn_text_style"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=plugin_label_btn_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    const-string/jumbo v1, "style_record_dialog_title_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    const-string/jumbo v1, "style_record_dialog_time_count_text"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=shortcut_content_btn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    const-string/jumbo v1, "style_record_dialog_confirm_btn_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    const-string/jumbo v1, "style_popupWondow_content_text"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=popupWondow_content_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    const-string/jumbo v1, "style_offline_fail_speech_case"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    const-string/jumbo v1, "style_offline_fail_content"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    const-string/jumbo v1, "style_offline_usage_tip"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    const-string/jumbo v1, "style_offline_speech_case_title"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    const-string/jumbo v1, "style_weather_big_float_title"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    const-string/jumbo v1, "style_weather_big_float_content"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=weather_big_float_content_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    const-string/jumbo v1, "style_weather_big_float_weather"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    const-string/jumbo v1, "style_weather_big_float_temperature"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    const-string/jumbo v1, "style_weather_big_float_more_btn"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    const-string/jumbo v1, "style_schedule_permission_content"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=weather_big_float_content_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    const-string/jumbo v1, "dial_specific_broadcast_tip"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=dial_specific_broadcast_tip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    const-string/jumbo v1, "style_translate_mode_switch_btn_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    const-string/jumbo v1, "schedule_speech_add_guide_tip"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const-string/jumbo v1, "schedule_tone_setting_title"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=schedule_tone_setting_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    const-string/jumbo v1, "schedule_tone_setting_content"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=color_standard_c1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const-string/jumbo v1, "dial_specific_broadcast_tip"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=dial_specific_broadcast_tip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string/jumbo v1, "style_dialog_cancle_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    const-string/jumbo v1, "style_dialog_cancle_text_new"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=color_standard_c1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    const-string/jumbo v1, "style_dialog_confirm_text_new"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=color_standard_c5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const-string/jumbo v1, "style_dialog_delete_text_new"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=color_standard_c7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string/jumbo v1, "style_dialog_content_text_new"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=color_standard_c1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const-string/jumbo v1, "style_dialog_content_text"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const-string/jumbo v1, "style_dialog_title_text"

    const-string/jumbo v2, "TEXT_SIZE=19|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    const-string/jumbo v1, "style_dialog_title_text_new"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    const-string/jumbo v1, "style_dialog_content_text_new"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const-string/jumbo v1, "style_dialog_content_checkbox_tips"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=dlg_checkbox_tips"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    const-string/jumbo v1, "style_dialog_positive_button_text"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=dlg_positive_button_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    const-string/jumbo v1, "style_dialog_negative_button_text"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    const-string/jumbo v1, "style_dialog_neutral_button_text"

    const-string/jumbo v2, "TEXT_SIZE=17|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    const-string/jumbo v1, "style_plugin_download_size_info"

    const-string/jumbo v2, "TEXT_SIZE=13|TEXT_COLOR=dlg_download_size_info"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    const-string/jumbo v1, "style_item_content_input"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-string/jumbo v1, "style_item_role_name"

    const-string/jumbo v2, "TEXT_SIZE=12|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const-string/jumbo v1, "style_item_finish_btn"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    const-string/jumbo v1, "style_item_synthesis_tip"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=white"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    const-string/jumbo v1, "style_refresh_tip"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=update_tip_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    const-string/jumbo v1, "style_shedule_dialog_title"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=color_standard_c1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    const-string/jumbo v1, "style_shedule_dialog_des"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=color_standard_c2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    const-string/jumbo v1, "style_shedule_dialog_notitle_des"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=color_standard_c1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    const-string/jumbo v1, "style_shedule_dialog_button_cancel"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=color_standard_c2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    const-string/jumbo v1, "style_shedule_dialog_button_confrim"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=color_standard_c5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    const-string/jumbo v1, "style_shedule_dialog_button_delete"

    const-string/jumbo v2, "TEXT_SIZE=16|TEXT_COLOR=color_standard_c7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    const-string/jumbo v1, "style_share_select_desc"

    const-string/jumbo v2, "TEXT_SIZE=14|TEXT_COLOR=white_extra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    const-string/jumbo v1, "style_share_select_title"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=share_select_title_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    return-object v0
.end method

.method public styles800()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1232
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "sytly_hold_mic_dialog_top_text"

    const-string/jumbo v2, "TEXT_SIZE=20|TEXT_COLOR=sytly_hold_mic_dialog_top_text_color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    const-string/jumbo v1, "style_custom_dialog_title"

    const-string/jumbo v2, "TEXT_SIZE=20|TEXT_COLOR=authentication_dilog_title_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    const-string/jumbo v1, "style_custom_dialog_message"

    const-string/jumbo v2, "TEXT_SIZE=18|TEXT_COLOR=authentication_dilog_message_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    const-string/jumbo v1, "style_custom_dialog_button"

    const-string/jumbo v2, "TEXT_SIZE=22|TEXT_COLOR=authentication_dilog_button_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    return-object v0
.end method

.method public theme()Ljava/util/Properties;
    .locals 3

    .prologue
    .line 1643
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1644
    .local v0, "properties":Ljava/util/Properties;
    const-string/jumbo v1, "PLATFORM"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    const-string/jumbo v1, "NAME"

    const-string/jumbo v2, "\u6a21\u5f0f\u878d\u5408\u65b0\u7248"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    const-string/jumbo v1, "AUTHOR"

    const-string/jumbo v2, "iFlytek"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    const-string/jumbo v1, "VERSION"

    const-string/jumbo v2, "3.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    const-string/jumbo v1, "PREVIEW"

    const-string/jumbo v2, "preview.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    const-string/jumbo v1, "DESCRIPTION"

    const-string/jumbo v2, "\u6a21\u5f0f\u878d\u5408\u65b0\u7248\u76ae\u80a4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    const-string/jumbo v1, "DEFAULT_RESOLUTION"

    const-string/jumbo v2, "720"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    return-object v0
.end method
