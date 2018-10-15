.class Lahp$1;
.super Ljava/lang/Object;
.source "HomeSpeechHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahp;->needShowLocate(Lcom/iflytek/yd/speech/ViaAsrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/LocatProgressDialog;

.field final synthetic b:Lahp;


# direct methods
.method constructor <init>(Lahp;Lcom/iflytek/viafly/ui/LocatProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lahp;

    .prologue
    .line 626
    iput-object p1, p0, Lahp$1;->b:Lahp;

    iput-object p2, p0, Lahp$1;->a:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 629
    iget-object v0, p0, Lahp$1;->a:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->isNeedContinue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lahp$1;->a:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->getResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lahp$1;->b:Lahp;

    invoke-static {v0}, Lahp;->a(Lahp;)Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    move-result-object v0

    iget-object v1, p0, Lahp$1;->b:Lahp;

    invoke-virtual {v1}, Lahp;->p()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lahp$1;->a:Lcom/iflytek/viafly/ui/LocatProgressDialog;

    .line 631
    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->getResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v2

    .line 630
    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/business/interfaces/IResultPreHandler;->afterLocateSearchResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 635
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v0

    iget-object v1, p0, Lahp$1;->b:Lahp;

    invoke-virtual {v1}, Lahp;->p()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v1, v2}, Laqv;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
