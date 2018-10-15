.class public final Lqe;
.super Ljava/lang/Object;
.source "Enviroment.java"


# static fields
.field private static a:Lorg/apache/http/HttpHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lqe;->a:Lorg/apache/http/HttpHost;

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    new-instance v0, Lcom/iflytek/yd/system/ConnectionManager;

    invoke-direct {v0, p0}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "conMgr":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v1

    return v1
.end method
