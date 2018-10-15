.class public final Lo/l;
.super Ljava/lang/Object;
.source "BindAccountActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lo/l;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 4

    const/16 v3, 0x12

    iget-object v0, p0, Lo/l;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c()V

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u67e5\u8be2\u7528\u6237\u4fe1\u606f\u5931\u8d25"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lo/l;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/l;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

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

    iget-object v0, p0, Lo/l;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    const-string/jumbo v1, "msisdn"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lo/l;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    const-string/jumbo v0, "thirdpartyaccounts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lo/l;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/l;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "resultString"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v3, v2, Landroid/os/Message;->what:I

    iput v0, v2, Landroid/os/Message;->arg1:I

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lo/l;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/l;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
