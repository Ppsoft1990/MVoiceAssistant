.class Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$13;
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
    .line 601
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$13;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$13;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    const-string/jumbo v1, "http://lx.openspeech.cn/auth/project/lxCameraRule/index.html"

    invoke-static {v0, v1}, Lazo;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$13;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "popup"

    invoke-virtual {v0, v1}, Lxq;->h(Ljava/lang/String;)V

    .line 606
    return-void
.end method
