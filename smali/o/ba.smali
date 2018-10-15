.class public final Lo/ba;
.super Ljava/lang/Object;
.source "EmailBindPhoneActivty.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V
    .locals 0

    iput-object p1, p0, Lo/ba;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lo/ba;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    iget-object v1, p0, Lo/ba;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->q(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Z)V

    iget-object v0, p0, Lo/ba;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lorg/json/JSONObject;)V

    return-void
.end method
