.class public Lcom/cmcc/util/ConstantUtil;
.super Ljava/lang/Object;
.source "ConstantUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAESKey()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getSecret(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
