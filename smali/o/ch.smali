.class public final Lo/ch;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ch;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x2

    if-nez p1, :cond_0

    iget-object v0, p0, Lo/ch;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;->c(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "resultCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x18f4c

    if-eq v0, v1, :cond_1

    const v1, 0x18f4d

    if-eq v0, v1, :cond_1

    const v1, 0x18f4e

    if-eq v0, v1, :cond_1

    const v1, 0x18ed6

    if-eq v0, v1, :cond_1

    const v1, 0x18ed5

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lo/ch;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;->c(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    const v1, 0x18e70

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lo/ch;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;->c(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;

    move-result-object v0

    const/4 v1, 0x3

    const-string/jumbo v2, "resultString"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lo/ch;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;->c(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
