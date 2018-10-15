.class public final Lo/ce;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ce;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/ce;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;->finish()V

    return-void
.end method
