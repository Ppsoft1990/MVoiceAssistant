.class public Lcom/cmcc/migusso/ssoutil/UemUtils;
.super Ljava/lang/Object;
.source "UemUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;,
        Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;,
        Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;,
        Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "OK"

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils;->a:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/cmcc/migusso/ssoutil/UemUtils;->b:I

    sput-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils;->c:Ljava/lang/String;

    sput-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "auth_phone_num"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "action_start_time"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "action_end_time"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "action_result_code"

    invoke-static {p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "action_result_intro"

    invoke-interface {v0, v1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ac_get_result"

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "et_00003"

    invoke-static {v1, v0, p0}, Lcom/migu/uem/statistics/event/EventAction;->onEvent(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method

.method public static actionEnd(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x1

    const v6, 0x18e70

    if-eqz p1, :cond_1

    const-string/jumbo v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils;->c:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "resultCode"

    invoke-virtual {p1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/cmcc/migusso/ssoutil/UemUtils;->b:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    sput v9, Lcom/cmcc/migusso/ssoutil/UemUtils;->b:I

    sput-object v10, Lcom/cmcc/migusso/ssoutil/UemUtils;->c:Ljava/lang/String;

    sput-object v10, Lcom/cmcc/migusso/ssoutil/UemUtils;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    return-void

    :pswitch_1
    sget-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/migu/uem/statistics/other/ULoginType;->USER_NAME:Lcom/migu/uem/statistics/other/ULoginType;

    const-string/jumbo v3, "UnionSDK-20AndriodV3.3.3"

    invoke-static {v0, v1, v2, v3}, Lcom/migu/uem/statistics/other/AuthAgent;->authInfoChange(Landroid/content/Context;Ljava/lang/String;Lcom/migu/uem/statistics/other/ULoginType;Ljava/lang/String;)V

    sget-object v2, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->AUTOLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    sget-object v3, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->ACCOUNTLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    sget-wide v4, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionLogin(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;JJLorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/migu/uem/statistics/other/ULoginType;->USER_NAME:Lcom/migu/uem/statistics/other/ULoginType;

    const-string/jumbo v3, "UnionSDK-20AndriodV3.3.3"

    invoke-static {v0, v1, v2, v3}, Lcom/migu/uem/statistics/other/AuthAgent;->authInfoChange(Landroid/content/Context;Ljava/lang/String;Lcom/migu/uem/statistics/other/ULoginType;Ljava/lang/String;)V

    sget-object v2, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->ACCOUNTLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    sget-object v3, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->ACCOUNTLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    sget-wide v4, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionLogin(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;JJLorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/migu/uem/statistics/other/ULoginType;->PHONE:Lcom/migu/uem/statistics/other/ULoginType;

    const-string/jumbo v3, "UnionSDK-20AndriodV3.3.3"

    invoke-static {v0, v1, v2, v3}, Lcom/migu/uem/statistics/other/AuthAgent;->authInfoChange(Landroid/content/Context;Ljava/lang/String;Lcom/migu/uem/statistics/other/ULoginType;Ljava/lang/String;)V

    sget-object v2, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->SMSLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    sget-object v3, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->ACCOUNTLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    sget-wide v4, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionLogin(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;JJLorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/migu/uem/statistics/other/ULoginType;->THIRD_ACCOUNT:Lcom/migu/uem/statistics/other/ULoginType;

    const-string/jumbo v3, "UnionSDK-20AndriodV3.3.3"

    invoke-static {v0, v1, v2, v3}, Lcom/migu/uem/statistics/other/AuthAgent;->authInfoChange(Landroid/content/Context;Ljava/lang/String;Lcom/migu/uem/statistics/other/ULoginType;Ljava/lang/String;)V

    const-string/jumbo v0, "QQ"

    sget-object v2, Lcom/cmcc/migusso/ssoutil/UemUtils;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->THIRDLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    sget-object v3, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->QQ:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    sget-wide v4, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionLogin(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;JJLorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "WECHAT"

    sget-object v2, Lcom/cmcc/migusso/ssoutil/UemUtils;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v2, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->THIRDLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    sget-object v3, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->WECHAT:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    sget-wide v4, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionLogin(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;JJLorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "WEIBO"

    sget-object v2, Lcom/cmcc/migusso/ssoutil/UemUtils;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v2, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->THIRDLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    sget-object v3, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->WEIBO:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    sget-wide v4, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionLogin(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;JJLorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "ALIPAY"

    sget-object v2, Lcom/cmcc/migusso/ssoutil/UemUtils;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->THIRDLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    sget-object v3, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->ZHIFUBAO:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    sget-wide v4, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionLogin(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;JJLorg/json/JSONObject;)V

    goto/16 :goto_0

    :pswitch_5
    sget-wide v2, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-ne v0, v6, :cond_5

    const/4 v6, 0x0

    :goto_1
    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionRegister(Landroid/content/Context;Ljava/lang/String;JJILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    :pswitch_6
    if-ne v0, v6, :cond_6

    sget-wide v2, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->SUCCESS:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->SUCCESS:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    sget-object v8, Lcom/cmcc/migusso/ssoutil/UemUtils;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget-wide v2, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    if-ne v0, v6, :cond_7

    sget-wide v2, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->SUCCESS:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->SUCCESS:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    sget-object v8, Lcom/cmcc/migusso/ssoutil/UemUtils;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-wide v2, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static actionLogin(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;JJLorg/json/JSONObject;)V
    .locals 6

    const v4, 0x18e70

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez p8, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "resultCode"

    const/4 v2, -0x1

    invoke-virtual {p8, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, ""

    const-string/jumbo v3, "resultCode"

    invoke-virtual {p8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    sget-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils;->a:Ljava/lang/String;

    :goto_2
    const-string/jumbo v3, "login_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "action_start_time"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "action_end_time"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "action_result_code"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "action_result_intro"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "login_account"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "logion_account_type"

    invoke-virtual {p3}, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "et_00001"

    invoke-static {v0, v1, p0}, Lcom/migu/uem/statistics/event/EventAction;->onEvent(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "resultString"

    invoke-virtual {p8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2
.end method

.method public static actionRegister(Landroid/content/Context;Ljava/lang/String;JJILjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "reg_phone_num"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "action_start_time"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "action_end_time"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "action_result_code"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "action_result_intro"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "et_00002"

    invoke-static {v1, v0, p0}, Lcom/migu/uem/statistics/event/EventAction;->onEvent(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method

.method public static actionStart(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    sput p0, Lcom/cmcc/migusso/ssoutil/UemUtils;->b:I

    sput-object p1, Lcom/cmcc/migusso/ssoutil/UemUtils;->c:Ljava/lang/String;

    sput-object p2, Lcom/cmcc/migusso/ssoutil/UemUtils;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/cmcc/migusso/ssoutil/UemUtils;->e:J

    return-void
.end method
