.class public final Lo/ae;
.super Ljava/lang/Object;
.source "ChangeNickNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ae;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/ae;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->finish()V

    return-void
.end method
