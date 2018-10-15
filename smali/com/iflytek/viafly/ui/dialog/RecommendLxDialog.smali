.class public Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog;
.super Lcom/iflytek/viafly/ui/dialog/CustomDialog;
.source "RecommendLxDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/dialog/RecommendLxDialog$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecommendLxDialog"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method
