.class Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$12;
.super Ljava/lang/Object;
.source "TranslatePicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$12;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$12;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$12;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->h(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->b(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;I)I

    .line 612
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$12;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->i(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 613
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$12;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    .line 614
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$12;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "reShoot"

    invoke-virtual {v0, v1}, Lxq;->c(Ljava/lang/String;)V

    .line 615
    return-void
.end method
