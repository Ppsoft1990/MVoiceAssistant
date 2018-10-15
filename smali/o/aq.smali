.class public final Lo/aq;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lo/aq;->a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lo/aq;->a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;Lorg/json/JSONObject;)V

    return-void
.end method
