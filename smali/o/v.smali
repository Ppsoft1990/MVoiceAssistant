.class public final Lo/v;
.super Ljava/lang/Object;
.source "BindPhoneNumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;)V
    .locals 0

    iput-object p1, p0, Lo/v;->a:Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/v;->a:Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/BindPhoneNumActivity;->finish()V

    return-void
.end method
