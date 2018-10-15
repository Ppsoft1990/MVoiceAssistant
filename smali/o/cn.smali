.class public final Lo/cn;
.super Ljava/lang/Object;
.source "QRCodeScanLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lo/cn;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/cn;->a:Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/QRCodeScanLoginActivity;->finish()V

    return-void
.end method
