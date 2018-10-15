.class public final Lxv;
.super Ljava/lang/Object;
.source "OperationManagerFactory.java"


# direct methods
.method public static a(Lyn;Lcom/iflytek/yd/http/interfaces/HttpContext;Lcom/iflytek/yd/business/AppConfig;Ljava/lang/String;)Lyo;
    .locals 1
    .param p0, "listener"    # Lyn;
    .param p1, "context"    # Lcom/iflytek/yd/http/interfaces/HttpContext;
    .param p2, "appConfig"    # Lcom/iflytek/yd/business/AppConfig;
    .param p3, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 11
    new-instance v0, Lxx;

    invoke-direct {v0, p0, p1, p2, p3}, Lxx;-><init>(Lyn;Lcom/iflytek/yd/http/interfaces/HttpContext;Lcom/iflytek/yd/business/AppConfig;Ljava/lang/String;)V

    return-object v0
.end method
