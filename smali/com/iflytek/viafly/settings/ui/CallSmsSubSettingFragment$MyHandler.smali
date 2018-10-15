.class public Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;
.super Landroid/os/Handler;
.source "CallSmsSubSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHandler"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 2170
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2171
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 2172
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .line 2177
    .local v12, "theActivity":Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    if-nez v12, :cond_1

    .line 2464
    :cond_0
    :goto_0
    return-void

    .line 2181
    :cond_1
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$1600(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2184
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    .line 2186
    :pswitch_0
    const-string/jumbo v13, "CallSmsSubSettingFragment"

    const-string/jumbo v14, "mhandle refresh listview"

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    invoke-virtual {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 2189
    .local v5, "context":Landroid/content/Context;
    if-eqz v5, :cond_0

    .line 2190
    invoke-static {v12, v5}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$1700(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Landroid/content/Context;)V

    .line 2191
    invoke-virtual {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->notifyDataSetChanged()V

    goto :goto_0

    .line 2195
    .end local v5    # "context":Landroid/content/Context;
    :pswitch_1
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$1300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 2196
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$1300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    goto :goto_0

    .line 2200
    :pswitch_2
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$1800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    .line 2201
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$1900(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    .line 2203
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {v13, v14}, Lil;->c(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 2205
    const-string/jumbo v13, "CallSmsSubSettingFragment"

    const-string/jumbo v14, "\u6e05\u9664\u901a\u77e5\u680f--------------"

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$2000(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    .line 2206
    invoke-static {v13}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmcc.CANCEL_CALL_NOTIFY_ACTION"

    .line 2207
    invoke-virtual {v13, v14}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 2212
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2213
    .local v6, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v13, "d_operation"

    const-string/jumbo v14, "close"

    invoke-virtual {v6, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$2100(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v13

    const-string/jumbo v14, "FT90116"

    invoke-virtual {v13, v14, v6}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2218
    .end local v6    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    invoke-static {}, Lagm;->e()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2224
    new-instance v1, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2225
    invoke-virtual {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2226
    .local v1, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const-string/jumbo v13, "\u63d0\u793a"

    invoke-virtual {v1, v13}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2227
    const-string/jumbo v13, "\u56e0\u4e3a\u7cfb\u7edf\u53ca\u673a\u578b\u9650\u5236\uff0c\u53ef\u80fd\u65e0\u6cd5\u6b63\u5e38\u64ad\u62a5\u3002\u5982\u679c\u51fa\u73b0\u8be5\u60c5\u51b5\uff0c\u8bf7\u5173\u95ed\u6b64\u529f\u80fd\u3002\n\u7ee7\u7eed\u542f\u7528\uff1f"

    invoke-virtual {v1, v13}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2231
    const-string/jumbo v13, "\u53d6\u6d88"

    new-instance v14, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$1;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v1, v13, v14}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2240
    const-string/jumbo v13, "\u542f\u7528"

    new-instance v14, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v12, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$2;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v1, v13, v14}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2250
    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    goto/16 :goto_0

    .line 2256
    .end local v1    # "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    :cond_3
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$2200(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    goto/16 :goto_0

    .line 2261
    :pswitch_4
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$2300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    .line 2262
    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$2400(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Z)V

    .line 2264
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$2500(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "CALL_NOTIFY"

    const/4 v15, 0x0

    .line 2263
    invoke-static {v13, v14, v15}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2266
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {v13, v14}, Lil;->c(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 2268
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$2600(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmcc.CANCEL_CALL_NOTIFY_ACTION"

    .line 2269
    invoke-virtual {v13, v14}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 2273
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2274
    .local v3, "callBroadcastParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v13, "d_operation"

    const-string/jumbo v14, "close"

    invoke-virtual {v3, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2275
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$2700(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v13

    const-string/jumbo v14, "FT90117"

    invoke-virtual {v13, v14, v3}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2280
    .end local v3    # "callBroadcastParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_5
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$2300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    .line 2281
    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$2400(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Z)V

    .line 2282
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$2800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    .line 2284
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$2900(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "CALL_NOTIFY"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2286
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3000(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmcc.CALL_NOTIFY_ACTION"

    invoke-virtual {v13, v14}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 2288
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lil;->a(Ljava/lang/String;Z)V

    .line 2291
    const/4 v4, 0x3

    .line 2293
    .local v4, "callSetting":I
    invoke-static {}, Lagm;->b()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2294
    const/4 v4, 0x4

    .line 2296
    :cond_5
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v13

    const-string/jumbo v14, "FD01022"

    const-string/jumbo v15, "tss_icc_appear"

    .line 2297
    invoke-virtual {v13, v14, v15, v4}, Labu;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2303
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2304
    .local v2, "callBroadcastParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v13, "d_operation"

    const-string/jumbo v14, "open"

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2305
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3100(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v13

    const-string/jumbo v14, "FT90117"

    invoke-virtual {v13, v14, v2}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2309
    .end local v2    # "callBroadcastParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "callSetting":I
    :pswitch_6
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3200(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_AUTO_SMS_RECEIVE"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    .line 2312
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lhp;->b(Lhm;)V

    .line 2313
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    .line 2315
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {v13, v14}, Lil;->c(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 2317
    const-string/jumbo v13, "CallSmsSubSettingFragment"

    const-string/jumbo v14, "\u6e05\u9664\u901a\u77e5\u680f--------------"

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3400(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    .line 2318
    invoke-static {v13}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmcc.CANCEL_SMS_NOTIFY_ACTION"

    .line 2319
    invoke-virtual {v13, v14}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 2325
    :cond_6
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2326
    .local v10, "smsParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v13, "d_operation"

    const-string/jumbo v14, "close"

    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3500(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v13

    const-string/jumbo v14, "FT90122"

    invoke-virtual {v13, v14, v10}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2331
    .end local v10    # "smsParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_7
    invoke-static {}, Lagm;->f()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2335
    new-instance v1, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2336
    invoke-virtual {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2337
    .restart local v1    # "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const-string/jumbo v13, "\u63d0\u793a"

    invoke-virtual {v1, v13}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2338
    const-string/jumbo v13, "\u56e0\u4e3a\u7cfb\u7edf\u53ca\u673a\u578b\u9650\u5236\uff0c\u53ef\u80fd\u65e0\u6cd5\u6b63\u5e38\u64ad\u62a5\u3002\u5982\u679c\u51fa\u73b0\u8be5\u60c5\u51b5\uff0c\u8bf7\u5173\u95ed\u6b64\u529f\u80fd\u3002\n\u7ee7\u7eed\u542f\u7528\uff1f"

    invoke-virtual {v1, v13}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2343
    const-string/jumbo v13, "\u53d6\u6d88"

    new-instance v14, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$3;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v1, v13, v14}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2351
    const-string/jumbo v13, "\u542f\u7528"

    new-instance v14, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v12, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$4;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v1, v13, v14}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2360
    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    goto/16 :goto_0

    .line 2365
    .end local v1    # "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    :cond_7
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3600(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    goto/16 :goto_0

    .line 2369
    :pswitch_8
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3700(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    .line 2371
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 2372
    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3900(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Z)V

    .line 2373
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$4000(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "SMS_NOTIFY"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2375
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {v13, v14}, Lil;->c(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 2377
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$4100(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmcc.CANCEL_SMS_NOTIFY_ACTION"

    invoke-virtual {v13, v14}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 2382
    :cond_8
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2383
    .local v8, "smsBroadcastParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v13, "d_operation"

    const-string/jumbo v14, "close"

    invoke-virtual {v8, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$4200(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v13

    const-string/jumbo v14, "FT90123"

    invoke-virtual {v13, v14, v8}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2388
    .end local v8    # "smsBroadcastParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_9
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3700(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    .line 2390
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 2391
    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$3900(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Z)V

    .line 2392
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$2800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    .line 2394
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$4300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "SMS_NOTIFY"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2396
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$4400(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmcc.SMS_NOTIFY_ACTION"

    invoke-virtual {v13, v14}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 2398
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lil;->a(Ljava/lang/String;Z)V

    .line 2401
    const/4 v11, 0x1

    .line 2403
    .local v11, "smsSetting":I
    invoke-static {}, Lagm;->c()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2404
    const/4 v11, 0x2

    .line 2406
    :cond_9
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v13

    const-string/jumbo v14, "FD01022"

    const-string/jumbo v15, "tss_icc_appear"

    .line 2407
    invoke-virtual {v13, v14, v15, v11}, Labu;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2412
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2413
    .local v9, "smsBroadcastParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v13, "d_operation"

    const-string/jumbo v14, "open"

    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$4500(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v13

    const-string/jumbo v14, "FT90123"

    invoke-virtual {v13, v14, v9}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2418
    .end local v9    # "smsBroadcastParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "smsSetting":I
    :pswitch_a
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$4600(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    goto/16 :goto_0

    .line 2421
    :pswitch_b
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$4700(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    goto/16 :goto_0

    .line 2425
    :pswitch_c
    invoke-static {}, Lagm;->e()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2426
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_CALL_NEED_REMIND"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v7

    .line 2427
    .local v7, "needRemind":Z
    if-eqz v7, :cond_a

    .line 2428
    new-instance v1, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-virtual {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2429
    .local v1, "builder":Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    const-string/jumbo v13, "\u63d0\u793a"

    invoke-virtual {v1, v13}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 2430
    const-string/jumbo v13, "\u56e0\u4e3a\u7cfb\u7edf\u53ca\u673a\u578b\u9650\u5236\uff0c\u53ef\u80fd\u65e0\u6cd5\u6b63\u5e38\u64ad\u62a5\u3002\u5982\u679c\u51fa\u73b0\u8be5\u60c5\u51b5\uff0c\u8bf7\u5173\u95ed\u6b64\u529f\u80fd\u3002\n\u7ee7\u7eed\u542f\u7528\uff1f"

    invoke-virtual {v1, v13}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 2431
    const-string/jumbo v13, "\u4e0d\u518d\u63d0\u793a"

    invoke-virtual {v1, v13}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setCheckboxTips(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 2432
    const-string/jumbo v13, "com.iflytek.cmccIFLY_CALL_NEED_REMIND"

    invoke-virtual {v1, v13}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setCheckBoxSetting(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 2434
    const-string/jumbo v13, "\u53d6\u6d88"

    new-instance v14, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$5;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V

    invoke-virtual {v1, v13, v14}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 2442
    const-string/jumbo v13, "\u542f\u7528"

    new-instance v14, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1, v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler$6;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    invoke-virtual {v1, v13, v14}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 2451
    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    goto/16 :goto_0

    .line 2453
    .end local v1    # "builder":Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    :cond_a
    invoke-virtual {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->startPlay()V

    .line 2454
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$4800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    goto/16 :goto_0

    .line 2457
    .end local v7    # "needRemind":Z
    :cond_b
    invoke-virtual {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->startPlay()V

    .line 2458
    invoke-static {v12}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$4800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    goto/16 :goto_0

    .line 2184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
