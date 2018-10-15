.class public final Lo/f;
.super Ljava/lang/Object;
.source "AbcUserCheckActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lo/f;->a:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/f;->a:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->b(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/f;->a:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->b(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
