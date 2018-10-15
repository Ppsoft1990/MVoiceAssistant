.class public final Lo/co;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lo/co;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lo/co;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/co;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->a(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v0, p0, Lo/co;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->b(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Z

    iget-object v0, p0, Lo/co;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->finish()V

    return-void
.end method
