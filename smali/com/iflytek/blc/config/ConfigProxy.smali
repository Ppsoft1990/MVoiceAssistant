.class public Lcom/iflytek/blc/config/ConfigProxy;
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

    sget v0, Lcom/iflytek/blc/config/ConfigProxy;->a:I

    if-eqz v0, :cond_0

    sget v0, Lcom/iflytek/blc/config/ConfigProxy;->a:I

    invoke-static {v0}, Lcom/iflytek/blc/config/ConfigProxy;->nativeCancel(I)V

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/blc/config/ConfigProxy;->a:I

    :cond_0
    return-void
.end method

.method public static getGrayControlValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/iflytek/blc/config/ConfigProxy;->nativeGetGrayControlValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/iflytek/blc/config/ConfigProxy;->nativeGetUid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static native nativeCancel(I)V
.end method

.method public static native nativeGetGrayControlValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeGetUid()Ljava/lang/String;
.end method

.method private static native nativeStart(Lcom/iflytek/blc/config/ConfigObserver;)I
.end method

.method public static start(Lcom/iflytek/blc/config/ConfigObserver;)I
    .locals 1

    sget v0, Lcom/iflytek/blc/config/ConfigProxy;->a:I

    if-eqz v0, :cond_0

    sget v0, Lcom/iflytek/blc/config/ConfigProxy;->a:I

    invoke-static {v0}, Lcom/iflytek/blc/config/ConfigProxy;->nativeCancel(I)V

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/blc/config/ConfigProxy;->a:I

    :cond_0
    invoke-static {p0}, Lcom/iflytek/blc/config/ConfigProxy;->nativeStart(Lcom/iflytek/blc/config/ConfigObserver;)I

    move-result v0

    sput v0, Lcom/iflytek/blc/config/ConfigProxy;->a:I

    return v0
.end method
