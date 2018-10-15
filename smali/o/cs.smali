.class public final Lo/cs;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/BoolCallBack;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

.field private synthetic b:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lo/cs;->b:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    iput-object p2, p0, Lo/cs;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/cs;->b:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->p(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/cs;->b:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->p(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/cs;->b:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->b(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "ALREADY_REGISTER_USER"

    iget-object v2, p0, Lo/cs;->b:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->p(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/cs;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    const/16 v2, 0x25

    invoke-virtual {v1, v2, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lo/cs;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/cs;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->a(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    iget-object v0, p0, Lo/cs;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->a(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/cs;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->a(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setSelection(I)V

    goto :goto_0
.end method
