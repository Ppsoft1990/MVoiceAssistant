.class public final Lo/bn;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/BoolCallBack;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/bn;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iput-object p2, p0, Lo/bn;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/bn;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v1, p0, Lo/bn;->a:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.SEND_SMS"

    invoke-static {v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/bn;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    const-string/jumbo v1, "datasms"

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/bn;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c()V

    goto :goto_0
.end method
