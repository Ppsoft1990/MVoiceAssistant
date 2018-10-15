.class Lcom/iflytek/common/adaptation/AdaptationManager$1;
.super Ljava/lang/Object;
.source "AdaptationManager.java"

# interfaces
.implements Lno$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/common/adaptation/AdaptationManager;->downloadAdapterResult(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/common/adaptation/AdaptationManager;


# direct methods
.method constructor <init>(Lcom/iflytek/common/adaptation/AdaptationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/adaptation/AdaptationManager;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/iflytek/common/adaptation/AdaptationManager$1;->this$0:Lcom/iflytek/common/adaptation/AdaptationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadError(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 367
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/iflytek/common/adaptation/AdaptationManager$1;->this$0:Lcom/iflytek/common/adaptation/AdaptationManager;

    invoke-static {v0, p1}, Lcom/iflytek/common/adaptation/AdaptationManager;->access$100(Lcom/iflytek/common/adaptation/AdaptationManager;Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 371
    return-void
.end method
