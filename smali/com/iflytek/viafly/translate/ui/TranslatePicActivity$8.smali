.class Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$8;
.super Ljava/lang/Object;
.source "TranslatePicActivity.java"

# interfaces
.implements Laze$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->h()V
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
    .line 445
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$8;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$8;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    const-string/jumbo v1, "\u62cd\u7167\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$8;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$8;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;I)I

    .line 455
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$8;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$8;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->e(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    .line 462
    return-void
.end method
