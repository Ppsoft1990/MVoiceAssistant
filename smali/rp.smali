.class public final Lrp;
.super Ljava/lang/Object;
.source "LmsUtil.java"


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/Intent;)Lcom/iflytek/framework/lms/LmsCallInfo;
    .locals 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 16
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-object v2

    .line 20
    :cond_1
    const-string/jumbo v4, "com.iflytek.lms.key.apppackage"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "com.iflytek.lms.key.versionname"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "versionName":Ljava/lang/String;
    const-string/jumbo v4, "com.iflytek.lms.key.appkey"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "appKey":Ljava/lang/String;
    const-string/jumbo v4, "com.iflytek.lms.lxtelsdkmanager"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    new-instance v2, Lcom/iflytek/framework/lms/LmsCallInfo;

    invoke-direct {v2, p0}, Lcom/iflytek/framework/lms/LmsCallInfo;-><init>(Ljava/lang/String;)V

    .line 26
    .local v2, "telLmsCallInfo":Lcom/iflytek/framework/lms/LmsCallInfo;
    invoke-virtual {v2, v0}, Lcom/iflytek/framework/lms/LmsCallInfo;->setAppkey(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, v3}, Lcom/iflytek/framework/lms/LmsCallInfo;->setAppVersionName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2, v1}, Lcom/iflytek/framework/lms/LmsCallInfo;->setAppPackageName(Ljava/lang/String;)V

    goto :goto_0
.end method
