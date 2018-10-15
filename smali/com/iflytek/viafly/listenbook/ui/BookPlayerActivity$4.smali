.class Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$4;
.super Ljava/lang/Object;
.source "BookPlayerActivity.java"

# interfaces
.implements Laqc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lamm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$4;->b:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 1347
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$4;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1349
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$4;->a:Ljava/lang/String;

    invoke-static {}, Lbcv;->a()Lbcv;

    move-result-object v2

    invoke-virtual {v2}, Lbcv;->b()Lbce;

    move-result-object v2

    invoke-static {v1, v2}, Lbdb;->a(Ljava/lang/String;Lbce;)Ljava/io/File;

    move-result-object v0

    .line 1350
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 1352
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$4;->b:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$4;->b:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->o(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Laqc;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1357
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1354
    .restart local v0    # "f":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$4;->b:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->o(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
