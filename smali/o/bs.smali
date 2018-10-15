.class public final Lo/bs;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lo/bs;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    if-nez p1, :cond_1

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lo/bs;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->J(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/bs;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->J(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "resultCode"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const v2, 0x18e70

    if-eq v1, v2, :cond_2

    const v2, 0x19462

    if-eq v2, v1, :cond_2

    const v2, 0x19461

    if-ne v2, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lo/bs;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    const-string/jumbo v2, "openID"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "bindmsg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lo/bs;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->J(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/bs;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->J(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "resultString"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method
