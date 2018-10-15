.class public final Lo/es;
.super Ljava/lang/Object;
.source "UserManageActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)V
    .locals 0

    iput-object p1, p0, Lo/es;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lo/es;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->a(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;Lorg/json/JSONObject;)V

    return-void
.end method
