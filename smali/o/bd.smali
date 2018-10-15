.class public final Lo/bd;
.super Ljava/lang/Object;
.source "EmailBindPhoneActivty.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/ICallBack;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V
    .locals 0

    iput-object p1, p0, Lo/bd;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback()V
    .locals 2

    iget-object v0, p0, Lo/bd;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->setResult(I)V

    iget-object v0, p0, Lo/bd;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->finish()V

    return-void
.end method
