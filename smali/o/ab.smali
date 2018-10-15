.class public final Lo/ab;
.super Ljava/lang/Object;
.source "BindPhoneNumActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ab;->a:Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lo/ab;->a:Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;->b(Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;Lorg/json/JSONObject;)V

    return-void
.end method
