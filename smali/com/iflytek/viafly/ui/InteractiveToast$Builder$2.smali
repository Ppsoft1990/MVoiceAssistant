.class final Lcom/iflytek/viafly/ui/InteractiveToast$Builder$2;
.super Ljava/lang/Object;
.source "InteractiveToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->show(Lcom/iflytek/viafly/ui/InteractiveToast;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$toast:Lcom/iflytek/viafly/ui/InteractiveToast;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/InteractiveToast;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$2;->val$toast:Lcom/iflytek/viafly/ui/InteractiveToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$2;->val$toast:Lcom/iflytek/viafly/ui/InteractiveToast;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$2;->val$toast:Lcom/iflytek/viafly/ui/InteractiveToast;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/InteractiveToast;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder$2;->val$toast:Lcom/iflytek/viafly/ui/InteractiveToast;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/InteractiveToast;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "InteractiveToast"

    const-string/jumbo v2, "show() toast dismiss"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
