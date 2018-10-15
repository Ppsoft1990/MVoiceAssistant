.class public final Lo/ax;
.super Ljava/lang/Object;
.source "EmailBindPhoneActivty.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V
    .locals 0

    iput-object p1, p0, Lo/ax;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lo/ax;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lorg/json/JSONObject;)V

    return-void
.end method
