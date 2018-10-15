.class public Lcom/iflytek/blc/version/VersionProxy;
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

    sget v0, Lcom/iflytek/blc/version/VersionProxy;->a:I

    if-eqz v0, :cond_0

    sget v0, Lcom/iflytek/blc/version/VersionProxy;->a:I

    invoke-static {v0}, Lcom/iflytek/blc/version/VersionProxy;->nativeCancel(I)V

    :cond_0
    return-void
.end method

.method private static native nativeCancel(I)V
.end method

.method private static native nativeStart(Lcom/iflytek/blc/version/VersionObserver;Z)I
.end method

.method public static start(Lcom/iflytek/blc/version/VersionObserver;Z)I
    .locals 1

    sget v0, Lcom/iflytek/blc/version/VersionProxy;->a:I

    if-eqz v0, :cond_0

    sget v0, Lcom/iflytek/blc/version/VersionProxy;->a:I

    invoke-static {v0}, Lcom/iflytek/blc/version/VersionProxy;->nativeCancel(I)V

    :cond_0
    invoke-static {p0, p1}, Lcom/iflytek/blc/version/VersionProxy;->nativeStart(Lcom/iflytek/blc/version/VersionObserver;Z)I

    move-result v0

    sput v0, Lcom/iflytek/blc/version/VersionProxy;->a:I

    return v0
.end method
