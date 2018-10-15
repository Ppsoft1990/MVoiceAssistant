.class public final Lo/fb;
.super Ljava/lang/Object;
.source "VerifyOldPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lo/fb;->a:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/fb;->a:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->finish()V

    return-void
.end method
