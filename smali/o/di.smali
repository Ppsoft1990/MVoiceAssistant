.class public final Lo/di;
.super Ljava/lang/Object;
.source "SetPasswordActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lo/di;->a:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lo/di;->a:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;Lorg/json/JSONObject;)V

    return-void
.end method
