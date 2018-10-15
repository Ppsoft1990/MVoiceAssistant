.class public Lcom/iflytek/yd/http/factory/HttpRequestFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newDownloadRequestInstance(ILcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpDownload;
    .locals 1

    new-instance v0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;-><init>(ILcom/iflytek/yd/http/interfaces/HttpContext;)V

    return-object v0
.end method

.method public static newDownloadRequestInstance(JILcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpDownload;
    .locals 2

    new-instance v0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;-><init>(JILcom/iflytek/yd/http/interfaces/HttpContext;)V

    return-object v0
.end method

.method public static newSimpleRequestInstance(ILcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;
    .locals 1

    new-instance v0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;-><init>(ILcom/iflytek/yd/http/interfaces/HttpContext;)V

    return-object v0
.end method

.method public static newSimpleRequestInstance(IZLcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;
    .locals 1

    new-instance v0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;-><init>(IZLcom/iflytek/yd/http/interfaces/HttpContext;)V

    return-object v0
.end method

.method public static newSimpleRequestInstance(JILcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;
    .locals 2

    new-instance v0, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;-><init>(JILcom/iflytek/yd/http/interfaces/HttpContext;)V

    return-object v0
.end method

.method public static newSimpleRequestInstance(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;
    .locals 8

    new-instance v1, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;

    move-wide v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/yd/http/impl/HttpSimpleRequestImpl;-><init>(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)V

    return-object v1
.end method
