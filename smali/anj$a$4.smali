.class Lanj$a$4;
.super Ljava/lang/Object;
.source "BookOrderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanj$a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanj$a;


# direct methods
.method constructor <init>(Lanj$a;)V
    .locals 0
    .param p1, "this$0"    # Lanj$a;

    .prologue
    .line 311
    iput-object p1, p0, Lanj$a$4;->a:Lanj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 314
    iget-object v0, p0, Lanj$a$4;->a:Lanj$a;

    invoke-static {v0}, Lanj$a;->d(Lanj$a;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->c()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lanj$a$4;->a:Lanj$a;

    invoke-static {v0}, Lanj$a;->e(Lanj$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lazo;->a(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lanj$a$4;->a:Lanj$a;

    invoke-virtual {v0}, Lanj$a;->c()V

    .line 329
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lanj$a$4;->a:Lanj$a;

    invoke-static {v0}, Lanj$a;->d(Lanj$a;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->b()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lanj$a$4;->a:Lanj$a;

    invoke-static {v0}, Lanj$a;->a(Lanj$a;)Lane;

    move-result-object v0

    iget-object v1, p0, Lanj$a$4;->a:Lanj$a;

    invoke-static {v1}, Lanj$a;->f(Lanj$a;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lane;->a(Z)V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lanj$a$4;->a:Lanj$a;

    invoke-static {v0}, Lanj$a;->c(Lanj$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lazo;->a(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lanj$a$4;->a:Lanj$a;

    invoke-virtual {v0}, Lanj$a;->c()V

    goto :goto_0
.end method
