.class public final Lo/cf;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)V
    .locals 0

    iput-object p1, p0, Lo/cf;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object v2, p0, Lo/cf;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;->c(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/cf;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;->c(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "resultCode"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lo/cf;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-static {v3}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;->c(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lo/cf;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-static {v3}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;->c(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;

    move-result-object v3

    const v4, 0x18e70

    if-ne v2, v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
