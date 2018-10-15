.class Lagl$2;
.super Ljava/lang/Object;
.source "GrayPermManager.java"

# interfaces
.implements Lno$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagl;->b(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagl;


# direct methods
.method constructor <init>(Lagl;)V
    .locals 0
    .param p1, "this$0"    # Lagl;

    .prologue
    .line 387
    iput-object p1, p0, Lagl$2;->a:Lagl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadError(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 396
    iget-object v0, p0, Lagl$2;->a:Lagl;

    const-string/jumbo v1, "GrayPermManager"

    invoke-static {v0, v1, p1, p2}, Lagl;->a(Lagl;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 397
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 2
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 390
    iget-object v0, p0, Lagl$2;->a:Lagl;

    const-string/jumbo v1, "GrayPermManager"

    invoke-static {v0, v1, p1}, Lagl;->a(Lagl;Ljava/lang/String;Landroid/content/Intent;)V

    .line 391
    return-void
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 401
    return-void
.end method
