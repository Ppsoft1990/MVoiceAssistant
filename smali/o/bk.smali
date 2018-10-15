.class public final Lo/bk;
.super Ljava/lang/Object;
.source "FindPasswordActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lo/bk;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lo/bk;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    iget-object v1, p0, Lo/bk;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->s(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a(Z)V

    iget-object v0, p0, Lo/bk;->a:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;Lorg/json/JSONObject;)V

    return-void
.end method
