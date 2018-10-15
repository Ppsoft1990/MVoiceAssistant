.class public Lcom/iflytek/viafly/ui/dialog/MessageDialog;
.super Lcom/iflytek/viafly/ui/dialog/CustomDialog;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method
