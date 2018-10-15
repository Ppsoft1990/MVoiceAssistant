.class public Lcom/iflytek/base/mms/MmsReceiver;
.super Lcom/iflytek/viafly/AbsBroadcastReceiver;
.source "MmsReceiver.java"


# instance fields
.field private a:Laqk;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/iflytek/viafly/AbsBroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v2, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    if-nez v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-object v1

    .line 119
    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/base/mms/MmsReceiver;->a()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/iflytek/common/adaptation/detect/DetectType;->TYPE_AUTO:Lcom/iflytek/common/adaptation/detect/DetectType;

    .line 120
    invoke-virtual {v2}, Lcom/iflytek/common/adaptation/detect/DetectType;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    invoke-interface {v3}, Laqk;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    invoke-interface {v2, p1}, Laqk;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MmsReceiver"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "model":Ljava/lang/String;
    sget-object v1, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->A378t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const/4 v1, 0x1

    .line 142
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    if-nez v4, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v3

    .line 155
    :cond_1
    const/4 v0, 0x0

    .line 157
    .local v0, "actions":[Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    invoke-interface {v4}, Laqk;->e()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_1
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 162
    array-length v5, v0

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 163
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 164
    const/4 v3, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MmsReceiver"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private b()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    if-nez v4, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v2

    .line 187
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    const-string/jumbo v5, "com.iflytek.cmccIFLY_AUTO_SMS_RECEIVE"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Laqk;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    .line 189
    invoke-interface {v4}, Laqk;->a()Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 190
    goto :goto_0

    .line 193
    :cond_2
    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    const-string/jumbo v5, "com.iflytek.cmccIFLY_CMCC_MAIL_READ_SWITCH"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Laqk;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 195
    goto :goto_0

    .line 198
    :cond_3
    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    const-string/jumbo v5, "com.iflytek.cmccIFLY_IS_TELEPHONE_BILL_SMS_COLLECTED"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Laqk;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    const-string/jumbo v5, "com.iflytek.cmccIFLY_IS_DATE_FLOW_SMS_COLLECTED"

    const/4 v6, 0x0

    .line 199
    invoke-interface {v4, v5, v6}, Laqk;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    .line 201
    invoke-interface {v4}, Laqk;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 202
    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MmsReceiver"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_BIND_PROCESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/iflytek/base/mms/MmsReceiver;->b:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v3, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    if-nez v3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v2

    .line 226
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    const-string/jumbo v4, "com.iflytek.cmcc.USING_ADAPT_PLUGIN"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Laqk;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    const/4 v2, 0x1

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MmsReceiver"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_BIND_PROCESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/iflytek/base/mms/MmsReceiver;->b:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public a(Laqk;)V
    .locals 0
    .param p1, "processBinder"    # Laqk;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    .line 112
    return-void
.end method

.method public onReceiveHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 36
    :cond_0
    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    if-eqz v4, :cond_1

    .line 38
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    const-string/jumbo v5, "MmsReceiver"

    const-string/jumbo v6, "onReceiveHandle intent null"

    invoke-interface {v4, v5, v6}, Laqk;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    if-eqz v4, :cond_3

    .line 49
    :try_start_1
    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    const-string/jumbo v5, "MmsReceiver"

    .line 50
    invoke-static {p2}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->getAndPrintIntentExtrasString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-interface {v4, v5, v6}, Laqk;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 56
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "MmsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Lcom/iflytek/base/mms/MmsReceiver;->b:Landroid/content/Context;

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/iflytek/base/mms/MmsReceiver;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 61
    invoke-direct {p0}, Lcom/iflytek/base/mms/MmsReceiver;->b()Z

    move-result v4

    if-nez v4, :cond_4

    .line 62
    const-string/jumbo v4, "MmsReceiver"

    const-string/jumbo v5, "onReceive | not sms notify state,isNeedShowSms:false"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    if-eqz v4, :cond_1

    .line 65
    :try_start_2
    iget-object v4, p0, Lcom/iflytek/base/mms/MmsReceiver;->a:Laqk;

    const-string/jumbo v5, "MmsReceiver"

    const-string/jumbo v6, "onReceive | not sms notify state"

    invoke-interface {v4, v5, v6}, Laqk;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 67
    :catch_1
    move-exception v1

    .line 68
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 52
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MmsReceiver"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 74
    .local v3, "sdk":I
    const/16 v4, 0x13

    if-lt v3, v4, :cond_5

    .line 76
    const-string/jumbo v4, "MmsReceiver"

    const-string/jumbo v5, "android 4.4 \u975edefault sms\u4e0d\u80fd\u63d2\u5165\u77ed\u4fe1\u6570\u636e\u5e93"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_5
    invoke-direct {p0}, Lcom/iflytek/base/mms/MmsReceiver;->c()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 82
    const-string/jumbo v4, "MmsReceiver"

    const-string/jumbo v5, "onReceive | adapt plugin is used, return"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 86
    :cond_6
    invoke-direct {p0, p2}, Lcom/iflytek/base/mms/MmsReceiver;->a(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v2

    .line 87
    .local v2, "receiveUri":Landroid/net/Uri;
    const-string/jumbo v4, "MmsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceiveHandle | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 90
    invoke-static {p2}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->getAndPrintIntentExtrasString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eqz v2, :cond_7

    .line 92
    const-string/jumbo v4, "MmsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "messageUri is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 94
    const-string/jumbo v4, "com.iflytek.cmcc.RECEIVE_SMS"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-class v4, Lcom/iflytek/base/mms/SmsService;

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    invoke-virtual {p0}, Lcom/iflytek/base/mms/MmsReceiver;->abortBroadcast()V

    goto/16 :goto_0

    .line 99
    :cond_7
    const-string/jumbo v4, "MmsReceiver"

    const-string/jumbo v5, "onReceiveHandle | filter sms failed"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string/jumbo v4, "com.iflytek.cmcc.FILTER_SMS_FAILED"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-class v4, Lcom/iflytek/base/mms/SmsService;

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 105
    .end local v2    # "receiveUri":Landroid/net/Uri;
    .end local v3    # "sdk":I
    :cond_8
    const-class v4, Lcom/iflytek/base/mms/SmsService;

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
