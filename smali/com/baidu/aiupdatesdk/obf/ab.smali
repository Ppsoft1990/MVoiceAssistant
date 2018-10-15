.class public Lcom/baidu/aiupdatesdk/obf/ab;
.super Ljava/lang/Object;
.source "LogUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 13
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    if-eqz p0, :cond_0

    .line 35
    const-string/jumbo v0, "AIUpdateSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method
