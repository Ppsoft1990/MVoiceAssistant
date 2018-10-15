.class public final Lo/cl;
.super Ljava/lang/Object;
.source "QRCodeScanLoginActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/cl;->c:Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;

    iput-object p2, p0, Lo/cl;->a:Ljava/lang/String;

    iput-object p3, p0, Lo/cl;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v5, 0x2

    if-nez p1, :cond_0

    iget-object v0, p0, Lo/cl;->c:Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;

    const-string/jumbo v1, "TV\u7aef\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, v5, v1}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "resultCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x18ed6

    if-eq v0, v1, :cond_1

    const v1, 0x18ed5

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lo/cl;->c:Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;

    const/4 v1, 0x4

    const-string/jumbo v2, "resultString"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    const-string/jumbo v1, "token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lo/cl;->c:Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;

    const-string/jumbo v1, "TV\u7aef\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, v5, v1}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const v2, 0x18e70

    if-eq v0, v2, :cond_4

    iget-object v1, p0, Lo/cl;->c:Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;

    const-string/jumbo v2, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v5, v0}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lo/cl;->c:Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;

    iget-object v2, p0, Lo/cl;->a:Ljava/lang/String;

    iget-object v3, p0, Lo/cl;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
