.class public final Lo/bi;
.super Ljava/lang/Object;
.source "FindPasswordActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lo/bi;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 6

    const/16 v5, 0x14

    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u91cd\u7f6e\u5bc6\u7801\u5931\u8d25"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lo/bi;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/bi;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lo/bi;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "3"

    iget-object v2, p0, Lo/bi;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->q(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v4, "\u91cd\u7f6e\u5bc6\u7801\u5931\u8d25"

    invoke-static {v0, v1, v2, v3, v4}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "resultCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lo/bi;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    iget-object v1, v1, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "3"

    iget-object v3, p0, Lo/bi;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-static {v3}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->q(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "resultString"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x18e70

    if-eq v0, v1, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lo/bi;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/bi;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lo/bi;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/bi;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
