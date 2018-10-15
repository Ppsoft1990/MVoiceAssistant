.class public Lcom/iflytek/blc/getconfig/GetConfigProxy;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel()V
    .locals 1

    sget v0, Lcom/iflytek/blc/getconfig/GetConfigProxy;->a:I

    if-eqz v0, :cond_0

    sget v0, Lcom/iflytek/blc/getconfig/GetConfigProxy;->a:I

    invoke-static {v0}, Lcom/iflytek/blc/getconfig/GetConfigProxy;->nativeCancel(I)V

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/blc/getconfig/GetConfigProxy;->a:I

    :cond_0
    return-void
.end method

.method public static native getAccessPoint()Ljava/lang/String;
.end method

.method public static native getAid()Ljava/lang/String;
.end method

.method public static native getDownfrom()Ljava/lang/String;
.end method

.method public static native getImei()Ljava/lang/String;
.end method

.method public static native getSid()Ljava/lang/String;
.end method

.method public static native getUid()Ljava/lang/String;
.end method

.method public static native getUserAgent()Ljava/lang/String;
.end method

.method public static native getUserId()Ljava/lang/String;
.end method

.method private static native nativeCancel(I)V
.end method

.method private static native nativeStart(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/getconfig/NativeGetConfigObserver;)I
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/getconfig/GetConfigObserver;)I
    .locals 1

    sget v0, Lcom/iflytek/blc/getconfig/GetConfigProxy;->a:I

    if-eqz v0, :cond_0

    sget v0, Lcom/iflytek/blc/getconfig/GetConfigProxy;->a:I

    invoke-static {v0}, Lcom/iflytek/blc/getconfig/GetConfigProxy;->nativeCancel(I)V

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/blc/getconfig/GetConfigProxy;->a:I

    :cond_0
    new-instance v0, Lcom/iflytek/blc/getconfig/GetConfigProxy$1;

    invoke-direct {v0, p2}, Lcom/iflytek/blc/getconfig/GetConfigProxy$1;-><init>(Lcom/iflytek/blc/getconfig/GetConfigObserver;)V

    invoke-static {p0, p1, v0}, Lcom/iflytek/blc/getconfig/GetConfigProxy;->nativeStart(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/getconfig/NativeGetConfigObserver;)I

    move-result v0

    sput v0, Lcom/iflytek/blc/getconfig/GetConfigProxy;->a:I

    return v0
.end method
