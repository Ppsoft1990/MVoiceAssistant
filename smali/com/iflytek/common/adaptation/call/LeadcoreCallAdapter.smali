.class public Lcom/iflytek/common/adaptation/call/LeadcoreCallAdapter;
.super Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;
.source "LeadcoreCallAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LeadcoreCallAdapter"


# instance fields
.field private final Link_ID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 17
    const-string/jumbo v0, "linkID"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/LeadcoreCallAdapter;->Link_ID:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public endCall(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 44
    iget-object v5, p0, Lcom/iflytek/common/adaptation/call/LeadcoreCallAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    .line 45
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 46
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .line 48
    .local v2, "mTelephony":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    const-class v5, Landroid/telephony/TelephonyManager;

    const-string/jumbo v6, "getITelephony"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 50
    .local v3, "mdGetITelephony":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    move-object v2, v0

    .line 52
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v3    # "mdGetITelephony":Ljava/lang/reflect/Method;
    :goto_0
    iget-object v5, p0, Lcom/iflytek/common/adaptation/call/LeadcoreCallAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v5}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    invoke-virtual {p0, v2, v8}, Lcom/iflytek/common/adaptation/call/LeadcoreCallAdapter;->endCallByPhoneId(Lcom/android/internal/telephony/ITelephony;I)V

    .line 59
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/iflytek/common/adaptation/call/LeadcoreCallAdapter;->endCallByPhoneId(Lcom/android/internal/telephony/ITelephony;I)V

    .line 61
    :cond_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "LeadcoreCallAdapter"

    const-string/jumbo v6, "endCall"

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public endCallByPhoneId(Lcom/android/internal/telephony/ITelephony;I)V
    .locals 7
    .param p1, "iTelephony"    # Lcom/android/internal/telephony/ITelephony;
    .param p2, "phoneId"    # I

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 70
    .local v1, "endcall":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "endCallMSMS"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 71
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 72
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LeadcoreCallAdapter"

    const-string/jumbo v3, "endCallByPhoneId"

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;->getDialCallIntent(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iflytek/common/adaptation/call/LeadcoreCallAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    invoke-interface {v2}, Lcom/iflytek/common/adaptation/ISimInfoAdaptation;->isDoubleCard()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    .local v1, "phoneId":I
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v2, :cond_1

    .line 35
    const/4 v1, 0x1

    .line 38
    :cond_1
    const-string/jumbo v2, "linkID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
