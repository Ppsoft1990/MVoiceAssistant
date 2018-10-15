.class Lcom/iflytek/viafly/versionupdate/ResUpdateManager$3;
.super Ljava/lang/Object;
.source "ResUpdateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$3;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$3;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->c(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$3;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;Z)Z

    .line 107
    return-void
.end method
