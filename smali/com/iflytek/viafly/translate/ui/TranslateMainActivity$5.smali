.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$5;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1405
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-class v2, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1406
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1407
    return-void
.end method
