.class public final Lo/ec;
.super Ljava/lang/Object;
.source "ThirdBindPhoneActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ec;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 3

    const/16 v2, 0x15

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u7ed1\u5b9a\u5931\u8d25"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lo/ec;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/ec;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "resultCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x18e70

    if-eq v0, v1, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lo/ec;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v2, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lo/ec;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ec;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lo/ec;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/ec;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
