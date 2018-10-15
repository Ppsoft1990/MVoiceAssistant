.class public final Lo/au;
.super Ljava/lang/Object;
.source "EmailBindPhoneActivty.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V
    .locals 0

    iput-object p1, p0, Lo/au;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lo/au;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Z)Z

    iget-object v0, p0, Lo/au;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/au;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->e(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/au;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->f(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/au;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->f(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
