.class public Lanj;
.super Lcom/iflytek/viafly/ui/dialog/CustomDialog;
.source "BookOrderDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanj$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 343
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 345
    return-void
.end method
