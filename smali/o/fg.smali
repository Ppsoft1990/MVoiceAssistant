.class public final Lo/fg;
.super Ljava/lang/Object;
.source "VerifyOldPhoneActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lo/fg;->a:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lo/fg;->a:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;Lorg/json/JSONObject;)V

    return-void
.end method
