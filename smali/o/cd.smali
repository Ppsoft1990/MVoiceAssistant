.class public final Lo/cd;
.super Lme/dm7/barcodescanner/zxing/ZXingScannerView;
.source "QRCodeScanActivity.java"


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/cd;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-direct {p0, p2}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final createViewFinderView(Landroid/content/Context;)Lme/dm7/barcodescanner/core/IViewFinder;
    .locals 1

    iget-object v0, p0, Lo/cd;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;->a(Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;)Lcom/cmcc/migusso/sdk/view/CustomViewFinderView;

    move-result-object v0

    return-object v0
.end method
