.class public final Lo/da;
.super Ljava/lang/Object;
.source "SecurityVerifyActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/ICallBack;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V
    .locals 0

    iput-object p1, p0, Lo/da;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback()V
    .locals 1

    iget-object v0, p0, Lo/da;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->finish()V

    return-void
.end method
