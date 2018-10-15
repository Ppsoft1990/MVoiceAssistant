.class public final Lo/ck;
.super Ljava/lang/Object;
.source "QRCodeScanLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ck;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/ck;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;->finish()V

    return-void
.end method
