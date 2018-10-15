.class public final Lo/cu;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lo/cu;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lo/cu;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->a(Z)V

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-boolean v0, v0, Lo/fv;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/cu;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->a(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
