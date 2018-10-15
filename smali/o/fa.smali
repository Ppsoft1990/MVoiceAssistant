.class public final Lo/fa;
.super Ljava/lang/Object;
.source "UserProtocolActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;)V
    .locals 0

    iput-object p1, p0, Lo/fa;->a:Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/fa;->a:Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->finish()V

    return-void
.end method
