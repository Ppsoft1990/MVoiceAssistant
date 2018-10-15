.class public final Lo/ac;
.super Ljava/lang/Object;
.source "BindPhoneNumActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/ICallBack;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ac;->a:Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback()V
    .locals 1

    iget-object v0, p0, Lo/ac;->a:Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;->finish()V

    return-void
.end method
