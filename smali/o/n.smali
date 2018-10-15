.class public final Lo/n;
.super Ljava/lang/Object;
.source "BindAccountActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/BoolCallBack;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lo/n;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->r:Ljava/util/HashMap;

    iget-object v1, p0, Lo/n;->a:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;ILjava/util/HashMap;)V

    :cond_0
    return-void
.end method
