.class public Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;
.super Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.source "CoolpadCallAdapter.java"


# instance fields
.field private final PHONE_ID_KEY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private phoneStateListener:Lcom/yulong/android/telephony/CPPhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 29
    const-class v0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->TAG:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "phoneIdKey"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->PHONE_ID_KEY:Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter$1;

    invoke-direct {v0, p0}, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter$1;-><init>(Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;)V

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->phoneStateListener:Lcom/yulong/android/telephony/CPPhoneStateListener;

    .line 35
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private endCallByPhoneId(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    .line 147
    iget-object v5, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    .line 148
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 150
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    const-class v5, Landroid/telephony/TelephonyManager;

    const-string/jumbo v6, "getITelephony"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 152
    .local v3, "mdGetITelephony":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ITelephony;

    .line 155
    .local v2, "mTelephony":Lcom/android/internal/telephony/ITelephony;
    const-class v5, Lcom/android/internal/telephony/ITelephony;

    const-string/jumbo v6, "endDualCall"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 157
    .local v1, "endDualCall":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v2, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1    # "endDualCall":Ljava/lang/reflect/Method;
    .end local v2    # "mTelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "mdGetITelephony":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerCoolpad9070PhoneStateListener(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    iget-object v6, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "registerCoolpad9070PhoneStateListener"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :try_start_0
    const-string/jumbo v6, "com.yulong.android.telephony.CPTelephonyManager"

    .line 70
    invoke-static {v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 72
    .local v1, "clsCPTelephonyManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    .line 73
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 74
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 76
    .local v3, "cpTelephonyManager":Ljava/lang/Object;
    const-string/jumbo v6, "com.yulong.android.telephony.CPPhoneStateListener"

    .line 77
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    .local v0, "clsCPPhoneStateListener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "listenDual"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 82
    .local v5, "listenDual":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->phoneStateListener:Lcom/yulong/android/telephony/CPPhoneStateListener;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x20

    .line 83
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 82
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v6, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "registerCoolpad9070PhoneStateListener | success"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "clsCPPhoneStateListener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clsCPTelephonyManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "cpTelephonyManager":Ljava/lang/Object;
    .end local v5    # "listenDual":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v4

    .line 86
    .local v4, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    return-void
.end method


# virtual methods
.method public detect()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 198
    :try_start_0
    const-string/jumbo v6, "com.yulong.android.telephony.CPTelephonyManager"

    invoke-static {v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 199
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    .line 200
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 201
    .local v2, "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->mContext:Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 202
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 208
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return v4

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "detect"

    invoke-static {v4, v6, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move v4, v5

    .line 208
    goto :goto_0
.end method

.method public endCall(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 141
    const-string/jumbo v1, "phoneIdKey"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "endCall | phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->endCallByPhoneId(I)V

    .line 144
    return-void
.end method

.method public filterPhoneStateChangeReceiver(Landroid/content/Intent;)Lgy;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 170
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v1, v3

    .line 191
    :goto_0
    return-object v1

    .line 174
    :cond_1
    const/4 v1, 0x0

    .line 175
    .local v1, "callIntent":Lgy;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.DUAL_PHONE_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 177
    new-instance v1, Lgy;

    .end local v1    # "callIntent":Lgy;
    invoke-direct {v1}, Lgy;-><init>()V

    .line 178
    .restart local v1    # "callIntent":Lgy;
    iput-object v0, v1, Lgy;->a:Ljava/lang/String;

    .line 179
    const-string/jumbo v3, "incoming_number"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lgy;->b:Ljava/lang/String;

    .line 180
    const-string/jumbo v3, "state"

    .line 181
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lgy;->c:Ljava/lang/String;

    .line 182
    const-string/jumbo v3, "phoneIdKey"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 183
    .local v2, "phoneIdKey":I
    if-ne v2, v5, :cond_2

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    :goto_1
    iput-object v3, v1, Lgy;->d:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    goto :goto_1

    .line 187
    .end local v2    # "phoneIdKey":I
    :cond_3
    const-string/jumbo v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 189
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->filterPhoneStateChangeReceiver(Landroid/content/Intent;)Lgy;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v3

    .line 191
    goto :goto_0
.end method

.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "netmode"

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "nettype1"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    return-object v0

    .line 54
    :cond_0
    const-string/jumbo v1, "nettype2"

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->setContext(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 41
    return-void
.end method
