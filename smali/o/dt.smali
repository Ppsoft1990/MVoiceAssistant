.class public final Lo/dt;
.super Ljava/lang/Object;
.source "ThirdBindPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lo/dt;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lo/dt;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/dt;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v0, p0, Lo/dt;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    return-void
.end method
