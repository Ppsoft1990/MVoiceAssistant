.class public final Lo/d;
.super Ljava/lang/Object;
.source "AbcUserCheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lo/d;->a:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/d;->a:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->finish()V

    return-void
.end method
