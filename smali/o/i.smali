.class public final Lo/i;
.super Ljava/lang/Object;
.source "BindAccountActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lo/i;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 4

    iget-object v0, p0, Lo/i;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c()V

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x12

    iput v1, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u89e3\u7ed1\u7b2c\u4e09\u65b9\u8d26\u53f7\u5931\u8d25\uff0c\u6570\u636e\u5f02\u5e38"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lo/i;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/i;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "resultCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x18e70

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lo/i;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/i;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "resultString"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x16

    iput v3, v2, Landroid/os/Message;->what:I

    iput v0, v2, Landroid/os/Message;->arg1:I

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lo/i;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/i;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
