.class Lcom/iflytek/viafly/versionupdate/UpdateDialog$2;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/viafly/versionupdate/UpdateDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/versionupdate/UpdateDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/versionupdate/UpdateDialog;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog$2;->b:Lcom/iflytek/viafly/versionupdate/UpdateDialog;

    iput-object p2, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog$2;->b:Lcom/iflytek/viafly/versionupdate/UpdateDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->b(Lcom/iflytek/viafly/versionupdate/UpdateDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 429
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog$2;->b:Lcom/iflytek/viafly/versionupdate/UpdateDialog;

    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/UpdateDialog;Ljava/lang/String;)V

    .line 424
    return-void
.end method
