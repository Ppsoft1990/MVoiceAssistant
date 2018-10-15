.class public Lcom/iflytek/viafly/safe/SignatureHelper;
.super Ljava/lang/Object;
.source "SignatureHelper.java"


# static fields
.field private static a:Lcom/iflytek/viafly/safe/SignatureHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "signature"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/iflytek/viafly/safe/SignatureHelper;

    invoke-direct {v0}, Lcom/iflytek/viafly/safe/SignatureHelper;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/safe/SignatureHelper;->a:Lcom/iflytek/viafly/safe/SignatureHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a()Lcom/iflytek/viafly/safe/SignatureHelper;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/iflytek/viafly/safe/SignatureHelper;->a:Lcom/iflytek/viafly/safe/SignatureHelper;

    return-object v0
.end method

.method private native checkSignature(Ljava/lang/Object;)Z
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x1

    .line 28
    .local v0, "signatureCheckSuccess":Z
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_SIGNATURE_STATUS"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "signatureStatus":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 31
    .local v2, "start":J
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/safe/SignatureHelper;->checkSignature(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    const-string/jumbo v5, "SignatureHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "signature is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_0

    const-string/jumbo v4, ""

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "correct, time usage: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.IFLY_SIGNATURE_STATUS"

    if-eqz v0, :cond_1

    const-string/jumbo v4, "success"

    :goto_1
    invoke-virtual {v5, v6, v4}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .end local v2    # "start":J
    :goto_2
    return v0

    .line 32
    .restart local v2    # "start":J
    :cond_0
    const-string/jumbo v4, "not "

    goto :goto_0

    .line 33
    :cond_1
    const-string/jumbo v4, "fail"

    goto :goto_1

    .line 35
    .end local v2    # "start":J
    :cond_2
    const-string/jumbo v4, "success"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2
.end method
