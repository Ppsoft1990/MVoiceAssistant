.class public Lcom/baidu/aiupdatesdk/AIUpdateSDK;
.super Ljava/lang/Object;
.source "AIUpdateSDK.java"


# static fields
.field public static final RESULT_CODE_ERROR_UNKNOWN:I = -0x80000000

.field public static final RESULT_CODE_NET_ERROR:I = -0x1

.field public static final RESULT_CODE_OK:I = 0x0

.field public static final RESULT_CODE_PARSE_ERROR:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateCheck(Landroid/content/Context;Lcom/baidu/aiupdatesdk/CheckUpdateCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/baidu/aiupdatesdk/CheckUpdateCallback;

    .prologue
    .line 36
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/h;

    invoke-direct {v0}, Lcom/baidu/aiupdatesdk/obf/h;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/baidu/aiupdatesdk/obf/h;->a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/CheckUpdateCallback;)V

    .line 37
    return-void
.end method

.method public static updateDownload(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/h;

    invoke-direct {v0}, Lcom/baidu/aiupdatesdk/obf/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/baidu/aiupdatesdk/obf/h;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method
