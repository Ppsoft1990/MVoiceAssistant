.class final Lo/ag;
.super Ljava/lang/Object;
.source "ChangeNickNameActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lo/af;


# direct methods
.method constructor <init>(Lo/af;)V
    .locals 0

    iput-object p1, p0, Lo/ag;->a:Lo/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lo/ag;->a:Lo/af;

    iget-object v0, v0, Lo/af;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->a(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;Lorg/json/JSONObject;)V

    return-void
.end method
