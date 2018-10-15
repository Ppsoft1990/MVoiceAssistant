.class Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$7;
.super Ljava/lang/Object;
.source "TranslatePicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d()V
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
    .line 329
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$7;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$7;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$7;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 336
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$7;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 337
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$7;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto :goto_0
.end method
